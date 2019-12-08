easymotion
    Default Mapping      | Details
    ---------------------|----------------------------------------------
    <Leader>f{char}      | Find {char} to the right. See |f|.
    <Leader>F{char}      | Find {char} to the left. See |F|.
    <Leader>t{char}      | Till before the {char} to the right. See |t|.
    <Leader>T{char}      | Till after the {char} to the left. See |T|.
    <Leader>w            | Beginning of word forward. See |w|.
    <Leader>W            | Beginning of WORD forward. See |W|.
    <Leader>b            | Beginning of word backward. See |b|.
    <Leader>B            | Beginning of WORD backward. See |B|.
    <Leader>e            | End of word forward. See |e|.
    <Leader>E            | End of WORD forward. See |E|.
    <Leader>ge           | End of word backward. See |ge|.
    <Leader>gE           | End of WORD backward. See |gE|.
    <Leader>j            | Line downward. See |j|.
    <Leader>k            | Line upward. See |k|.
    <Leader>n            | Jump to latest "/" or "?" forward. See |n|.
    <Leader>N            | Jump to latest "/" or "?" backward. See |N|.
    <Leader>s            | Find(Search) {char} forward and backward.
这些都是没啥k的

<leader><leader>s 搜索跳转
<leader><leader>fFtT 搜索跳转
<leader><leader>jk   行间跳转

surround

3 使用教程
普通模式 	描述 	原文本 	命令 	新文本
ds 目标符号 	删除成对符号 	hellow,(world)! 	ds( 	hellow,world!
cs 目标符号或文本对象界定符 替代符号 	修改成对符号 	hellow),(world)! 	cs({ 	hellow,{ world }!
ys 文本对象 插入符号 	添加成对符号 	hellow,world! 	ysiw( 	hellow,(world)!
yss 插入符号 	为整行添加成对符号 	hellow,world! 	yss( 	(hellow,world!)
yS 文本对象 插入符号 	类似ys，但要换行和缩进 	hellow,world! 	ySiw( 	hellow,(
  world
)!
ySS 插入符号 	类似yss，但要换行和缩进 	hellow,world! 	ySS( 	(
  hellow,world
)!
可视模式 	描述 	原文本 	命令 	新文本
S 插入符号 	类似ys 	hellow,world! 	S( 	hellow,(world)!)
gS 插入符号 	添加成对符号，并换行和缩进 	hellow,world! 	gS( 	hellow,(
  world
)!)
插入模式 	描述 	原文本 	命令 	新文本
CTRL-g s 插入符号 	添加成对符号 		>CTRL+g sb 	()
CTRL-g S 插入符号 	添加成对符号,并换行 		>CTRL+g Sb 	(

)
{
'dskfjslafjsdl'
osdlfkjsdlfjsl'dnsfidshfsafjsl
}
