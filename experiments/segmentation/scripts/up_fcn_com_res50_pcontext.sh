# !/usr/bin/env bash
# train
python -m experiments.segmentation.train --dataset pcontext \
    --model up_fcn_com --aux --base-size 520 --crop-size 520 \
    --backbone resnet50 --checkname up_fcn_com_res50_pcontext

#test [single-scale]
python -m experiments.segmentation.test_whole --dataset pcontext \
    --model up_fcn_com --aux --base-size 520 --crop-size 520 \
    --backbone resnet50 --resume experiments/segmentation/runs/pcontext/up_fcn_com/up_fcn_com_res50_pcontext/model_best.pth.tar --split val --mode testval

#test [multi-scale]
python -m experiments.segmentation.test_whole --dataset pcontext \
    --model up_fcn_com --aux --base-size 520 --crop-size 520 \
    --backbone resnet50 --resume experiments/segmentation/runs/pcontext/up_fcn_com/up_fcn_com_res50_pcontext/model_best.pth.tar --split val --mode testval --ms