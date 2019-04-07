module Student where

data Student = Student {firstName::String, lastName::String, age::Int} 
   deriving (Show, Read, Eq)
   
listToProcess = [Student "Alicja" "Akla" 21, Student "Batrek" "Bodo" 20, Student "Celina" "Czyzyk" 21, Student "Damian" "Dab"  22, Student "Eustachy" "Elo" 20]

toFLName :: Student -> String
toFLName (Student fn ln _) = fn ++ " " ++ ln

toNumName :: Student -> (Int,String)
toNumName (Student fn ln nr) = (nr,fn ++ " " ++ ln)

toRaport :: Student -> String
toRaport (Student fn ln nr) = "student: " ++ fn ++ " " ++ ln ++ "wiek: " ++ nr::[Char]

listName :: [String]
listName = map toFLName listToProcess

listTuple :: [(Int,String)]
listTuple = map toNumName listToProcess

listRaport :: [String]
listRaport = map toRaport listToProcess


