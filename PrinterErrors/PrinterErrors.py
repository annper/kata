def printerErrors(controlString):
    acceptedLetters = "abcdefghijklm"
    
    filteredString = ''
    for letter in controlString:
        if letter not in acceptedLetters:
            filteredString += letter
    
    return f'{len(filteredString)}/{len(controlString)}'

def printControlString(controlString):
    print(printerErrors(controlString))


printControlString("aaabbbffgggiia")
printControlString("pqrrzzxtuuq")
printControlString("pqrgbaqlucfg")
printControlString("")