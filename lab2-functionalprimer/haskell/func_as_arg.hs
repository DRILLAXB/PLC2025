--create inpFunc
getValues = do
    putStrLn "Enter start number (c):"
    cStr <- getLine
    putStrLn "Enter the end number (b):"
    bStr <- getLine
    let c = read cStr :: Int
    let b = read bStr :: Int
    return [c..b] 

--Define applicatorFunc
-- applicatorFunc inpFunc s = if s=='s' then fromIntegral (sum inpFunc) else  fromIntegral (sum inpFunc)/5  
applicatorFunc inpFunc s 
    |  s=='s' = fromIntegral (sum inpFunc) 
    | otherwise =   fromIntegral (sum inpFunc)/5  
    
main = do
    inpFunc <- getValues
    let result = applicatorFunc inpFunc 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))