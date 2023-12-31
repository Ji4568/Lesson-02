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

#陣列(Array)層物件基本介紹(4)
#繼續介紹陣列的索引函數，在R裡面所有的索引函數都由中括號形成，但由於陣列格式有兩個維度，所以需要指定row與column的位置，中間以逗點分隔，如下
x1 = 1:20
M1 = matrix(x1, nrow = 4, ncol = 5)
M1

# 猜猜這些指令是叫出哪個數字
M1[3,4]
M1[2,5]
M1[4,1]
#???得注意的是，若將某部分留白，那視同叫出所有東西
# 也猜猜這些指令是叫出哪個東西
M1[3,]
M1[,1]
M1[,c(2, 5)]

#陣列(Array)層物件基本介紹(5)
#???得注意的是，陣列(Array)層物件能給定列/欄位名稱，分別使用函數「rownames()」及「colnames()」：
x1 = 1:20
M1 = matrix(x1, nrow = 4, ncol = 5)
rownames(M1) = c("a", "b", "c", "d")
M1

colnames(M1) = c("A", "B", "C", "D", "E")
M1

#在給定名稱以後，索引函數也能透過給定的名稱來叫出該物件
M1["c","A"]
M1[,c("E", "C")]
#另外，如果我們要修改已有的欄位名稱，我們可以透過函數「colnames()」與索引函數的結合做到
colnames(M1)[3] = "ZZZ"
M1

#陣列(Array)層物件基本介紹(6)
#接著我們介紹資料表(data.frame)物件，與矩陣物件不同的是，資料表允許每欄有不同的屬性，因此從矩陣轉資料表是不會改變太多結構的，但從資料表轉為矩陣就可能出現問題
x1 = 1:20
M1 = matrix(x1, nrow = 4, ncol = 5)
D1 = data.frame(M1)
D1

rownames(M1) = c("a", "b", "c", "d")
colnames(M1) = c("A", "B", "C", "D", "E")

D2 = data.frame(M1)
D2

colnames(D1) = c("A", "B", "C", "D", "E")
D1

#陣列(Array)層物件基本介紹(7)
#資料表(data.frame)物件也能透過合併多個長度相同的向量(可以允許不同種類)來產生，並且在合併後不改變本來的屬性：
a = c(TRUE, FALSE, TRUE, FALSE, FALSE)
class(a)

b = c(0.7, -0.9, 1.2, -2.1, 3.7)
class(b)

c = c("A", "B", "C", "C", "B")
c = as.factor(c)
class(c)

DATA = data.frame(a, b, c)
DATA

class(DATA[,1])

class(DATA[,2])

class(DATA[,3])

#陣列(Array)層物件基本介紹(8)
#資料表(data.frame)除了能用矩陣的索引函數之外，從這個層級開始又多了一個索引函數「$」，它的使用方法如下：
DATA$b

DATA[,2]

DATA[,"b"]

#透過新的索引函數「$」，我們將可以為資料表新增變數，注意新增變數功能沒有辦法透過舊的索引函數做到：
a = c(TRUE, FALSE, TRUE, FALSE, FALSE)
b = c(0.7, -0.9, 1.2, -2.1, 3.7)
c = c("A", "B", "C", "C", "B")
DATA = data.frame(a, b, c)
DATA

DATA$d = c(1, 5, 8, 9, 12)
DATA

#除此之外，擴充陣列層的物件還可以透過函數「rbind()」及「cbind()」完成：
x = 1:4
X = matrix(x, nrow = 2, ncol = 2)
y = 2:5
Y = matrix(y, nrow = 2, ncol = 2)

rbind(X, Y)

rbind(Y, X)

cbind(X, Y)

#還記得如何擴充向量嗎？
x = 1:4
y = 6:8