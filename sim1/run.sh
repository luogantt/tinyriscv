#!/bin/bash 

#旧的指令兼容性测试 


echo "旧的指令兼容性测试"
python ./sim_new_nowave.py ../tests/example/simple/simple.bin inst.data



#一次性对所有指令进行测试
echo "一次性对所有指令进行测试"
python ./test_all_isa.py
echo "C代码测试"
python ./sim_new_nowave.py ../tests/isa/generated/rv32ui-p-add.bin inst.data

