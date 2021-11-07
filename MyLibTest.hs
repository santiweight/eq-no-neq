module Main where

import qualified MyLib (someFunc)

instance Eq T where
  (==) = undefined
  Foo /= Foo = False

instance Eq T where
  (==) = undefined
  Foo /= Bar = False
  Foo /= Foo = False
  Bar /= Foo = False

instance Eq T where
  (==) = undefined
  (Foo x) /= Bar = False
  (Foo x) /= Foo = False
  (Bar x) /= Foo = False

instance Eq T where
  (==) = undefined
  (Foo x) /= (Bar y) = False
  (Foo x) /= (Foo y) = False
  (Bar x) /= (Foo y) = False

instance Eq T where
  (==) = undefined
  (/=) = undefined
