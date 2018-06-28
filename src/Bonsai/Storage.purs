-- | Wrapper for window.localStorage
module Bonsai.Storage where

import Prelude

import Bonsai.DOM (Window(..))
import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Data.Maybe (Maybe(..), maybe)
import Foreign (F, Foreign, readNullOrUndefined, readString)

foreign import primitives
  :: { getItem :: Fn2 String Foreign Foreign
     , setItem :: Fn3 String String Foreign Unit
     , removeItem :: Fn2 String Foreign Unit}

-- | Get a string value for the the key from storage.
getItem :: String -> Window -> F (Maybe String)
getItem key (Window win) = do
  runFn2 primitives.getItem key win #
  readNullOrUndefined >>=
  maybe (pure Nothing) (map Just <<< readString)

-- | Put the string value at key into the store
setItem :: String -> String -> Window -> F Unit
setItem key val (Window win) =
  pure $ runFn3 primitives.setItem key val win

-- | Remove the key from the store
removeItem :: String -> Window -> F Unit
removeItem key (Window win) =
  pure $ runFn2 primitives.removeItem key win
