import unittest

from bowling_180626 import BowlingGame

class BowlingGameTests(unittest.TestCase):
    
    def setUp(self):
        self.game = BowlingGame()

    def rollMany(self, times, pins):
        for i in range(times):
            self.game.roll(pins)

    def test_allStrike(self):
        self.rollMany(12, self.game.MAX_SCORE_IN_FRAME)
        self.assertEqual(300, self.game.score())

    def test_allSpare(self):
        self.rollMany(21, 5)
        self.assertEqual(150, self.game.score())

    def test_allNine(self):
        for i in range(self.game.NORMAL_MAX_FRAME):
            self.game.roll(9)
            self.game.roll(0)
        self.assertEqual(90, self.game.score())
