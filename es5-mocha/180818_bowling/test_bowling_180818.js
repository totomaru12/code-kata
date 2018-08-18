var expect = require("chai").expect;
var Bowling = require("./bowling_180818");

describe("Bowling 18/08/18", function() {
    var b = null;

    beforeEach(function() {
        b = new Bowling();
    })

    it("all strikes", function() {
        for (var i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(b.SCORE_MAX_IN_FRAME());
        }
        b.roll(b.SCORE_MAX_IN_FRAME());
        b.roll(b.SCORE_MAX_IN_FRAME());
        expect(b.score()).to.be.equal(300);
    })

    it("all spares with 5", function () {
        for (var i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(5);
            b.roll(5);
        }
        b.roll(5);
        expect(b.score()).to.be.equal(150);
    })

    it("all 8 and 1", function() {
        for (var i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(8);
            b.roll(1);
        }
        expect(b.score()).to.be.equal(90);
    })

    it("all spares with 9 and 1", function() {
        for (var i = 0; i < b.NORMAL_FRAME_MAX(); i++) {
            b.roll(9);
            b.roll(1);
        }
        b.roll(9);
        expect(b.score()).to.be.equal(190);
    })

})