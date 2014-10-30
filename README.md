# lockfile-rpm

## Setup

create /etc/yum.repos.d/lockfile-rpm.repo
```
[lockfile-rpm]
name=lockfile-CentOS-$releasever
baseurl=https://github.com/shitai246/lockfile-rpm/raw/master/centos/6/os/x86_64/
enabled=1
gpgcheck=0
```

## Install
`yum install lockfile`

