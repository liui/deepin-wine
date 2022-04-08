### Ubuntu 22.04 安装
- 开启32bit支持 
    ``` bash
    sudo dpkg --add-architecture i386
    sudo apt update
    ```

- 依赖以及deb安装

    ``` bash
    sudo apt install fonts-wqy-microhei fonts-wqy-zenhei xfonts-wqy libgif7:i386 libgstreamer1.0-0:i386 libpng16-16:i386 libgnutls30:i386 libgstreamer-plugins-base1.0-0:i386 libreadline8:i386 libjpeg-turbo8:i386 ocl-icd-libopencl1:i386 libldap-2.5-0:i386 libmpg123-0:i386 libopenal1:i386 libpcap0.8:i386 libpulse0:i386 libudev1:i386 libusb-1.0-0:i386 libxrandr2:i386 libxinerama1:i386 libxcomposite1:i386 libglu1-mesa:i386 libosmesa6:i386 libxslt1.1:i386 libdbus-1-3:i386 libncurses5:i386 libv4l-0:i386 libcups2:i386 libgsm1:i386 libtiff5:i386 libltdl7:i386  libgssapi3-heimdal:i386 libc6-dev:i386 
    sudo apt install libodbc1:i386
    ```

- libs安装
    ```bash
    cd libs && sudo dpkg -i udis86_1.72-2_i386.deb libjpeg62-turbo_1.5.1-2_i386.deb libldap-2.4-2_2.4.45+dfsg-1ubuntu1.10_i386.deb python-dbus-for-22.04.deb python-gobject_3.26.1-2ubuntu1_all.deb  && sudo apt --fix-broken install
    ```

- deepin-wine安装
    ```bash
    sudo dpkg -i 1-deepin-fonts-wine_2.18-21_all.deb
    sudo dpkg -i 2.1.deepin-libwine-without-libodbc1.deb && sudo apt --fix-broken install
    sudo dpkg -i 2.2-deepin-libwine-dev_2.18-21_i386.deb && sudo apt --fix-broken install
    sudo dpkg -i 2.2-deepin-libwine-dbg_2.18-21_i386.deb
    sudo dpkg -i 3.1-deepin-wine32_2.18-21_i386.deb && sudo apt --fix-broken install
    sudo dpkg -i 3.2-deepin-wine32-preloader_2.18-21_i386.deb
    sudo dpkg -i 4-deepin-wine_2.18-21_all.deb
    sudo dpkg -i 5-deepin-wine-binfmt_2.18-21_all.deb && sudo apt --fix-broken install
    sudo dpkg -i 6.1-deepin-wine-plugin_1.0deepin2_i386.deb && sudo apt --fix-broken install
    sudo dpkg -i 6.2-deepin-wine-plugin-virtual_1.0deepin3_all_ubuntu_22.04.deb --fix-broken install
    sudo dpkg -i 7-deepin-wine-helper_1.2deepin8_i386.deb --fix-broken install
    sudo dpkg -i 8-deepin-wine-uninstaller_0.1deepin2_i386.deb --fix-broken install
    ```
- 安装企业微信/QQ/微信等应用，参考 http://packages.deepin.com/deepin/pool/non-free/d/

    有部分机器在运行企业微信或QQ时异常崩溃的问题，查看日志发现是因为“create_netconn_socket: Assertion 'server->addr_len' failed.”引起的，这种情况下，使用patch/wininet.dll.so替换原始的文件(/usr/lib/i386-linux-gnu/deepin-wine/)

### 关于微信

下载安装[微信](http://packages.deepin.com/deepin/pool/non-free/d/deepin.com.wechat/deepin.com.wechat_2.6.8.65deepin0_i386.deb), 如果启动崩溃，并且控制台报错（通过shell调用run.sh启动）` libGL error: No matching fbConfigs or visuals found; libGL error: failed to load driver: swrast;`时，可考虑安装libnvidia-gl-XXX:i386，其中XXX是当前机器nvidia驱动版本，可用`ubuntu-drivers devices`命令查看。
