gat-eim tutorial
================


这是 gat 中文输入法的练习教程。

教程的基本点放在，最常用字的熟悉和掌握上，data 文件夹下有相应的码表（大文件！！！ 最好用 head 看）。

### Emacs 设置

- 1. 把 gat-eim.el 配置到你的 Emacs;
- 2. 再参考我的 emacs 配置的 [more-funcs.el][more-funcs]，设置一个函数来打开关闭输入法。(当然你也可以关联快捷键）


### 练习方法

 - 1. 把 data 文件夹下的文件拷来，打开 Emacs 对着敲，我们只能这样适应一个没有规律只重效率的输入法；
 - 2. 把喜欢的文字（自己的旧文等）转化好，对着敲。转化方法[戳这里][gat-trans] 

```
➜  scripts git:(master) ✗ ./gat-trans2.sh "自己做的中文输入法出原型了，现在只能在 Emacs 里使用。从设计上完虐各种输入法。学习曲线异常陡。"          
{自eq}{己etom}{做etsx}{的i}{中m}{文toi}{输tjv}{入tls}{法eb}{出ek}{原tmn}{型etkk}{了n}，{现tol}{在h}{只tax}{能ei}{在h}Emacs{里tmx}{使tri}{用ed}。{从trk}{设eter}{计tsr}{上f}{完etci}{虐tenax}{各txh}{种ef}{输tjv}{入tls}{法eb}。{学ep}{习tehsa}{曲etdq}{线etki}{异tjf}{常tln}{陡tetck}。
```
 




- 中文字典来自 [here][bigrams], I use [these scripts][gat-trans] to make this tutorial.



[bigrams]: https://github.com/district10/misc/tree/master/gen-gat/zh_chars/data/bigrams
[gat-trans]: https://github.com/district10/dotfiles/tree/master/scripts/
[more-funcs]: https://github.com/district10/dotfiles/blob/master/emacs/dot_emacs.d/more-funcs.el
