#!/bin/sh

model="sgnet03"
gpu_id=3
cpu_or_gpu="GPU"
net_name="sgnet03"
output_dir="cache"
start_iter=40000
end_iter=42000
step_iter=5000

gt_file=./val_gt_file_list.txt
show_result=1
show_time=0

# export PIC_PRINT=1
# export SHOW_TIME=1

cmd="select_model_pyramid_test ./test_multiscale-sgnet-03.prototxt snapshot/${model}/${net_name} ${output_dir} ${cpu_or_gpu} ${gpu_id} ${start_iter} ${end_iter} ${step_iter} ${gt_file} ${show_result} ${show_time}"
echo $cmd

 ${cmd} $1 2>&1 | tee ${tee_arg} log/${model}_select_model.log
