#!/usr/bin/env sh

GOOGLE_LOG_DIR=models/seg_refine/fcn_res_101/log \
    /usr/local/openmpi/bin/mpirun -np 2 \
    build/install/bin/caffe train \
    --solver=models/seg_refine/fcn_res_101/fcn_res_101_solver.prototxt \
    --weights=models/pretrained/initmodel/resnet101.caffemodel