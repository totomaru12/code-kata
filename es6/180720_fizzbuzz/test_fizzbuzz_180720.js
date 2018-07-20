import FizzBuzz from  './fizzbuzz_180720';

const assert = require('assert');
const fs = require('fs');

describe('test fizzbuzz 18/07/20', function() {

    it('all strikes', () => {
        let f = new FizzBuzz();
        const answerFilePath = __dirname + "/fizz_buzz_answer.txt";
        const answer = fs.readFileSync(answerFilePath);
        assert.equal(answer, f.getAll());
    })
    
})