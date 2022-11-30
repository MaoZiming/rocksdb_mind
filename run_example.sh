# DB_PATH=~/mycontainer/rootfs/nfs/mind_ziming/rocksdb
# WORKLOAD_PATH=~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads
#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$(pwd) && export LD_LIBRARY_PATH
#sudo umount /mnt/yanpeng/db
#sudo mount -t tmpfs -o size=8192m tmpfs /mnt/yanpeng/db
echo 0 | sudo tee /proc/sys/kernel/randomize_va_space

cd ~/rocksdb/examples
make simple_example && cp simple_example test_mltthrd
# ./test_mltthrd $1 $2 $WORKLOAD_PATH/load_workload$3.dat $WORKLOAD_PATH/run_workload$3.oplist $DB_PATH

./test_mltthrd 1 4 ~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads/load_workloada.dat ~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads/run_workloada.oplist ./
# cp ./test_mltthrd ~/mycontainer/rootfs/nfs/mind_ziming/rocksdb/test_mltthrd
cp ./test_mltthrd ~/mycontainer/rootfs/

# ~/mycontainer/rootfs/nfs/mind_ziming/rocksdb/test_mltthrd 1 4 ~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads/load_workloada.dat ~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads/run_workloada.oplist ./
~/mycontainer/rootfs/test_mltthrd 1 4 ~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads/load_workloada.dat ~/mycontainer/rootfs/nfs/mind_ziming/ycsb_workloads/run_workloada.oplist ./


/nfs/mind_ziming/rocksdb/test_mltthrd 1 4 /nfs/mind_ziming/ycsb_workloads/load_workloada.dat /nfs/mind_ziming/ycsb_workloads/run_workloada.oplist /nfs/mind_ziming/rocksdb/

# ./simple_example 1 1 ../ycsb_workloads/load_workloada.dat ../ycsb_workloads/run_workloada.oplist ./
# udo cp ./simple_example ~/mycontainer/rootfs/nfs/mind_ziming/rocksdb