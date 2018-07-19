var expect = require("chai").expect;
var Bowling = require("./bowling_180719");

describe('Bowling 18/07/19', function() {
    var bowling = null;
    beforeEach(function() {
        bowling = new Bowling();
    })

    it ('all strikes', function() {
        for (var i = 0; i < bowling.NORMAL_MAX_FRAME(); i++) {
            bowling.roll(bowling.MAX_SCORE_IN_FRAME());
        }
        bowling.roll(bowling.MAX_SCORE_IN_FRAME());
        bowling.roll(bowling.MAX_SCORE_IN_FRAME());
        expect(bowling.score()).to.be.equal(300);
    })

    it ('all spares', function() {
        for (var i = 0; i < bowling.NORMAL_MAX_FRAME(); i++) {
            bowling.roll(5);
            bowling.roll(5);
        }
        bowling.roll(5);
        expect(bowling.score()).to.be.equal(150);
    })

    it ('all nines', function() {
        for (var i = 0; i < bowling.NORMAL_MAX_FRAME(); i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        expect(bowling.score()).to.be.equal(90);
    })

    it ('all spares with nines 1st', function() {
        for (var i = 0; i < bowling.NORMAL_MAX_FRAME(); i++) {
            bowling.roll(9);
            bowling.roll(1);
        }
        bowling.roll(9);
        expect(bowling.score()).to.be.equal(190);
    })

})