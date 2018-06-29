var expect = require("chai").expect;
var Bowling = require("./bowling_180623");

describe("Bowling Test 18/06/23", function () {

    Bowling.prototype.rollMany = function (times, pins) {
        for (let i = 0; i < times; i++) {
            this.roll(pins);
        }
    }

    var bowling = null;
    beforeEach(function() {
        bowling = new Bowling();
    })

    it('all strike', function () {
        bowling.rollMany(12, 10);
        expect(bowling.score()).to.be.equal(300);
    })

    it('all spare', function() {
        bowling.rollMany(21, 5);
        expect(bowling.score()).to.be.equal(150);
    })

    it('all nine', function() {
        for (var i = 0; i < 10; i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        expect(bowling.score()).to.be.equal(90);
    })
    
})