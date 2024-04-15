# If the first argument is "--enable-dpdk-interrupt"
if [ "$1" == "--enable-dpdk-interrupt" ]; then
    # Enable DPDK interrupt mode
    echo "Enabling DPDK interrupt mode"
    export CFLAGS="-DENABLE_DPDK_INTERRUPT"
    export CXXFLAGS="-DENABLE_DPDK_INTERRUPT"
fi

./configure --enable-multithread --disable-linuxmodule --enable-intel-cpu --enable-user-multithread --verbose CFLAGS="$CFLAGS -g -O3 " CXXFLAGS="$CXXFLAGS -g -std=gnu++11 -O3" --disable-dynamic-linking --enable-poll --enable-bound-port-transfer --enable-dpdk --enable-dpdk-interrupt --enable-batch --with-netmap=no --enable-zerocopy --disable-dpdk-pool --disable-dpdk-packet --enable-research
