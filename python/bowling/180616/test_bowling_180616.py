import unittest

from bowling_180616 import BowlingGame

class BowlingGameTests(unittest.TestCase):

    def setUp(self):
        self.game = BowlingGame()

    def repeatFrameScore(self, times, pins1st, pins2nd):
        for i in range (times):
            self.game.addScore(pins1st)
            if pins1st != 10:
                self.game.addScore(pins2nd)

    def test_allStrike(self):
        self.repeatFrameScore(12, 10, 0)
        self.assertEqual(300, self.game.totalScore())

    def test_allSpare(self):
        self.repeatFrameScore(10, 5, 5)
        self.game.addScore(5)
        self.assertEqual(150, self.game.totalScore())

    def test_allNines(self):
        self.repeatFrameScore(10, 9, 0)
        self.assertEqual(90, self.game.totalScore())
