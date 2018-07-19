var expect = require("chai").expect;
var Bowling = require("./bowling_180629");

describe("Bowling Test 18/06/29", function() {

    var bowling = null;
    beforeEach(function() {
        bowling = new Bowling();
    });

    function repeatRoll(times, pins) {
        for (var i = 0; i < times; i++) {
            bowling.roll(pins);
        }
    }

    function repeatFrame(times, pins1st, pins2nd) {
        for (var i = 0; i < times; i++) {
            bowling.roll(pins1st);
            bowling.roll(pins2nd);
        }
    }

    it('all strike', function() {
        repeatRoll(12, bowling.MAX_SCORE_IN_FRAME());
        expect(bowling.score()).to.be.equal(300);
    })

    it('all spare', function() {
        repeatRoll(21, 5);
        expect(bowling.score()).to.be.equal(150);
    })

    it('all nine in 1st of frame', function() {
        repeatFrame(10, 9, 0);
        expect(bowling.score()).to.be.equal(90);
    })

    it('all nine in 2nd of frame', function() {
        repeatFrame(10, 0, 9);
        expect(bowling.score()).to.be.equal(90);
    })

    it('all zero', function() {
        repeatFrame(10, 0, 0);
        expect(bowling.score()).to.be.equal(0);
    })

})