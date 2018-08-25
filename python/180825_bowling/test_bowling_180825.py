import unittest

from bowling_180825 import BowlingGame

class BowlingGameTests(unittest.TestCase):

    def setUp(self):
        self.game = BowlingGame()

    def test_allStrike(self):
        for frame in range(self.game.NORMAL_FRAME_MAX):
            self.game.roll(self.game.SCORE_MAX_IN_FRAME)
        self.game.roll(self.game.SCORE_MAX_IN_FRAME)
        self.game.roll(self.game.SCORE_MAX_IN_FRAME)
        self.assertEqual(300, self.game.score())

    def test_allSpareWith5And5(self):
        for frame in range(self.game.SCORE_MAX_IN_FRAME):
            self.game.roll(5)
            self.game.roll(5)
        self.game.roll(5)
        self.assertEqual(150, self.game.score())

    def test_allSpareWith9And1(self):
        for frame in range(self.game.SCORE_MAX_IN_FRAME):
            self.game.roll(9)
            self.game.roll(1)
        self.game.roll(9)
        self.assertEqual(190, self.game.score())
        self.assertEqual(190, self.game.score())

    def test_allNineWith8And1(self):
        for frame in range(self.game.SCORE_MAX_IN_FRAME):
            self.game.roll(8)
            self.game.roll(1)
        self.assertEqual(90, self.game.score())
    