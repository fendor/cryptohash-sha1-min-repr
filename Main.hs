{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Crypto.Hash.SHA1               as H
import           Data.ByteString.Base16         (encode)
import qualified Data.ByteString.Char8          as B

main :: IO ()
main = (H.updates H.init ["hello", "world", "efewfwefwefwef", "ewfwefwefwef"]) `seq` putStrLn "Loaded" -- opts_hash
    where
    --  opts_hash = B.unpack $ encode $ H.finalize $ H.updates H.init (map B.pack ["hello", "world"])
