ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  line | line == "" = ask prompt
       | line == "quit" = putStrLn ("quitting...")
       | otherwise = putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt