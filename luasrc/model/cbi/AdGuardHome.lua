local fs=require"nixio.fs"
mp = Map("AdGuardHome", translate("AdGuard Home"))
mp.description = translate("免费和开源，功能强大的全网络广告和跟踪程序拦截DNS服务器")

mp:section(SimpleSection).template  = "AdGuardHome/AdGuardHome_status"

s = mp:section(TypedSection, "AdGuardHome")
s.anonymous=true
s.addremove=false

enabled = s:option(Flag, "enabled", translate("启用广告屏蔽"))
enabled.default = 0
enabled.rmempty = false

enabled =s:option(Value,"port",translate("管理端口"))
enabled.placeholder=3000
enabled.default=3000
enabled.datatype="port"
enabled.rmempty=false
enabled.description = translate("<input type=\"button\" value=\" "..translate("AdGuardHome管理界面").." \" onclick=\"window.open('http://'+window.location.hostname+':"..port.."/')\"/>注：管理端口无法真正设置AdGuardHome管理端口，只是提供一个网页快捷方式")

local apply = luci.http.formvalue("cbi.apply")
 if apply then
     io.popen("/etc/init.d/AdGuardHome reload")
end

return mp
