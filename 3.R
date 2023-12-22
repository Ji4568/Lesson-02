###第三節：簡單資料清理及寫出檔案(1)
#事實上，剛剛我們需要的功能在R裡面可以用很簡單的函數做到，因此從這裡開始我們要開始學習大量的函數，但同學一定要了解就算你不知道這些函數，也可以用迴圈暴力做完每一件事情
#函數「duplicated()」可以直接找尋整個資料表是否有重複的列

dat$DUP1 = duplicated(dat)
dat[,c("school", "DUP1")]

#也可以直接檢查單一變數是否重複
dat$DUP2 = duplicated(dat$school)
dat[,c("school", "DUP1", "DUP2")]

#一個一個檢查DUP1與DUP2是否相同有點白痴，這時候我們可以用函數「all.equal」
all.equal(dat$DUP1, dat$DUP2)

