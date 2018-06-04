import unittest

from bowling import BowlingGame

class BowlingGameTests(unittest.TestCase):
    
    def setUp(self):
        self.game = BowlingGame()

    def rollMany(self, n, pins):
        for frame in range(n):
            self.game.roll(pins)

    def test_allGutter(self):
        self.rollMany(20, 0)
        self.assertEqual(0, self.game.score())

    def test_allOnes(self):
        self.rollMany(20, 1)
        self.assertEqual(20, self.game.score())

    def test_oneSpare(self):
        self.game.roll(5)
        self.game.roll(5)
        self.game.roll(1)
        self.rollMany(17, 0)
        self.assertEqual(12, self.game.score())

    def test_oneStrike(self):
        self.game.roll(10)
        self.game.roll(3)
        self.game.roll(4)
        self.rollMany(17, 0)
        self.assertEqual(24, self.game.score())

    def test_perfect(self):
        self.rollMany(12, 10)
        self.assertEqual(300, self.game.score())

    def test_allSpares(self):
        self.rollMany(21, 5)
        self.assertEqual(150, self.game.score())

    def test_allNines(self):
        for frame in range(10):
            self.game.roll(9)
            self.game.roll(0)
        self.assertEqual(90, self.game.score())
