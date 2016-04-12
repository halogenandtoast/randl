module Main where

import System.Random.Shuffle
import Control.Monad.Random

pickFactions :: [a] -> [b] -> IO [(a, b)]
pickFactions xs ys = zip <$> shuffleM xs <*> shuffleM ys

main :: IO ()
main = do
  let names = ["Matt", "Goose", "Brandy", "Jess"]
  let factions = ["VC", "NVA", "US", "ARVN"]

  randomFactions <- pickFactions names factions
  print randomFactions
