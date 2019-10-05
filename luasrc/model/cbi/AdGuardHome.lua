local fs=require"nixio.fs"
mp = Map("AdGuardHome", translate("AdGuard Home"))
mp.description = translate("免费和开源，功能强大的全网络广告和跟踪程序阻止DNS服务器")

mp:section(SimpleSection).template  = "AdGuardHome/AdGuardHome_status"

s = mp:section(TypedSection, "AdGuardHome")
s.anonymous=true
s.addremove=false

enabled = s:option(Flag, "enabled", translate("启用广告屏蔽"))
enabled.default = 0
enabled.rmempty = false
enabled.description = translate("启用后，AdGuardHome默认管理IP为：<font color=\"blue\"><strong>路由ip:3000</strong></font> （例：192.168.123.1:3000）")

local apply = luci.http.formvalue("cbi.apply")
 if apply then
     io.popen("/etc/init.d/AdGuardHome reload")
end

return mp
