
describe("Bowling Test", function () {
    
    var Bowling = require("../lib/bowling_180623");

    Bowling.prototype.rollMany = function(times, pins) {
        for (var i = 0; i < times; i ++) {
            this.roll(pins);
        }
    }

    var bowling = null;

    beforeEach(function() {
        bowling = new Bowling();
    })

    it ('all strike', function () {
        bowling.rollMany(12, 10);
        expect(bowling.score()).toEqual(300);
    })

    it ('all spare', function() {
        bowling.rollMany(21, 5);
        expect(bowling.score()).toEqual(150);
    })

    it ('all nine', function() {
        for (var i = 0; i < 10; i++) {
            bowling.roll(9);
            bowling.roll(0);
        }
        expect(bowling.score()).toEqual(90);
    })
    
})