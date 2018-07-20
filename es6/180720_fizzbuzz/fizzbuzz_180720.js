export default class FizzBuzz {
    
    getAll() {
        let result = '';
        for (let number = 1; number <= 100; number++) {
            result += this.getLineString(number);
            result += '\n';
        }
        return result;
    }

    getLineString(number) {
        if (number % 15 == 0) {
            return 'FizzBuzz';

        } else if (number % 3 == 0) {
            return 'Fizz';

        } else if (number % 5 == 0) {
            return 'Buzz';

        } else {
            return String(number);
        }
    }
}
