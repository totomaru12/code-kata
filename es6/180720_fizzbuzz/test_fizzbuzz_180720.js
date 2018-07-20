import FizzBuzz from  './fizzbuzz_180720';
import { expect } from 'chai';

const assert = require('assert');
const fs = require('fs');

describe('test fizzbuzz 18/07/20', function() {

    it('all strikes', () => {
        let f = new FizzBuzz();
        const answerFilePath = __dirname + "/fizz_buzz_answer.txt";
        const answer = fs.readFileSync(answerFilePath, 'utf-8');
        const result = f.getAll();

        // These are test code practicies.
        assert.equal(answer, result);
        expect(answer).to.equal(result);
    })

})