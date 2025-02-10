module TestSnoc (testsSnoc) where

import Snoc
import Test.HUnit

l = Snoc (Snoc (Snoc (Snoc (Snoc NilS 1) 2) 3) 4) 5
m = Snoc (Snoc (Snoc (Snoc (Snoc NilS 6) 7) 8) 9) 10

testHeadS1 :: Test
testHeadS1 = TestCase $ assertEqual "for (headS l), " 1 (headS l)

testHeadS2 :: Test
testHeadS2 = TestCase $ assertEqual "for (headS m), " 6 (headS m)

tailS1 :: Test
tailS1 = TestCase $ assertEqual "for (tailS l), " (Snoc (Snoc (Snoc (Snoc NilS 2) 3) 4) 5) ((tailS l) :: ListS Integer)

tailS2 :: Test
tailS2 = TestCase $ assertEqual "for (tailS m), " (Snoc (Snoc (Snoc (Snoc NilS 7) 8) 9) 10) ((tailS m) :: ListS Integer)

initS1 :: Test
initS1 = TestCase $ assertEqual "for (initS l), " (Snoc (Snoc (Snoc (Snoc NilS 1) 2) 3) 4) ((initS l) :: ListS Integer)

initS2 :: Test
initS2 = TestCase $ assertEqual "for (initS m), " (Snoc (Snoc (Snoc (Snoc NilS 6) 7) 8) 9) ((initS m) :: ListS Integer)

lastS1 :: Test
lastS1 = TestCase $ assertEqual "for (lastS l), " 5 (lastS l)

lastS2 :: Test
lastS2 = TestCase $ assertEqual "for (lastS m), " 10 (lastS m)

nthElementS1 :: Test
nthElementS1 = TestCase $ assertEqual "for (nthElementS 3 l), " (Just 4) (nthElementS 3 l)

nthElementS2 :: Test
nthElementS2 = TestCase $ assertEqual "for (nthElementS 8 m), " Nothing (nthElementS 8 m)

addFirstS1 :: Test
addFirstS1 = TestCase $ assertEqual "for (addFirstS1 0 l), " (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc NilS 0) 1) 2) 3) 4) 5) ((addFirstS 0 l) :: ListS Integer)

addFirstS2 :: Test
addFirstS2 = TestCase $ assertEqual "for (addFirstS 5 m), " (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc NilS 5) 6) 7) 8) 9) 10) ((addFirstS 5 m) :: ListS Integer)

addLastS1 :: Test
addLastS1 = TestCase $ assertEqual "for (addLastS 6 l), " (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc NilS 1) 2) 3) 4) 5) 6) ((addLastS 6 l) :: ListS Integer)

addLastS2 :: Test
addLastS2 = TestCase $ assertEqual "for (addLastS 11 m), " (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc NilS 6) 7) 8) 9) 10) 11) ((addLastS 11 m) :: ListS Integer)

reverseS1 :: Test
reverseS1 = TestCase $ assertEqual "for (reverseS l), " (Snoc (Snoc (Snoc (Snoc (Snoc NilS 5) 4) 3) 2) 1) ((reverseS l) :: ListS Integer)

reverseS2 :: Test
reverseS2 = TestCase $ assertEqual "for (reverseS m), " (Snoc (Snoc (Snoc (Snoc (Snoc NilS 10) 9) 8) 7) 6) ((reverseS m) :: ListS Integer)

appendS1 :: Test
appendS1 = TestCase $ assertEqual "for (appendS l m), " (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc NilS 1) 2) 3) 4) 5) 6) 7) 8) 9) 10) ((appendS l m) :: ListS Integer)

appendS2 :: Test
appendS2 = TestCase $ assertEqual "for (appendS m l), " (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc (Snoc NilS 6) 7) 8) 9) 10) 1) 2) 3) 4) 5) ((appendS m l) :: ListS Integer)

takeS1 :: Test
takeS1 = TestCase $ assertEqual "for (takeS 10 l), " (Snoc (Snoc (Snoc (Snoc (Snoc NilS 1) 2) 3) 4) 5) ((takeS 10 l) :: ListS Integer)

takeS2 :: Test
takeS2 = TestCase $ assertEqual "for (takeS 2 m), " (Snoc (Snoc NilS 6) 7) ((takeS 2 m) :: ListS Integer)

toHaskell1 :: Test
toHaskell1 = TestCase $ assertEqual "for (toHaskell l), " [1..5] (toHaskell l)

toHaskell2 :: Test
toHaskell2 = TestCase $ assertEqual "for (toHaskell m), " [6..10] (toHaskell m)

fromHaskell1 :: Test
fromHaskell1 = TestCase $ assertEqual "for (fromHaskell [1..3]), " (Snoc (Snoc (Snoc NilS 3) 2) 1) ((fromHaskell [1..3]) :: ListS Integer)

fromHaskell2 :: Test
fromHaskell2 = TestCase $ assertEqual "for (fromHaskell [6..9]), " (Snoc (Snoc (Snoc (Snoc NilS 9) 8) 7) 6) ((fromHaskell [6..9]) :: ListS Integer)

testsSnoc :: [Test]
testsSnoc = [TestLabel "test head l" testHeadS1,
                      TestLabel "test head m" testHeadS2,
                      TestLabel "test tail l" tailS1,
                      TestLabel "test tail m" tailS2,
                      TestLabel "test last l" lastS1,
                      TestLabel "test last m" lastS2,
                      TestLabel "test last l" nthElementS1,
                      TestLabel "test last m" nthElementS2,
                      TestLabel "test last l" addFirstS1,
                      TestLabel "test last m" addFirstS2,
                      TestLabel "test last l" addLastS1,
                      TestLabel "test last m" addLastS2,
                      TestLabel "test last l" reverseS1,
                      TestLabel "test last m" reverseS2,
                      TestLabel "test last l" appendS1,
                      TestLabel "test last m" appendS2,
                      TestLabel "test last l" takeS1,
                      TestLabel "test last m" takeS2,
                      TestLabel "test last l" toHaskell1,
                      TestLabel "test last m" toHaskell2,
                      TestLabel "test last l" fromHaskell1,
                      TestLabel "test last m" fromHaskell2]
