#!/usr/bin/env sh

GOOGLE_LOG_DIR=models/seg_refine/fcn_res_101/log \
    /usr/local/openmpi/bin/mpirun -np 8 \
    build/install/bin/caffe train \
    --solver=models/seg_refine/fcn_res_101/fcn_res_101_voc_solver.prototxt \
    --weights=models/seg_refine/fcn_res_101/snapshot/fcn_res_101_iter_60000.caffemodel