gfwiptables
===========

A Script Against GFW DNS Pollution.

获取方式：https://raw.githubusercontent.com/azzvx/gfwiptables/master/gfwiptables

脚本内容来自网络分享。

本脚本针对GFW的污染IP进行过滤。

首先你要有一个Linux系统的路由器或者PC。

如果你的是一个路由器，那么确保路由器能加载脚本（初始化脚本，防火墙脚本啥的）。

本脚本可以完美解决GFW的DNS污染问题。

本脚本不能解决IP封锁问题。

设置完后nslookup测试请勿使用国内DNS(自带污染,结果会被过滤)，应使用国外DNS。

nslookup dropbox.com 114.114.114.114 将会无结果

nslookup dropbox.com 8.8.8.8 将会返回正确结果

目前使用的IP是goagent里的blacklist

发现新的污染IP请及时发邮件通知 arbiterazzvx@gmail.com
