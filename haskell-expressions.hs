-- |Some simple arithmetic.
2 + 5

5 / 2

50 * (100 - 4999)

50 * 100 - 4999

(50 * 100) - 4999

-- |Will generate an error.
5 * -1

-- |Will work just fine.
5 * (-1)

-- |Boolean algebra.
True && False

True && True

False || True

not (True && False)

-- |Will return True.
5 == 5

-- |Will return False.
1 == 0

-- |Successor function.
succ 10

-- |Min and Max functions.
min 10 11

max 15 16

succ 9 + min 10 11 + 10

(succ 9) + (min 10 11) + 10

-- |Will return 100
succ 9 * 10

-- |Will return 91
succ (9 * 10)

-- |Div function - integral division.
div 5 2

-- |Div function with the infix function concept.
5 `div` 2

-- |Defining a function.
doubleMe x = x + x
doubleMe 9
doubleMe 8.3

-- |Defining a function that takes two numbers, multiplies each by two and then adds them together.
doubleUs x y = x*2 + y*2
doubleUs 2 3

-- |Or...
doubleUs x y = doubleMe x + doubleMe y
doubleUs 2 3

doubleUs 28 88 + doubleMe 123

-- |Defining a function that multiplies a number by two only if that number is smaller than or equal to 100.
doubleSmallNumber x = if x > 100
                        then x
                        else x*2
doubleSmallNumber 101
doubleSmallNumber 10

-- |The ' is usually used to denote a strict version of a function.
doubleSmallNumberPlusOne' x = (if x > 100 then x else x*2) + 1
doubleSmallNumberPlusOne' 10

-- |Defining a homogenous data structure.
let numbers = [2,4,5,6,7,8,9]
numbers

-- |Putting two lists together.
['v','i'] ++ ['n','i']

-- |Defining a list comprehension to get all numbers from 50 to 100 whose remainder when divided with the number 7 is 3.
[ x | x <- [50..100], x `mod` 7 == 3]

-- |Defining a comprehension that replaces each odd number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!".
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
boomBangs [9..15]

-- |Defining a comprehension that return all numbers from 10 to 20 that are not 13, 15 or 19.
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  

-- |Defining a function that takes a string and removes everything except uppercase letters from it.
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
removeNonUppercase "HAhahauahauehauehaueuahe HU hauahaha"