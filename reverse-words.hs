import Control.Monad

-- a little program that reverses words as a stream
-- giving you the next chunk of output as you press space

main :: IO ()
main = forever $ do
  word <- readWord
  putStr $ reverse word ++ " "
  where
    readWord = do
      char <- getChar
      case char of
        ' ' -> return ""
        _ -> fmap (char:) readWord

thing :: IO ()
thing = forever $ fmap (putStr . (++ " ") . reverse) readWord

readAWord :: IO String
readAWord = takeWhile (/= ' ') $ repeat getChar

readWord :: IO String
readWord = do
  char <- getChar
  case char of
    ' ' -> return ""
    _ -> fmap (char:) readWord

