module TestGTree (testsGtree) where

import GTree
import Test.HUnit

t3 = (Node 3 [])
t2 = (Node 3 [Node 2 [], Node 1 []])
t1 = (Node [3,1,2] [Node [4,5,6] [Node [6,7,8] [Node [9,10,11] [], Node [12,13,14] []]], Node [15,16,17] []])
t4 = (Node 1 [Node 2 [Node 3 []]])


testSize1 :: Test
testSize1 = TestCase $ assertEqual "for (size t1), " 6 (size t1)

testSize2 :: Test
testSize2 = TestCase $ assertEqual "for (size t2), " 3 (size t2)

testSize3 :: Test
testSize3 = TestCase $ assertEqual "for (size t3), " 1 (size t3)

testSize4 :: Test
testSize4 = TestCase $ assertEqual "for (size t4), " 3 (size t4)

testDepth1 :: Test
testDepth1 = TestCase $ assertEqual "for (testDepth t1), " 4 (depth t1)

testDepth2 :: Test
testDepth2 = TestCase $ assertEqual "for (testDepth t2), " 2 (depth t2)

testDepth3 :: Test
testDepth3 = TestCase $ assertEqual "for (testDepth t3), " 1 (depth t3)

testDepth4 :: Test
testDepth4 = TestCase $ assertEqual "for (testDepth t4), " 3 (depth t4)

testMapg1 :: Test
testMapg1 = TestCase $ assertEqual "for (mapg sum t1), " (Node 6 [Node 15 [Node 21 [Node 30 [],Node 39 []]],Node 48 []]) (mapg sum t1)

testMapg2 :: Test
testMapg2 = TestCase $ assertEqual "for (mapg (+1) t2), " (Node 4 [Node 3 [],Node 2 []]) (mapg (+1) t2)

testMapg3 :: Test
testMapg3 = TestCase $ assertEqual "for (mapg show t3), " (Node "3" []) (mapg show t3)

testMapg4 :: Test
testMapg4 = TestCase $ assertEqual "for (mapg (\\x -> (x, x + 1)) t4), " (Node (1,2) [Node (2,3) [Node (3,4) []]]) (mapg (\x -> (x, x + 1)) t4)

testSearch1 :: Test
testSearch1 = TestCase $ assertEqual "for (searchg e t1), " True (searchg [9..11] t1)

testSearch2 :: Test
testSearch2 = TestCase $ assertEqual "for (searchg e t2), " False (searchg 4 t2)

testSearch3 :: Test
testSearch3 = TestCase $ assertEqual "for (searchg e t3), " True (searchg 3 t3)

testSearch4 :: Test
testSearch4 = TestCase $ assertEqual "for (searchg e t4), " False (searchg 0 t4)

testsGtree :: [Test]
testsGtree = [TestLabel "test size t1" testSize1,
                       TestLabel "test size t2" testSize2,
                       TestLabel "test size t3" testSize3,
                       TestLabel "test size t4" testSize4,
                       TestLabel "test depth t1" testDepth1,
                       TestLabel "test depth t2" testDepth2,
                       TestLabel "test depth t3" testDepth3,
                       TestLabel "test depth t4" testDepth4,
                       TestLabel "test mapg t1" testMapg1,
                       TestLabel "test mapg t2" testMapg2,
                       TestLabel "test mapg t3" testMapg3,
                       TestLabel "test mapg t4" testMapg4,
                       TestLabel "test searchg t1" testSearch1,
                       TestLabel "test searchg t2" testSearch2,
                       TestLabel "test searchg t3" testSearch3,
                       TestLabel "test searchg t4" testSearch4]
