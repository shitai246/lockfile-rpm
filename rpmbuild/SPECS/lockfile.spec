Name: lockfile
Version: 1.0
Release: 0
Group: Utilities
Source: lockfile-1.0.tar.gz
Summary: lock file controller
Packager: Taisuke Shiratori
License: MIT License
BuildRoot: /root/rpm/ROOT

%description
lockfile

%prep
rm -rf $RPM_BUILD_ROOT/*

%setup

%install
mkdir -p $RPM_BUILD_ROOT/usr/local/{bin,man/man1}
cp lockfile $RPM_BUILD_ROOT/usr/local/bin
cp lockfile.1 $RPM_BUILD_ROOT/usr/local/man/man1

%clean
rm -rf $RPM_BUILD_ROOT

%files
%attr(-, root, root) /usr/local/bin/lockfile
%attr(-, root, root) /usr/local/man/man1/lockfile.1
