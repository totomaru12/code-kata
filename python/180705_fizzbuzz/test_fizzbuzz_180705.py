import unittest

from fizzbuzz_180705 import FizzBuzz

class FizzBuzzTests(unittest.TestCase):
    
    def setUp(self):
        self.fizzBuzz = FizzBuzz()
        with open('fizz_buzz_answer.txt', 'r') as file:
            self.answer = file.read()

    def test_all(self):
        self.assertEqual(self.answer , self.fizzBuzz.getAll())

    def test_1(self):
        self.assertEqual('1', self.fizzBuzz.get(1))

    def test_2(self):
        self.assertEqual('2', self.fizzBuzz.get(2))

    def test_3(self):
        self.assertEqual('Fizz', self.fizzBuzz.get(3))

    def test_4(self):
        self.assertEqual('4', self.fizzBuzz.get(4))

    def test_5(self):
        self.assertEqual('Buzz', self.fizzBuzz.get(5))

    def test_6(self):
        self.assertEqual('Fizz', self.fizzBuzz.get(6))

    def test_10(self):
        self.assertEqual('Buzz', self.fizzBuzz.get(10))

    def test_15(self):
        self.assertEqual('FizzBuzz', self.fizzBuzz.get(15))

    def test_30(self):
        self.assertEqual('FizzBuzz', self.fizzBuzz.get(30))