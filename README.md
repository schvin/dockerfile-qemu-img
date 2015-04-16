# dockerfile-qemu-img

#### Example usage to convert a qcow image to vmdk

```
curl -O http://buildlogs.centos.org/rolling/7/isos/x86_64/CentOS-7-x86_64-AtomicHost.qcow2.xz
unxz CentOS-7-x86_64-AtomicHost.qcow2.xz
docker run -it --rm=true -v `pwd`:/tmp schvin/qemu-img convert -p -O vmdk CentOS-7-x86_64-AtomicHost.qcow2 CentOS-7-x86_64-AtomicHost.vmdk
```
