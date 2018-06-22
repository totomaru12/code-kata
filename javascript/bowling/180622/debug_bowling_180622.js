import Bowling from './bowling_180622';

Bowling.prototype.rollMany = function (times, pins) {
    for (let i = 0; i < times; i++) {
        this.roll(pins);
    }
}

let bowling = new Bowling();

bowling.rollMany(12, 10);
console.log(bowling.score());
