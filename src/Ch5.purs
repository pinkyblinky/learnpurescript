module Ch5 where

import Prelude (Unit, show, const)

import Effect (Effect)
import Effect.Console (log)

flip :: forall a b c. (a -> b -> c) -> b -> a -> c
flip f x y = f y x

-- myfn :: forall a. a -> String
myfn x = show 1

test :: Effect Unit
test = do
  log (show (myfn ["hello", "yope", "yall"]))
  -- log (show (flip const 1 2))
