###第一節：陣列(Array)層物件基本介紹(1)
#在今天課程開始之前，我們要先介紹一下R裡面的陣列(Array)層物件(第一層物件介紹在Lesson 1中，各位可以複習一下)
#陣列(Array)層分為矩陣(matrix)及資料表(data.frame)：
#矩陣(matrix)要求裡面的每個元素都為單一種類，因此與變數(Variable)層的向量類似，分為邏輯(logical)矩陣、整數(integer)矩陣、數字(numeric)矩陣、文字(character)矩陣[注意：因子(factor)向量被轉為矩陣時會變為文字矩陣]
#資料表(data.frame)可以允許每欄有不同的屬性，一個資料表內可以同時擁有不同屬性的變項。
#我們首先介紹矩陣(matrix)物件
# 數???矩陣物件(注意將數字填入矩陣時的順序)
x1 = 1:20
M1 = matrix(x1, nrow = 4, ncol = 5)
M1
# 因子矩陣物件
x2 = c(0, 1, 2, 0, 2, 1, 1, 2, 0)
x2 = as.factor(x2)
M2 = matrix(x2, nrow = 3, ncol = 3)
M2

#陣列(Array)層物件基本介紹(2)
#矩陣的運算與一般運算有許多相異之處，我們在這裡介紹一下矩陣相關的運算函數
#函數「t()」可以求得轉置矩陣
#函數「solve()」可以求得反矩陣
#矩陣的乘法需要利用函數「%*%」來完成
x = 1:4
X = matrix(x, nrow = 2, ncol = 2)

X

t(X)

solve(X)

y = 2:5
Y = matrix(y, nrow = 2, ncol = 2)
Y

#注意下列兩者的差異
X%*%Y

X*Y

#陣列(Array)層物件基本介紹(3)
#繼續介紹陣列(Array)層物件中有幾個重要的函數來描述它的基本資料
#函數「length()」可以仍然可以用來查詢此陣列的總長度(長*寬)
#函數「nrow()」、「ncol()」可以查詢陣列的列欄數目

x1 = 1:20
M1 = matrix(x1, nrow = 4, ncol = 5)

length(M1)

nrow(M1)

ncol(M1)


