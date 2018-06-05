import unittest

from bowling_180605 import BowlingGame

class BowlingGameTests(unittest.TestCase):

    def setUp(self):
        self.game = BowlingGame()

    def rollMany(self, n, pins):
        for frame in range(n):
            self.game.roll(pins)

    def test_allStrike(self):
        self.rollMany(12, 10)
        self.assertEqual(300, self.game.score())

    def test_allNines(self):
        for frame in range(10):
            self.game.roll(9)
            self.game.roll(0)
        self.assertEqual(90, self.game.score())

    def test_allSpare(self):
        self.rollMany(21, 5)
        self.assertEqual(150, self.game.score())

    
