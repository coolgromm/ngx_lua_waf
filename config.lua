RulePath = "/etc/nginx/waf/wafconf/"
attacklog = "on"
logdir = "/var/log/nginx/"
UrlDeny="on"
Redirect="on"
CookieMatch="on"
postMatch="on" 
whiteModule="on" 
black_fileExt={"php","jsp","asp","aspx","py","sh"}
ipWhitelist={"127.0.0.1"}
ipBlocklist={"1.0.0.1"}
CCDeny="on"
CCrate="6000/60"
html=[[
{"code":403,"message":"Web Application Firewall","data":[]}
]]
