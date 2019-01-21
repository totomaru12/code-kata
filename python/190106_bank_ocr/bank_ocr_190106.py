class BanckOcrDefine:

    @staticmethod
    def INPUT_NUMBER_COUNT():
        return 9

    @staticmethod
    def ONE_NUMBER_TEXT_COUNT_PER_LINE():
        return 3

    @staticmethod
    def ONE_NUMBER_TEXT_COUNT_PER_ROW():
        return 3

    @staticmethod
    def ONE_NUMBER_TEXT_CHAR_COUNT():
        return BanckOcrDefine.ONE_NUMBER_TEXT_COUNT_PER_LINE() * BanckOcrDefine.ONE_NUMBER_TEXT_COUNT_PER_ROW()

    @staticmethod
    def ALL_NUMBER_TEXT_COUNT_PER_LINE():
        return BanckOcrDefine.ONE_NUMBER_TEXT_COUNT_PER_ROW() * BanckOcrDefine.INPUT_NUMBER_COUNT()

    @staticmethod
    def UNKONWN_NUMBER_TEXT_OUTPUT():
        return '?'


class TextToNumber:

    VALID_NUMBER_TEXT_MAP = {
        ' _ | ||_|': '0',
        '     |  |': '1',
        ' _  _||_ ': '2',
        ' _  _| _|': '3',
        '   |_|  |': '4',
        ' _ |_  _|': '5',
        ' _ |_ |_|': '6',
        ' _   |  |': '7',
        ' _ |_||_|': '8',
        ' _ |_| _|': '9'
    }

    @staticmethod
    def can_convert(text):
        return text in TextToNumber.VALID_NUMBER_TEXT_MAP
    
    @staticmethod
    def convert(text):
        if TextToNumber.can_convert(text):
            return TextToNumber.VALID_NUMBER_TEXT_MAP[text]
        else:
            return BanckOcrDefine.UNKONWN_NUMBER_TEXT_OUTPUT()


class NumberTextExtractor:

    @staticmethod
    def one_line_convert(num_index, whole_text):
        start = num_index * BanckOcrDefine.ONE_NUMBER_TEXT_CHAR_COUNT()
        end = start + BanckOcrDefine.ONE_NUMBER_TEXT_CHAR_COUNT()
        return whole_text[start:end]

    @staticmethod
    def multi_line_convert(num_index, whole_text):
        number_text = ''
        for i in range(BanckOcrDefine.ONE_NUMBER_TEXT_COUNT_PER_LINE()):
            start = (i * BanckOcrDefine.ALL_NUMBER_TEXT_COUNT_PER_LINE()) + num_index * BanckOcrDefine.ONE_NUMBER_TEXT_COUNT_PER_LINE()
            end = start + BanckOcrDefine.ONE_NUMBER_TEXT_COUNT_PER_LINE()
            number_text += whole_text[start:end]
        return number_text


class ChecksumCalculator:

    @staticmethod
    def compute(numbers):
        checkSum = 0
        numIndex = 0
        input_count = len(numbers)
        for num in numbers:
            checkSum += ((input_count - numIndex) * int(num))
            numIndex += 1
        return checkSum

    @staticmethod
    def is_valid(numbers):
        if numbers.find(BanckOcrDefine.UNKONWN_NUMBER_TEXT_OUTPUT()) != -1:
            return False
        checksum =  ChecksumCalculator.compute(numbers)
        if checksum % 11 != 0:
            return False
        else:
            return True


class ScanedTextCacher:

    def __init__(self):
        self.flash()

    def flash(self):
        self.input_text = ''

    def input_line(self, text):
        self.input_text += text

    def get_input_text(self):
        return self.input_text
    
    def get_input_numbers(self):
        numbers = ''
        for num_index in range(BanckOcrDefine.INPUT_NUMBER_COUNT()):
            number_text = NumberTextExtractor.multi_line_convert(num_index, self.input_text)
            numbers += TextToNumber.convert(number_text)
        return numbers

    def get_number_text_list(self):
        number_text_list = []
        for num_index in range(BanckOcrDefine.INPUT_NUMBER_COUNT()):
            number_text = NumberTextExtractor.multi_line_convert(num_index, self.input_text)
            number_text_list.append(number_text)
        return number_text_list


class ScanResultWithChecksumFomatter:
    @staticmethod
    def output(numbers):
        if BanckOcrDefine.UNKONWN_NUMBER_TEXT_OUTPUT() in numbers:
            return numbers + ' ILL'
        if ChecksumCalculator.is_valid(numbers) == False:
            return numbers + ' ERR'
        return numbers


class ScanResultWithCorrectionFomatter:

    @staticmethod
    def output(result_list, original_numbers):
        if len(result_list) == 0:
            return 'No possible numbers'
        elif len(result_list) == 1:
            return result_list[0]
        else:
            return ScanResultWithCorrectionFomatter.get_result_with_amb(result_list, original_numbers)

    @staticmethod
    def get_result_with_amb(result_list, original_numbers):
        sorted_numbers = ScanResultWithCorrectionFomatter.sort_amb_numbers(result_list)
        need_numbers_tail_comma = False
        amb_content = ''
        for numbers in sorted_numbers:
            if need_numbers_tail_comma:
                amb_content += ', '
            need_numbers_tail_comma = True
            amb_content += ("'" + numbers + "'")
        return original_numbers + ' AMB [' + amb_content + ']'

    @staticmethod
    def sort_amb_numbers(result_list):
        out_list = []
        seek_count = len(result_list)
        for unused in range(seek_count):
            min_numbers = 999999999
            min_index = 0
            current_index = 0
            for numbers in result_list:
                if int(numbers) < min_numbers:
                    min_numbers = int(numbers)
                    min_index = current_index
                current_index += 1
            out_list.append(result_list.pop(min_index))
        return out_list


class NumberGuesser:

    @staticmethod
    def compute(input_text, original_number_list):
        index_list = NumberGuesser.get_possible_number_in_each_index(input_text)
        line_list = NumberGuesser.get_possible_number_line_list(index_list, original_number_list)
        numbers_list = NumberGuesser.convert_numbers_list(line_list)
        guessed_list = NumberGuesser.get_valid_checksum_numbers_list(numbers_list)
        return guessed_list

    @staticmethod
    def get_valid_checksum_numbers_list(possible_number_line_list):
        valid_line_list = []
        for line in possible_number_line_list:
            if ChecksumCalculator.is_valid(line):
                valid_line_list.append(line)
        return valid_line_list

    @staticmethod
    def get_possible_number_line_list(possible_number_in_each_index_list, original_number_list):
        if len(possible_number_in_each_index_list) < BanckOcrDefine.INPUT_NUMBER_COUNT():
            return []

        possible_map = {}
        current_index = 0
        for current_index in range(BanckOcrDefine.INPUT_NUMBER_COUNT()):
            for possibole_text in possible_number_in_each_index_list[current_index]:
                replace_list = list(original_number_list)
                replace_list[current_index] = possibole_text
                map_key = ''
                for text in replace_list:
                    map_key += text
                possible_map[map_key] = True

        output_list = []
        for number_text in possible_map:
            output_list.append(number_text)
        return output_list

    @staticmethod
    def get_possible_number_in_each_index(input_text):
        possible_number_in_each_index_list = []
        for num_index in range(BanckOcrDefine.INPUT_NUMBER_COUNT()):
            number_text = NumberTextExtractor.multi_line_convert(num_index, input_text)
            possible_number_list = NumberGuesser.extract_possible_number_list(number_text)
            possible_number_in_each_index_list.append(possible_number_list)
        return possible_number_in_each_index_list

    @staticmethod
    def extract_possible_number_list(numberText):
        overwrite_chars = ' _|'
        possible_number_map = {}
        for index in range(BanckOcrDefine.ONE_NUMBER_TEXT_CHAR_COUNT()):
            possible_text_list = list(numberText)
            for char in overwrite_chars:
                possible_text_list[index] = char
                replaced_text = "".join(possible_text_list)
                if TextToNumber.can_convert(replaced_text):
                    possible_number_map[replaced_text] = True
        possible_number_list = []
        for text in possible_number_map:
            possible_number_list.append(text)
        return possible_number_list

    @staticmethod
    def convert_numbers_list(line_list):
        numbers_list = []
        for line in line_list:
            numbers = ''
            for i in range(BanckOcrDefine.INPUT_NUMBER_COUNT()):
                number_text = NumberTextExtractor.one_line_convert(i, line)
                numbers += TextToNumber.convert(number_text)
            numbers_list.append(numbers)
        return numbers_list


class BankOcr:
    
    def __init__(self):
        self.scaned_text_cacher = ScanedTextCacher()

    def flash(self):
        self.scaned_text_cacher.flash()

    def scan_line(self, text):
        self.scaned_text_cacher.input_line(text)

    def get_scan_result(self, use_checkSum=False, correct=False):
        if correct:
            return self.get_scan_result_with_correction()
        elif use_checkSum:
            return self.get_scan_result_with_checksum()
        else:
            return self.get_scan_result_with_no_correction_and_no_checkSum()

    def get_scan_result_with_no_correction_and_no_checkSum(self):
        return self.scaned_text_cacher.get_input_numbers()

    def get_scan_result_with_checksum(self):
        numbers = self.scaned_text_cacher.get_input_numbers()
        return ScanResultWithChecksumFomatter.output(numbers)

    def get_scan_result_with_correction(self):
        input_text = self.scaned_text_cacher.get_input_text()
        original_number_list = self.scaned_text_cacher.get_number_text_list()
        guessed_list = NumberGuesser.compute(input_text, original_number_list)
        original_numbers = self.scaned_text_cacher.get_input_numbers()
        return ScanResultWithCorrectionFomatter.output(guessed_list, original_numbers)
