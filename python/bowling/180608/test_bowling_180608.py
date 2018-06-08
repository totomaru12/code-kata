import unittest

from bowling_180608 import BowlingGame

class BowlingGameTests(unittest.TestCase):

    def setUp(self):
        self.game = BowlingGame()

    def repeatRolls(self, frameCount, pins1st, pins2nd):
        for frame in range(frameCount):
            self.game.roll(pins1st)
            if pins1st != 10:
                self.game.roll(pins2nd)
    
    def test_allStrike(self):
        self.repeatRolls(12, 10, 0)
        self.assertEqual(300, self.game.score())

    def test_allSpare(self):
        self.repeatRolls(11, 5, 5)
        self.assertEqual(150, self.game.score())

    def test_allNines(self):
        self.repeatRolls(10, 9, 0)
        self.assertEqual(90, self.game.score())
        