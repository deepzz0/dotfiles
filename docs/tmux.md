### .tmux.conf for Terminal

tmux.conf 地址：[https://github.com/deepzz0/dotfiles/blob/master/.tmux.conf](https://github.com/deepzz0/dotfiles/blob/master/.tmux.conf)。欢迎完善本文档。

![http://7xokm2.com1.z0.glb.clouddn.com/img/tmux.jpg](http://7xokm2.com1.z0.glb.clouddn.com/img/tmux.jpg)

#### 使用流程

1、确保你已安装 tmux，且版本在 2.1 以上。

2、确保你已经安装：`reattach-to-user-namespace`。

3、复制或软链本仓库文件`.tmux.conf` 到 `~/.tmux.conf`。

4、享受你的 tmux 之旅。



#### 效果与技巧

1、前缀修改 `Ctrl+a` 为 `Ctrl+b`。

2、重新加载 `.tmux.conf` 文件：`前缀+R`。

3、滑动鼠标进入 vi 模式。

4、显示 pane 编号：`前缀+q`。

5、选中 pane：`前缀+j/k/h/l`，按数字选中。

6、改变 pane 大小：`前缀+J/K/H/L`。

7、创建新窗口：`前缀+c`。

8、关闭窗口：`前缀+&`。

9、选择窗口：`前缀+窗口数字`。

10、新建 pane：`前缀+v/s`。

11、关闭 pane：`前缀+x`。

12、进入复制模式：`前缀+[`，按 `y` 复制到系统剪贴板，`Enter` 复制到 tmux 剪贴板。

13、粘贴剪贴板内容：`前缀+]`。