- 说明
> 大部分的文件是从深度官方源下载的，唯一一个有改动的是libwine包，这个包被我二次修改过，去掉了libodbc1:i386的依赖并手动把libodbc1:i386的库文件直接加到了libwine包里面.
> 目录组织结构参考了其他类似的仓库（抱歉，真不记得当初引用的是哪个了）

- 安装
1. 开启32bit支持 
``` bash
sudo dpkg --add-architecture i386
sudo apt update
```
2. 安装libs里的包

3. 安装1.×.deb

4. 安装deepin-libwin-with-libodbc1.deb
 
5. 安装剩余的 *.deb

6. 安装企业微信/QQ/微信等应用，参考 http://packages.deepin.com/deepin/pool/non-free/d/

附：
企业微信在Ubuntu 16.04字体问题，下载wxwork-font.reg
```bash
env WINEPREFIX=$HOME/.deepinwine/Deepin-WXWork/ deepin-wine regedit wxwork-font.reg
```

发现有部分机器在运行企业微信或QQ时异常崩溃的问题，查看日志发现是因为“create_netconn_socket: Assertion 'server->addr_len' failed.”引起的，这种情况下，使用patch/wininet.dll.so替换原始的文件(/usr/lib/i386-linux-gnu/deepin-wine/)
