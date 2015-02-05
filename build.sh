#!/bin/bash
THISDIR=`echo $(cd $(dirname $0);pwd)`
echo ${THISDIR}

ln -s ${THISDIR}/rpmbuild ~/rpmbuild

cd ${THISDIR}/rpmbuild/SOURCES
tar zcvf lockfile-1.1.tar.gz lockfile-1.1

rpmbuild -ba ${THISDIR}/rpmbuild/SPECS/lockfile.spec
unlink ~/rpmbuild


rm -rf ${THISDIR}/centos
mkdir -p ${THISDIR}/centos/6/os/{x86_64,SPRMS}

cp ${THISDIR}/rpmbuild/RPMS/x86_64/lockfile-1.1-0.x86_64.rpm ${THISDIR}/centos/6/os/x86_64/lockfile-1.1-0.x86_64.rpm
cp ${THISDIR}/rpmbuild/SRPMS/lockfile-1.1-0.src.rpm ${THISDIR}/centos/6/os/SPRMS/lockfile-1.1-0.src.rpm

createrepo ${THISDIR}/centos/6/os/SPRMS/
createrepo ${THISDIR}/centos/6/os/x86_64/

