import unittest

from minesweeper_180705 import MineSweeper

class MineSweeperTests(unittest.TestCase):

    def test(self):
        input = ''
        with open('minesweeper_input.txt', 'r') as file:
            input = file.read()
                
        expect = ''
        with open('minesweeper_expect.txt', 'r') as file:
            expect = file.read()

        m = MineSweeper()
        answer = m.answer(input)
        self.assertEqual(expect , answer)
