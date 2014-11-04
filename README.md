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


## Usage

This can lock file control in such as a batch program.

* check and create lock file
  your batch program call `lockfile -c`
* remove lock file
  your batch progra call `lockfile -r`


