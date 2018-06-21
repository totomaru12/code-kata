import unittest

from bowling_180621 import BowlingGame

class BowlingGameTests(unittest.TestCase):
    
    def setUp(self):
        self.game = BowlingGame()

    def rollMany(self, times, pins):
        for i in range(times):
            self.game.addScore(pins)

    def test_allStrike(self):
        self.rollMany(12, 10)
        self.assertEqual(300, self.game.totalScore())

    def test_allSpare(self):
        self.rollMany(21, 5)
        self.assertEqual(150, self.game.totalScore())

    def test_allNines(self):
        for frame in range(10):
            self.game.addScore(9)
            self.game.addScore(0)
        self.assertEqual(90, self.game.totalScore())
