
sname=$1

as $sname.s -o $sname.o
ld $sname.o -T ldscript -o $sname.b
dd if=$sname.b of=disks/$sname.disk

rm $sname.o
rm $sname.b

qemu-kvm -enable-kvm  -m 512 -drive file=disks/$sname.disk -vnc :1 -monitor stdio -S