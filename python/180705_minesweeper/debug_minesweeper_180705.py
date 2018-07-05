#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os

from minesweeper_180705 import MineSweeper

if __name__ == '__main__':
    m = MineSweeper()
    input = ''
    with open('minesweeper_input.txt', 'r') as file:
        input = file.read()
    sys.stdout.write(m.answer(input))
    sys.stdout.write('\n')
