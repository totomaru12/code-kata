var expect = require("chai").expect;
var Bowling = require("./bowling_180902");

describe("Bowling 18/09/02", function() {
    var b = null;

    beforeEach(function() {
        b = new Bowling();
    })

    it("all strikes", function() {
        for (var i = 0; i < 10; i++) {
            b.roll(10);
        }
        b.roll(10);
        b.roll(10);
        expect(b.score()).to.be.equal(300);
    })


})