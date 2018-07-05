#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys

class MineSweeper:
    
    def answer(self, input):
        
        boardParser = BoardsTextParser()
        boardInfoList = boardParser.parse(input)

        isFirstAnswer = True
        finalAnswer = ''
        fieldIndex = 1

        for boardInfo in boardInfoList:
    
            if boardInfo[BoardsTextParser.KEY_IS_VALID] == False:
                print('index= ' + str(fieldIndex) + ' board is invalid')
                return

            borad = BoardAnswerer()
            answerBoard = borad.answer(
                boardInfo[BoardsTextParser.KEY_ROW_COUNT],
                boardInfo[BoardsTextParser.KEY_COLUMN_COUNT],
                boardInfo[BoardsTextParser.KEY_CONTENT])

            if isFirstAnswer == False:
                finalAnswer += '\n\n'

            fieldIndexLine = 'Field #' + str(fieldIndex) + ':\n'
            finalAnswer += fieldIndexLine
            finalAnswer += self.formatedBordString(answerBoard)

            isFirstAnswer = False
            fieldIndex += 1

        return finalAnswer

    def formatedBordString(self, board):
        currentRow = 0
        finalRow = len(board) - 1
        result = ''
        for row in board:
            for mark in row:
                char = str(mark)
                result += char
            if currentRow != finalRow:
                result += '\n'
            currentRow += 1
        return result


class BoardsTextParser:
    
    # key for parse method return dictonary
    KEY_CONTENT = 'content'
    KEY_ROW_COUNT = 'rowCount'
    KEY_COLUMN_COUNT = 'columnCount'
    KEY_IS_VALID = 'isValid'

    def parse(self, input):
        boradInfoList = []
        inputLines = input.split('\n')
        contentsStartLineIndex = 1

        while True:
            boardInfo = dict()

            # size line format is the below
            # rowCount columnCount
            # ex) 3 4
            sizeLine = inputLines[contentsStartLineIndex - 1]
            sizeInfo = self.parseBoardSizeLine(sizeLine)
            if sizeInfo[BoardsTextParser.SIZE_KEY_IS_VALID_FORMAT] == False:
                boardInfo[BoardsTextParser.KEY_IS_VALID] = False
                boradInfoList.append(boardInfo)
                return boradInfoList
            rowCountNum = sizeInfo[BoardsTextParser.SIZE_KEY_ROW_COUNT]
            columnCountNum = sizeInfo[BoardsTextParser.SIZE_KEY_COLUMN_COUNT]

            # check if end of board text
            if rowCountNum == 0 and columnCountNum == 0:
                break

            if len(inputLines) <= contentsStartLineIndex + rowCountNum:
                print('invalid input string: invalid line count')
                boardInfo[BoardsTextParser.KEY_IS_VALID] = False
                boradInfoList.append(boardInfo)
                return boradInfoList

            contents = ''
            for i in range(rowCountNum):
                contents += inputLines[contentsStartLineIndex + i]
            contentsStartLineIndex += (rowCountNum + 1)

            boardInfo[BoardsTextParser.KEY_ROW_COUNT] = rowCountNum
            boardInfo[BoardsTextParser.KEY_COLUMN_COUNT] = columnCountNum
            boardInfo[BoardsTextParser.KEY_CONTENT] = contents
            boardInfo[BoardsTextParser.KEY_IS_VALID] = True
            boradInfoList.append(boardInfo)

        return boradInfoList


    # index for parseBoardSizeLine method return dictonary
    SIZE_KEY_ROW_COUNT = 'sizeRowCount'
    SIZE_KEY_COLUMN_COUNT = 'sizeColumnCount'
    SIZE_KEY_IS_VALID_FORMAT = 'sizeIsValid'

    def parseBoardSizeLine(self, sizeLine):
        lineInfo = dict()

        # size line format is the below
        # rowCount columnCount
        # ex) 3 4
        size = sizeLine.split(' ')
        if len(size) != 2:
            print('invalid size line: ' + sizeLine)
            lineInfo[BoardsTextParser.SIZE_KEY_IS_VALID_FORMAT] = False
            return lineInfo

        rowCount = size[0]
        columnCount = size[1]
        rowCountNum = int(rowCount)
        columnCountNum = int(columnCount)

        lineInfo[BoardsTextParser.SIZE_KEY_ROW_COUNT] = rowCountNum
        lineInfo[BoardsTextParser.SIZE_KEY_COLUMN_COUNT] = columnCountNum
        lineInfo[BoardsTextParser.SIZE_KEY_IS_VALID_FORMAT] = True

        return lineInfo


class BoardAnswerer:
    
    def answer(self, boardRow, boardColumn, content):
        
        # create input char list
        inputCharList = self.createInputCharList(content)
        if 0 == len(inputCharList):
            return []

        # create input borad list
        inputBoard = self.createInputBoardList(inputCharList, boardRow, boardColumn)
        if 0 == len(inputBoard):
            return []

        # create answer board with all 0
        answerBoard = self.createInitialAnswerBoard(boardRow, boardColumn)

        # create final answer board
        self.computeAnswerBoard(answerBoard, inputBoard, boardRow, boardColumn)

        return answerBoard

    def createInputCharList(self, content):
        inputWithoutLF = content.replace('\n', '')
        inputCharList = list(inputWithoutLF)

        # check content
        for char in inputCharList:
            if char != '.' and char != '*':
                print('input content includs invaild character ' + char)
                return []

        return inputCharList

    def createInputBoardList(self, inputList, boardRow, boardColumn):
        inputBoard = []
        columnCount = 0
        columnData = []
        rowCount = 0
        cellCount = 0

        for mark in inputList:
            cellCount += 1
            columnData.append(mark)
            columnCount += 1

            if columnCount == boardColumn:
                inputBoard.append(columnData)
                columnCount = 0
                columnData = []
                rowCount += 1

        # check if input board size is valid for it's input content
        if boardRow * boardColumn != cellCount:
            print("input size is not valid for it's content")
            return []

        return inputBoard

    def createInitialAnswerBoard(self, boardRow, boardColumn):
        answerBoard = []
        for i in range(boardRow):
            columnList = []
            for k in range(boardColumn):
                columnList.append(0)
            answerBoard.append(columnList)
        return answerBoard
    
    def computeAnswerBoard(self, answerBoard, inputBoard, boardRow, boardColumn):
        row = 0
        column = 0
        while row < boardRow:
            while column < boardColumn:
                if inputBoard[row][column] == '*':
                    self.incrementBorad(answerBoard, row, column, boardRow, boardColumn)
                column += 1
            row += 1
            column = 0

    def incrementBorad(self, board, row, column, rowMax, columnMax):
        board[row][column] = '*'

        # c d e
        # b * f
        # a h g

        x = row
        y = column
        target = [
            [x+1, y-1], [x+0, y-1], [x-1, y-1], [x-1, y+0], # a, b, c, d
            [x-1, y+1], [x+0, y+1], [x+1, y+1], [x+1, y+0]  # e, f, g, h
        ]
        for cell in target:
            self.incrementCell(board, cell[0], cell[1], rowMax, columnMax)

    def incrementCell(self, board, row, column, rowMax, columnMax):
        if row < 0 or rowMax <= row:
            return
        if column < 0 or columnMax <= column:
            return
        if board[row][column] == '*':
            return
        board[row][column] += 1
        
    # for debug
    def printBoard(self, board):
        for row in board:
            for mark in row:
                char = str(mark)
                sys.stdout.write(char)
            sys.stdout.write('\n')
