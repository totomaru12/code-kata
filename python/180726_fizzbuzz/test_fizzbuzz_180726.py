import unittest

from fizzbuzz_180726 import FizzBuzz

class FizzBuzzTests(unittest.TestCase):

    def setUp(self):
        self.fizzBuzz = FizzBuzz()

    def test_all(self):
        with open('fizz_buzz_answer.txt', 'r') as file:
            self.answer = file.read()
        self.assertEqual(self.answer, self.fizzBuzz.getAll())
