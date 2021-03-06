#!/usr/bin/env stack
-- stack --install-ghc runghc wreq

import Control.Concurrent.Thread.Delay
import Control.Lens
import Control.Monad
import Data.List
import Network.Wreq
import System.Exit
import System.Process

email ::  String -> IO ()
email content =
    void . system $ "echo '' | mutt -s " ++ content ++ " fabianbeuke@gmail.com"

notify ::  String -> IO ()
notify = void . system . ("notify-send -t 5000 'Warning!' " ++)

alert ::  String -> IO ()
alert message = do
      notify message
      email message

isOnline :: String -> IO Bool
isOnline url = do
    response <- get url
    return $ (==) 200 (response ^. responseStatus . statusCode)

main :: IO ()
main = do
    online <- isOnline "https://google.com"
    if not online then main else do
    beuke <- isOnline "https://beuke.org"
    dripcap <- isOnline "https://github.com/dripcap/dripcap/\
        \releases/download/v0.6.4/dripcap-linux-amd64.deb"
    unless beuke $ alert "'beuke offline'"
    unless dripcap $ alert "'dripcap offline'"
    let hours = (*) $ 60 * 60 * 1000 * 1000
    delay $ hours 8 -- sleep 8 hours
    main
