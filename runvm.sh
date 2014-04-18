
diskfile=$1

qemu-kvm -enable-kvm  -m 512 -drive file=$diskfile -vnc :1 -monitor stdio -S