def listFunc():
    a = input("enter a start number")
    b = input("enter an end number")
    # return [i for i in range(a, b)] #Create list of ints from 1 to 5, Haskell equivalent [1..5]
    return list(range(a, b+1))

def applicatorFunc(inpFunc, s):
    if s=='s':
        return sum(inpFunc())
    else:
        return sum(inpFunc())/5

print(applicatorFunc(listFunc, 's'))