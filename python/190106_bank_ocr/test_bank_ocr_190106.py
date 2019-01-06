import unittest

from bank_ocr_190106 import BankOcr

class BankOcrTests(unittest.TestCase):

    def setUp(self):
        pass

    def test_usecase_1_000000000(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('| || || || || || || || || |')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.assertEqual('000000000', self.ocr.get_scan_result())

    def test_usecase_1_111111111(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('                           ')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.assertEqual('111111111', self.ocr.get_scan_result())

    def test_usecase_1_222222222(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|')
        self.ocr.scan_line('|_ |_ |_ |_ |_ |_ |_ |_ |_ ')
        self.assertEqual('222222222', self.ocr.get_scan_result())

    def test_usecase_1_333333333(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|')
        self.assertEqual('333333333', self.ocr.get_scan_result())


    def test_usecase_1_444444444(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('                           ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.assertEqual('444444444', self.ocr.get_scan_result())

    def test_usecase_1_555555555(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_ |_ |_ |_ |_ |_ |_ |_ |_ ')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|')
        self.assertEqual('555555555', self.ocr.get_scan_result())

    def test_usecase_1_666666666(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_ |_ |_ |_ |_ |_ |_ |_ |_ ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.assertEqual('666666666', self.ocr.get_scan_result())

    def test_usecase_1_777777777(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.assertEqual('777777777', self.ocr.get_scan_result())

    def test_usecase_1_888888888(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.assertEqual('888888888', self.ocr.get_scan_result())

    def test_usecase_1_999999999(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|')
        self.assertEqual('999999999', self.ocr.get_scan_result())

    def test_usecase_1_123456789(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('    _  _     _  _  _  _  _ ')
        self.ocr.scan_line('  | _| _||_||_ |_   ||_||_|')
        self.ocr.scan_line('  ||_  _|  | _||_|  ||_| _|')
        self.assertEqual('123456789', self.ocr.get_scan_result())

    def test_usecase_3_000000051(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _    ')
        self.ocr.scan_line('| || || || || || || ||_   |')
        self.ocr.scan_line('|_||_||_||_||_||_||_| _|  |')
        self.assertEqual('000000051', self.ocr.get_scan_result(True))

    def test_usecase_3_49006771x(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('    _  _  _  _  _  _     _ ')
        self.ocr.scan_line('|_||_|| || ||_   |  |  | _ ')
        self.ocr.scan_line('  | _||_||_||_|  |  |  | _|')
        self.assertEqual('49006771? ILL', self.ocr.get_scan_result(True))

    def test_usecase_3_1234x678x(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('    _  _     _  _  _  _  _ ')
        self.ocr.scan_line('  | _| _||_| _ |_   ||_||_|')
        self.ocr.scan_line('  ||_  _|  | _||_|  ||_| _ ')
        self.assertEqual('1234?678? ILL', self.ocr.get_scan_result(True))
            
    def test_usecase_3_664371495(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _     _  _        _  _ ')
        self.ocr.scan_line('|_ |_ |_| _|  |  ||_||_||_ ')
        self.ocr.scan_line('|_||_|  | _|  |  |  | _| _|')
        self.assertEqual('664371495 ERR', self.ocr.get_scan_result(True))

    def test_usecase_4_711111111(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('                           ')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.assertEqual('711111111', self.ocr.get_scan_result(True, True))

    def test_usecase_4_777777177(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |')
        self.ocr.scan_line('  |  |  |  |  |  |  |  |  |') 
        self.assertEqual('777777177', self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_200800000(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line(' _|| || || || || || || || |')
        self.ocr.scan_line('|_ |_||_||_||_||_||_||_||_|') 
        self.assertEqual('200800000', self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_333393333(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|') 
        self.assertEqual('333393333', self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_888888888(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|') 
        self.assertEqual("888888888 AMB ['888886888', '888888880', '888888988']", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_555555555(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_ |_ |_ |_ |_ |_ |_ |_ |_ ')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|') 
        self.assertEqual("555555555 AMB ['555655555', '559555555']", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_666666666(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_ |_ |_ |_ |_ |_ |_ |_ |_ ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|') 
        self.assertEqual("666666666 AMB ['666566666', '686666666']", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_999999999(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _  _  _  _  _  _  _  _  _ ')
        self.ocr.scan_line('|_||_||_||_||_||_||_||_||_|')
        self.ocr.scan_line(' _| _| _| _| _| _| _| _| _|') 
        self.assertEqual("999999999 AMB ['899999999', '993999999', '999959999']", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_490067715(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('    _  _  _  _  _  _     _ ')
        self.ocr.scan_line('|_||_|| || ||_   |  |  ||_ ')
        self.ocr.scan_line('  | _||_||_||_|  |  |  | _|') 
        self.assertEqual("490067715 AMB ['490067115', '490067719', '490867715']", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_123456789(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('    _  _     _  _  _  _  _ ')
        self.ocr.scan_line(' _| _| _||_||_ |_   ||_||_|')
        self.ocr.scan_line('  ||_  _|  | _||_|  ||_| _|') 
        self.assertEqual("123456789", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_000000051(self):
        self.ocr = BankOcr()
        self.ocr.scan_line(' _     _  _  _  _  _  _    ')
        self.ocr.scan_line('| || || || || || || ||_   |')
        self.ocr.scan_line('|_||_||_||_||_||_||_| _|  |') 
        self.assertEqual("000000051", self.ocr.get_scan_result(True, True))
        
    def test_usecase_4_490867715(self):
        self.ocr = BankOcr()
        self.ocr.scan_line('    _  _  _  _  _  _     _ ')
        self.ocr.scan_line('|_||_|| ||_||_   |  |  | _ ')
        self.ocr.scan_line('  | _||_||_||_|  |  |  | _|') 
        self.assertEqual("490867715", self.ocr.get_scan_result(True, True))
