#!/usr/bin/env python
# -*- coding: utf-8 -*-

class FizzBuzz:

    def getAll(self):
        result = ''
        for i in range(100):
            number = i + 1
            result += self.get(number)
            result += '\n'
        return result

    def get(self, number):
        if number % 15 == 0:
            return 'FizzBuzz'
        elif number % 3 == 0:
            return 'Fizz'
        elif number % 5 == 0:
            return 'Buzz'
        else:
            return str(number)
