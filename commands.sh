#! /bin/sh

docker build \
       --build-arg http_proxy=${http_proxy} \
       -t idr \
       .


docker_run_user --gpus all idr


python3 training/exp_runner.py --conf ./confs/dtu_fixed_cameras.conf --scan_id 118
