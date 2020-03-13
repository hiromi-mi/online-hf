{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}

module Lib where
    -- ( someFunc
    -- ) where

import qualified Data.Text.IO as T
{- import qualified Data.Text as T -}
import System.IO
import Control.Monad.IO.Class

import qualified System.Process as Q
import GHC.IO.Exception (ExitCode(..))
import Servant
-- for ToJSON
import Data.Aeson
-- for Generic
import GHC.Generics

import Network.Wai
import Network.Wai.Handler.Warp

type Compile = "compile" :> ReqBody '[JSON] SourceCode :> Post '[JSON] Compiled
        :<|>   "frontend" :> Raw

data Compiled = Compiled
   { outout :: String
   , outerr :: String
   } deriving (Eq, Show, Generic)

data SourceCode = SourceCode { code :: String} deriving (Eq, Show, Generic)

instance ToJSON Compiled
instance FromJSON SourceCode

server1 :: Server Compile
server1 = someFunc :<|> serveDirectoryWebApp "frontend"

userAPI :: Proxy Compile
userAPI = Proxy

app1 :: Application
app1 = serve userAPI server1

runServer :: IO ()
runServer = run 8081 app1

someFunc :: SourceCode -> Handler Compiled
someFunc (SourceCode source)  = do
    liftIO $ writeFile "/tmp/tmp.c" source
    liftIO $ putStr source
    -- liftIO $ hFlush stdout
    -- strline <- liftIO $ getLine
    (code, outout, outerr) <- liftIO $ Q.readCreateProcessWithExitCode (Q.proc "/home/mizunomidori/devel/hanando-fukui/hanando" ["-f", "/tmp/tmp.c"]) ""
    return (Compiled outout outerr)
    {-
    case code of
        ExitFailure _ -> putStrLn ("Error: " ++ outerr ++  ".")
        ExitSuccess -> putStrLn(outout)
        -}
