Chinese Chars By Frequency
==========================


According to [Character frequency list of informative texts in Modern Chinese 现代汉语信息类文本单字列表][zh-chars-freq] by [Jun Da (笪骏)][junda]


Use Shell Script to Generate These Char Table Values

```
awk '{print $2}' chinese_informative.txt 
awk '             $1 <= 1000 {print $2}' chinese_infomative.txt > zh_chars_0001_1000.dat
awk '$1 > 1000 && $1 <= 2000 {print $2}' chinese_infomative.txt > zh_chars_1001_2000.dat
awk '$1 > 2000 && $1 <= 4000 {print $2}' chinese_infomative.txt > zh_chars_2001_4000.dat
awk '$1 > 4000 && $1 <= 6000 {print $2}' chinese_infomative.txt > zh_chars_4001_6000.dat
awk '$1 > 4000 && $1 <= 6000 {print $2}' chinese_infomative.txt > zh_chars_4001_6000.dat
awk '             $1 <= 6000 {print $2}' chinese_infomative.txt > zh_chars_6000.dat
```


[zh-chars-freq]: http://lingua.mtsu.edu/chinese-computing/statistics/char/list.php?Which=IN

[junda]: http://lingua.mtsu.edu/