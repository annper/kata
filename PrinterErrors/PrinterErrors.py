
def printerErrors(controlString):    
    removeAcceptedLetters = lambda letter: letter not in "abcdefghijklm"
    filteredString = ''.join(filter(removeAcceptedLetters, list(controlString)))
    
    return f'{len(filteredString)}/{len(controlString)}'

def printControlString(controlString):
    print(printerErrors(controlString))

printControlString("aaabbbffgggiia")
printControlString("pqrrzzxtuuq")
printControlString("pqrgbaqlucfg")
printControlString("")