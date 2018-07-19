var expect = require("chai").expect;
var Bowling = require("./bowling_180704");

describe('Boling 18/07/04', function() {

    var bowling = null;
    beforeEach(function() {
        bowling = new Bowling();
    })

    it ('all strikes', function() {
        for (var i = 0; i < 12; i++) {
            bowling.roll(10);
        }
        expect(bowling.score()).to.be.equal(300);
    })

    it ('all spares', function() {
        for (var i = 0; i < 21; i++) {
            bowling.roll(5);
        }
        expect(bowling.score()).to.be.equal(150);
    })

    it ('all nines', function() {
        for (var i = 0; i < bowling.NORMAL_MAX_FRAME(); i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        expect(bowling.score()).to.be.equal(90);
    })

    it ('all spares with 1st pins nine', function() {
        for (var i = 0; i < bowling.NORMAL_MAX_FRAME(); i++) {
            bowling.roll(9);
            bowling.roll(1);
        }
        bowling.roll(9);
        expect(bowling.score()).to.be.equal(190);
    })
})