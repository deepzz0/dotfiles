### .vimrc for Macvim 演示文档

vimrc 地址：[https://github.com/deepzz0/dotfiles/blob/master/.vimrc](https://github.com/deepzz0/dotfiles/blob/master/.vimrc)。欢迎完善本文档。

![http://7xokm2.com1.z0.glb.clouddn.com/img/macvim.jpg](http://7xokm2.com1.z0.glb.clouddn.com/img/macvim.jpg)

#### 使用流程

1、复制或软链本仓库文件 `.vimrc` 到 `~/.vimrc`。

2、安装 vim 插件管理器：`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`。

3、进入 macvim，输入  `:PluginInstall` 安装插件。

4、编译代码补全插件 `YouCompleteMe`：[https://github.com/Valloric/YouCompleteMe#mac-os-x](https://github.com/Valloric/YouCompleteMe#mac-os-x)。

5、享受你的 vim 编程之旅。



#### 效果与技巧

1、打开与关闭目录 *NERDTree*：`⌘+e`。

2、相对或绝对行号显示：`Ctrl+n`。

3、左右切换 Buffer：`H/L`=>`Shift+H/L`。

4、折叠代码段：`,+zz`。

5、简单符号环绕：`VISUAL` 模式，选中字符，输入符号。支持："，'，`，[]，()，{}。

6、切换窗口：`Ctrl+j/k/h/l`。

7、切换 Tab：`,+0-9`。

8、超级权限保存文件：`:w!!`，该命令需要快速键入，否则无效。

9、取消搜索高亮：`,+/`。

10、选择所有文本：`,+s+a`。

11、快速保存：`,+w`。

12、删除 Buffer：`,+b+d`。

13、搜索文件：`⌘+p`。

14、全局搜索关键词 CtrlSF：`⌘+f`。

15、在此打开 CtrlSF 结果：`:CO`。

16、批量注释代码：`⌘+/`。

17、显示 Tagbar：`⌘+y`。

18、选中代码片段 Ultisnips：`TAB`。

19、批量选中，批量修改：`Enter`。



更多详细请查看 `.vimrc` 内容。