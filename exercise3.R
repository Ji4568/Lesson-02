###練習3：使用help查詢函數參數並修改寫出的檔案樣貌
#寫出檔案後我們發現了幾個問題：
#第一個欄位是列名稱，但這其實不需要，所以請在寫出檔案時請R不要把列名稱寫出
#如果我們使用記事本開啟這個檔案，我們會發現文字會有雙引號，我們希望在寫出文字時把雙引號去掉
#寫出的時候有DUP1、DUP2兩個變數，希望刪除
#小提示：前兩項要求可以使用help找出函數「write.csv」中還有哪些參數能修改，最後一項要求請利用索引函數做到
#這是一個很好的練習機會來學習怎樣看函數說明文件，而參數「row.names」和「quote」分別對應到第一小題及第二小題：
write.csv(dat.clean, "data2_1 clean.csv", fileEncoding = 'CP950', row.names = FALSE, quote = FALSE)
#第三題找不到參數，但你是否還記得能用索引函數完成他呢？
write.csv(dat.clean[,1:9], "data2_1 clean.csv", fileEncoding = 'CP950', row.names = FALSE, quote = FALSE)
#遇到問題時不要第一個想法就是找參數！
