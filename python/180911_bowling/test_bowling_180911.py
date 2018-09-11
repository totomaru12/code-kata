import unittest

from bowling_180911 import BowlingGame

class BowlingGameTests(unittest.TestCase):

    def setUp(self):
        self.game = BowlingGame()

    def test_allStrikes(self):
        for frame in range(self.game.NORMAL_FRAME_MAX):
            self.game.roll(self.game.SCORE_MAX_IN_FRAME)
        self.game.roll(self.game.SCORE_MAX_IN_FRAME)
        self.game.roll(self.game.SCORE_MAX_IN_FRAME)
        self.assertEqual(300, self.game.score())

    def test_allSpares(self):
        for frame in range(self.game.NORMAL_FRAME_MAX):
            self.game.roll(9)
            self.game.roll(1)
        self.game.roll(9)
        self.assertEqual(190, self.game.score())
    
    def test_allFramesWith8And1(self):
        for frame in range(self.game.NORMAL_FRAME_MAX):
            self.game.roll(8)
            self.game.roll(1)
        self.assertEqual(90, self.game.score())

    def test_allFramesWith9And0(self):
        for frame in range(self.game.NORMAL_FRAME_MAX):
            self.game.roll(9)
            self.game.roll(0)
        self.assertEqual(90, self.game.score())

    def test_allFramesWith0And9(self):
        for frame in range(self.game.NORMAL_FRAME_MAX):
            self.game.roll(0)
            self.game.roll(9)
        self.assertEqual(90, self.game.score())