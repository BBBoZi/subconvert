{% if request.target == "clash" or request.target == "clashr" %}

port: 7890
socks-port: 7891
redir-port: 7892
tproxy-port: 7893
mixed-port: 7894
allow-lan: true
mode: Rule
log-level: error
ipv6: false
external-controller: 127.0.0.1:9091
hosts:
  'mtalk.google.com': 108.177.125.188
dns:
  enable: true
  ipv6: false
  listen: 127.0.0.1:8853
  default-nameserver:
    - 223.5.5.5
    - 119.29.29.29
    - 114.114.114.114
  enhanced-mode: fake-ip
  fake-ip-range: 198.10.0.1/16
  fake-ip-filter:
    - "*.lan"
    - stun.*.*.*
    - stun.*.*
    - time.windows.com
    - time.nist.gov
    - time.apple.com
    - time.asia.apple.com
    - "*.ntp.org.cn"
    - "*.openwrt.pool.ntp.org"
    - time1.cloud.tencent.com
    - time.ustc.edu.cn
    - pool.ntp.org
    - ntp.ubuntu.com
    - ntp.aliyun.com
    - ntp1.aliyun.com
    - ntp2.aliyun.com
    - ntp3.aliyun.com
    - ntp4.aliyun.com
    - ntp5.aliyun.com
    - ntp6.aliyun.com
    - ntp7.aliyun.com
    - time1.aliyun.com
    - time2.aliyun.com
    - time3.aliyun.com
    - time4.aliyun.com
    - time5.aliyun.com
    - time6.aliyun.com
    - time7.aliyun.com
    - "*.time.edu.cn"
    - time1.apple.com
    - time2.apple.com
    - time3.apple.com
    - time4.apple.com
    - time5.apple.com
    - time6.apple.com
    - time7.apple.com
    - time1.google.com
    - time2.google.com
    - time3.google.com
    - time4.google.com
    - music.163.com
    - "*.music.163.com"
    - "*.126.net"
    - musicapi.taihe.com
    - music.taihe.com
    - songsearch.kugou.com
    - trackercdn.kugou.com
    - "*.kuwo.cn"
    - api-jooxtt.sanook.com
    - api.joox.com
    - joox.com
    - y.qq.com
    - "*.y.qq.com"
    - streamoc.music.tc.qq.com
    - mobileoc.music.tc.qq.com
    - isure.stream.qqmusic.qq.com
    - dl.stream.qqmusic.qq.com
    - aqqmusic.tc.qq.com
    - amobile.music.tc.qq.com
    - "*.xiami.com"
    - "*.music.migu.cn"
    - music.migu.cn
    - "*.msftconnecttest.com"
    - "*.msftncsi.com"
    - localhost.ptlogin2.qq.com
    - "*.*.*.srv.nintendo.net"
    - "*.*.stun.playstation.net"
    - xbox.*.*.microsoft.com
    - "*.ipv6.microsoft.com"
    - "*.*.xboxlive.com"
    - "*.superjason.vip"
  nameserver:
    - 61.139.2.69
    - 218.6.200.139
    - 223.5.5.5
    - 119.29.29.29
    - 114.114.114.114
  fallback:
    - tls://8.8.4.4
    - tls://1.1.1.1
    - tls://9.9.9.9
  fallback-filter:
    geoip: true
    geoip-code: CN
    ipcidr:
      - 0.0.0.0/8
      - 10.0.0.0/8
      - 100.64.0.0/10
      - 127.0.0.0/8
      - 169.254.0.0/16
      - 172.16.0.0/12
      - 192.0.0.0/24
      - 192.0.2.0/24
      - 192.88.99.0/24
      - 192.168.0.0/16
      - 198.18.0.0/15
      - 198.51.100.0/24
      - 203.0.113.0/24
      - 224.0.0.0/4
      - 240.0.0.0/4
      - 255.255.255.255/32
    domain:
      - +.google.com
      - +.facebook.com
      - +.twitter.com
      - +.youtube.com
      - +.xn--ngstr-lra8j.com
      - +.google.cn
      - +.googleapis.cn
      - +.googleapis.com
      - +.gvt1.com
      - +.github.com
      - +.githubusercontent.com
      - +.ipleak.net
      - +.2ip.io
      - +.browserleaks.com
      - +.browserleaks.org
      - +.whrq.net
      - +.whoer.net

{% endif %}
{% if request.target == "surge" %}

[General]
loglevel = notify
dns-server = system, 8.8.8.8, 1.1.1.1, 9.9.9.9
hijack-dns = 8.8.8.8:53, 8.8.4.4:53
tun-excluded-routes = 0.0.0.0/8, 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.168.0.0/16, 192.88.99.0/24, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 255.255.255.255/32
skip-proxy = localhost, *.local, captive.apple.com, guzzoni.apple.com, 0.0.0.0/8, 10.0.0.0/8, 17.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.168.0.0/16, 192.88.99.0/24, 198.18.0.0/15, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 240.0.0.0/4, 255.255.255.255/32

always-real-ip = *.lan, stun.*.*.*, stun.*.*, time.windows.com, time.nist.gov, time.apple.com, time.asia.apple.com, *.ntp.org.cn, *.openwrt.pool.ntp.org, time1.cloud.tencent.com, time.ustc.edu.cn, pool.ntp.org, ntp.ubuntu.com, ntp.aliyun.com, ntp1.aliyun.com, ntp2.aliyun.com, ntp3.aliyun.com, ntp4.aliyun.com, ntp5.aliyun.com, ntp6.aliyun.com, ntp7.aliyun.com, time1.aliyun.com, time2.aliyun.com, time3.aliyun.com, time4.aliyun.com, time5.aliyun.com, time6.aliyun.com, time7.aliyun.com, *.time.edu.cn, time1.apple.com, time2.apple.com, time3.apple.com, time4.apple.com, time5.apple.com, time6.apple.com, time7.apple.com, time1.google.com, time2.google.com, time3.google.com, time4.google.com, music.163.com, *.music.163.com, *.126.net, musicapi.taihe.com, music.taihe.com, songsearch.kugou.com, trackercdn.kugou.com, *.kuwo.cn, api-jooxtt.sanook.com, api.joox.com, joox.com, y.qq.com, *.y.qq.com, streamoc.music.tc.qq.com, mobileoc.music.tc.qq.com, isure.stream.qqmusic.qq.com, dl.stream.qqmusic.qq.com, aqqmusic.tc.qq.com, amobile.music.tc.qq.com, *.xiami.com, *.music.migu.cn, music.migu.cn, *.msftconnecttest.com, *.msftncsi.com, localhost.ptlogin2.qq.com, *.*.*.srv.nintendo.net, *.*.stun.playstation.net, xbox.*.*.microsoft.com, *.ipv6.microsoft.com, *.*.xboxlive.com, *.superjason.vip

geoip-maxmind-url = https://cdn.jsdelivr.net/gh/Loyalsoldier/geoip@release/Country.mmdb

#wifi-assist = true
#allow-wifi-access = true
#wifi-access-http-port = 6152
#wifi-access-socks5-port = 6153

http-listen = 0.0.0.0:6152
socks5-listen = 0.0.0.0:6153

# external-controller-access = 请指定密码/0.0.0.0:6170
replica = false
tls-provider = openssl
network-framework = false
exclude-simple-hostnames = true
ipv6 = false
test-timeout = 4
proxy-test-url = http://www.gstatic.com/generate_204
internet-test-url = http://www.baidu.com/
http-api-web-dashboard = true
use-default-policy-if-wifi-not-primary = false

[Replica]
hide-apple-request = true
hide-crashlytics-request = true
use-keyword-filter = false
hide-udp = false

# [SSID Setting]
# SSID:ZJS_5G suspend=true

# -----------------------------
# Surge 的几种策略配置规范，请参考 https://manual.nssurge.com/policy/proxy.html
# 不同的代理策略有*很多*可选参数，请参考上方连接的 Parameters 一段，根据需求自行添加参数。
# Surge 现已支持 UDP 转发功能，请参考: https://trello.com/c/ugOMxD3u/53-udp-%E8%BD%AC%E5%8F%91
# Surge 现已支持 TCP-Fast-Open 技术，请参考: https://trello.com/c/ij65BU6Q/48-tcp-fast-open-troubleshooting-guide
# Surge 现已支持 ss-libev 的全部加密方式和混淆，请参考: https://trello.com/c/BTr0vG1O/47-ss-libev-%E7%9A%84%E6%94%AF%E6%8C%81%E6%83%85%E5%86%B5
# -----------------------------

[Proxy]

[Proxy Group]

[Rule]

[URL Rewrite]
^https?://(www.)?(g|google).cn https://www.google.com 302

# [Script]
# script1 = type=event,event-name=network-changed,script-path=wifi-changed.js

{% endif %}
{% if request.target == "loon" %}

[General]
skip-proxy = 192.168.0.0/16,10.0.0.0/8,172.16.0.0/12,localhost,*.local,e.crashlynatics.com
bypass-tun = 10.0.0.0/8,100.64.0.0/10,127.0.0.0/8,169.254.0.0/16,172.16.0.0/12,192.0.0.0/24,192.0.2.0/24,192.88.99.0/24,192.168.0.0/16,198.18.0.0/15,198.51.100.0/24,203.0.113.0/24,224.0.0.0/4,255.255.255.255/32
dns-server = system,119.29.29.29,223.5.5.5
allow-udp-proxy = false
host = 127.0.0.1

[Proxy]

[Remote Proxy]

[Proxy Group]

[Rule]

[Remote Rule]

[URL Rewrite]
enable = true
^https?:\/\/(www.)?(g|google)\.cn https://www.google.com 302

[Remote Rewrite]
https://ghproxy.com/https://raw.githubusercontent.com/Loon0x00/LoonExampleConfig/master/Rewrite/AutoRewrite_Example.list,auto

[MITM]
hostname = *.example.com,*.sample.com
enable = true
skip-server-cert-verify = true
#ca-p12 =
#ca-passphrase =

{% endif %}
{% if request.target == "quan" %}

[SERVER]

[SOURCE]

[BACKUP-SERVER]

[SUSPEND-SSID]

[POLICY]

[DNS]
1.1.1.1

[REWRITE]

[URL-REJECTION]

[TCP]

[GLOBAL]

[HOST]

[STATE]
STATE,AUTO

[MITM]

{% endif %}
{% if request.target == "quanx" %}

[general]
excluded_routes=192.168.0.0/16, 172.16.0.0/12, 100.64.0.0/10, 10.0.0.0/8
geo_location_checker=http://ip-api.com/json/?lang=zh-CN, https://github.com/KOP-XIAO/QuantumultX/raw/master/Scripts/IP_API.js
network_check_url=http://www.baidu.com/
server_check_url=http://www.gstatic.com/generate_204

[dns]
server=119.29.29.29
server=223.5.5.5
server=1.0.0.1
server=8.8.8.8

[policy]
static=♻️ 自动选择, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Auto.png
static=🔰 节点选择, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Proxy.png
static=🌍 国外媒体, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/GlobalMedia.png
static=🌏 国内媒体, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/DomesticMedia.png
static=Ⓜ️ 微软服务, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Microsoft.png
static=📲 电报信息, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Telegram.png
static=🍎 苹果服务, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Apple.png
static=🎯 全球直连, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Direct.png
static=🛑 全球拦截, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Advertising.png
static=🐟 漏网之鱼, direct, img-url=https://ghproxy.com/https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Final.png

[server_remote]

[filter_remote]

[rewrite_remote]

[server_local]

[filter_local]

[rewrite_local]

[mitm]

{% endif %}
{% if request.target == "mellow" %}

[Endpoint]
DIRECT, builtin, freedom, domainStrategy=UseIP
REJECT, builtin, blackhole
Dns-Out, builtin, dns

[Routing]
domainStrategy = IPIfNonMatch

[Dns]
hijack = Dns-Out
clientIp = 114.114.114.114

[DnsServer]
localhost
223.5.5.5
8.8.8.8, 53, Remote
8.8.4.4

[DnsRule]
DOMAIN-KEYWORD, geosite:geolocation-!cn, Remote
DOMAIN-SUFFIX, google.com, Remote

[DnsHost]
doubleclick.net = 127.0.0.1

[Log]
loglevel = warning

{% endif %}
{% if request.target == "surfboard" %}

[General]
loglevel = notify
interface = 127.0.0.1
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, localhost, *.local
ipv6 = false
dns-server = system, 223.5.5.5
exclude-simple-hostnames = true
enhanced-mode-by-rule = true
{% endif %}
{% if request.target == "sssub" %}
{
  "route": "bypass-lan-china",
  "remote_dns": "dns.google",
  "ipv6": false,
  "metered": false,
  "proxy_apps": {
    "enabled": false,
    "bypass": true,
    "android_list": [
      "com.eg.android.AlipayGphone",
      "com.wudaokou.hippo",
      "com.zhihu.android"
    ]
  },
  "udpdns": false
}

{% endif %}