-- --create inpFunc
-- getValues = do
--     putStrLn "Enter start number (c):"
--     cStr <- getLine
--     putStrLn "Enter the end number (b):"
--     bStr <- getLine
--     let c = read cStr :: Int
--     let b = read bStr :: Int
--     return [c..b] 

-- --Define applicatorFunc
-- -- applicatorFunc inpFunc s = if s=='s' then fromIntegral (sum inpFunc) else  fromIntegral (sum inpFunc)/5  
-- applicatorFunc inpFunc s 
--     |  s=='s' = fromIntegral (sum inpFunc) 
--     | otherwise =   fromIntegral (sum inpFunc)/5  
    
-- main = do
--     inpFunc <- getValues
--     let result = applicatorFunc inpFunc 'a' --Call applicatorFunc with inpFunc and 'a' as args
--     putStrLn("sum = " ++ show(result))


-- create inpFun
inpFunc a b = [a..b]

--Define applicatorFunc
applicatorFunc inpFunc a b s = if s == 's' then sum (inpFunc a b) else sum (inpFunc a b))/(b-a+1)


main = do
    let result = applicatorFunc inpFun 1 10 's'
    putStrLn("sum = " ++ show result)
