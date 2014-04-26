# To bind Keys and Values 

keys="gat-tables/output/gat-char-keys-6000.txt"
values="zh_chars/zh_chars_6000.dat"


pr -m -t -s\  ${keys} ${values} | gawk '{print $1,$2}' > gat-key-vaule-6000.txt
