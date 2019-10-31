# luci-app-adguardhome
简单的adguardhome的openwrt启动和停止界面，需配合openwrt-AdGuardHome，请点击[此处](https://github.com/happyzhang1995/openwrt-adguardhome).

- 更新内容:
  - 新增管理web快捷方式.
  - 修正依赖.
  - 修正页面显示.

---
编译完不启动的把/root/etc/init.d/adguardhome启动文件权限改为755，或者直接把编译源文件的/root/etc/init.d/adguardhome启动文件权限改为755，这样每次编译完就不用改了
