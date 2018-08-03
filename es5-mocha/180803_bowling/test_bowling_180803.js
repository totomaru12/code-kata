var expect = require("chai").expect;
var Bowling = require("./bowling_180803");

describe('Bowling 18/08/03', function() {
    var bowling = null;
    beforeEach(function() {
        bowling = new Bowling();
    })

    it ('all strikes', function() {
        for (var i = 0; i < bowling.NORMAL_FRAME_MAX(); i++) {
            bowling.roll(bowling.SCORE_MAX_IN_FRAME());
        }
        bowling.roll(bowling.SCORE_MAX_IN_FRAME());
        bowling.roll(bowling.SCORE_MAX_IN_FRAME());
        expect(bowling.score()).to.be.equal(300);
    })

    it ('all spares with 5', function() {
        for (var i = 0; i < bowling.NORMAL_FRAME_MAX(); i++) {
            bowling.roll(5);
            bowling.roll(5);
        } 
        bowling.roll(5);
        expect(bowling.score()).to.be.equal(150);
    })

    it ('all nines with 9 and 0', function() {
        for (var i = 0; i < bowling.NORMAL_FRAME_MAX(); i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        expect(bowling.score()).to.be.equal(90);
    })

    it ('all spares with 9 and 1', function() {
        for (var i = 0; i < bowling.NORMAL_FRAME_MAX(); i++) {
            bowling.roll(9);
            bowling.roll(1);
        }
        bowling.roll(9);
        expect(bowling.score()).to.be.equal(190);
    })
})
