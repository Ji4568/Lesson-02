###練習2：使用迴圈功能檢查資料
#在使用函數「head()」時我們湊巧發現了一件事情，那就是第5列和第6列似乎重複了，而這個檔案似乎有不只一處的重複資料，因此我們要開始做資料清理
#在教大家簡單的資料清理函數之前，由於我們上一節課已經教過了迴圈功能，我希望大家先用迴圈功能檢查這份資料有多少筆重複資料，請將下面的清理方式寫成程式碼
#請檢查school這個欄位是否重複
#請多創造一個欄位，並標記這列是否重複(欄位名稱隨便)
#請執行一個迴圈，從此欄位的第一個值開始檢查，每次迴圈開始時就檢查資料表上面的國小中是否存在與現在位置名稱完全相等的國小
#註：我們在確認時可能會用到一個新函數「%in%」，它的功能是確認左邊的物件是否有在右邊的物件中出現過，如下

dat[5,"school"] 

dat[1:4,"school"]

dat[5,"school"] %in% dat[1:4,"school"]

dat[6,"school"] 

dat[1:5,"school"]

dat[6,"school"] %in% dat[1:5,"school"]

###練習2答案
#我們應該先想辦法把索引值改成迴圈可接受的形式：
i = 2
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 3
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 4
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 5
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 6
dat[i,"school"]  %in% dat[1:(i-1),"school"]
#接著，還記得資料表可以透過索引函數「$」新增變數嗎：
dat$DUP = FALSE # 也可以用「dat[,'DUP'] = FALSE」新增

for (i in 2:nrow(dat)) {
  dat[i,'DUP'] = dat[i,"school"]  %in% dat[1:(i-1),"school"]
}

head(dat)