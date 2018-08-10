import unittest

from bowling_180810 import BowlingGame

class BowlingGameTests(unittest.TestCase):

    def setUp(self):
        self.g = BowlingGame()

    def test_allStrike(self):
        for i in range(self.g.NORMAL_MAX_FRAME):
            self.g.roll(self.g.MAX_SCORE_IN_FRAME)
        self.g.roll(self.g.MAX_SCORE_IN_FRAME)
        self.g.roll(self.g.MAX_SCORE_IN_FRAME)
        self.assertEqual(300, self.g.score())

    def test_allSpareWith5(self):
        for i in range(self.g.NORMAL_MAX_FRAME):
            self.g.roll(5)
            self.g.roll(5)
        self.g.roll(5)
        self.assertEqual(150, self.g.score())

    def test_allNinesWith9and0(self):
        for i in range(self.g.NORMAL_MAX_FRAME):
            self.g.roll(9)
            self.g.roll(0)
        self.assertEqual(90, self.g.score())

    def test_allSpareWith9and1(self):
        for i in range(self.g.NORMAL_MAX_FRAME):
            self.g.roll(9)
            self.g.roll(1) 
        self.g.roll(9)
        self.assertEqual(190, self.g.score())
    