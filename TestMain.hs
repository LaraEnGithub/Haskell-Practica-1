{-# OPTIONS_GHC -Wno-unused-top-binds #-}

module TestMain where

import Test.HUnit
import TestGTree
import TestSnoc

main :: IO ()
main = runTestTTAndExit $ TestList $ testsSnoc ++ testsGtree

