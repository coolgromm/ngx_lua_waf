fork https://github.com/loveshell/ngx_lua_waf

解决原版 https 报错问题

http2.0 环境下调用 ngx.req.socket() 会抛异常，为了不影响正常使用，将这个情况放过。 

官方是没提供解决方案，参考 openresty/lua-nginx-module#1186

原版报错如下：  
```
[error] 23708#0: *1489 lua entry thread aborted: runtime error: /etc/nginx/waf/waf.lua:21: http v2 not supported yet
stack traceback:
coroutine 0:
	[C]: in function 'socket'
	/etc/nginx/waf/waf.lua:21: in function </etc/nginx/waf/waf.lua:1>, client: 113.116.179.158, server: api.lingtianzhongmei.com, request:
```
