#!/bin/bash
#SBATCH --job-name ldp0_main            # 任务名叫 example
#SBATCH --gres gpu:a100:1                   # 每个子任务都用一张 A100 GPU
#SBATCH --time 3-1:00:00                    # 子任务 1 天 1 小时就能跑完


# # Begin with LaplaceDP 0.0001  #SBATCH --qos high
# echo 'LDP Begin'
# # DP 0.0001
# # python main_pipeline.py --configs main_split/mnist_test_attack_ldp --gpu 1

# # DP 0.001
# sed -i 's/"dp_strength": 0.0001/"dp_strength": 0.001/g' ./configs/main_split/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main_split/mnist_test_attack_ldp --gpu 1

# # DP 0.01
# sed -i 's/"dp_strength": 0.001/"dp_strength": 0.01/g' ./configs/main_split/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main_split/mnist_test_attack_ldp --gpu 1

# # DP 0.1
# sed -i 's/"dp_strength": 0.01/"dp_strength": 0.1/g' ./configs/main_split/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main_split/mnist_test_attack_ldp --gpu 1


# sed -i 's/"dp_strength": 0.1/"dp_strength": 0.0001/g' ./configs/main_split/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main_split/mnist_test_attack_ldp --gpu 1




# # Begin with LaplaceDP 0.0001  #SBATCH --qos high
# echo 'LDP Begin'
# # DP 0.0001
# python main_pipeline.py --configs main/mnist_test_attack_ldp --gpu 1

# # DP 0.001
# sed -i 's/"dp_strength": 0.0001/"dp_strength": 0.001/g' ./configs/main/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main/mnist_test_attack_ldp --gpu 1

# # DP 0.01
# sed -i 's/"dp_strength": 0.001/"dp_strength": 0.01/g' ./configs/main/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main/mnist_test_attack_ldp --gpu 1

# # DP 0.1
# sed -i 's/"dp_strength": 0.01/"dp_strength": 0.1/g' ./configs/main/mnist_test_attack_ldp.json
# python main_pipeline.py --configs main/mnist_test_attack_ldp --gpu 1


# sed -i 's/"dp_strength": 0.1/"dp_strength": 0.0001/g' ./configs/main/mnist_test_attack_ldp.json

#!/bin/bash
#SBATCH --job-name ldp0_nsds            # 任务名叫 example
#SBATCH --gres gpu:a100:1                   # 每个子任务都用一张 A100 GPU
#SBATCH --time 3-1:00:00                    # 子任务 1 天 1 小时就能跑完
#SBATCH --qos high

# Begin with LaplaceDP 0.0001 
echo 'LDP agg nsds Begin'
# DP 0.0001
python main_pipeline.py --configs nsds/mnist_test_attack_ldp --gpu 6

# DP 0.001
sed -i 's/"dp_strength": 0.0001/"dp_strength": 0.001/g' ./configs/nsds/mnist_test_attack_ldp.json
python main_pipeline.py --configs nsds/mnist_test_attack_ldp --gpu 6

# DP 0.01
sed -i 's/"dp_strength": 0.001/"dp_strength": 0.01/g' ./configs/nsds/mnist_test_attack_ldp.json
python main_pipeline.py --configs nsds/mnist_test_attack_ldp --gpu 6

# DP 0.1
sed -i 's/"dp_strength": 0.01/"dp_strength": 0.1/g' ./configs/nsds/mnist_test_attack_ldp.json
python main_pipeline.py --configs nsds/mnist_test_attack_ldp --gpu 6


sed -i 's/"dp_strength": 0.1/"dp_strength": 0.0001/g' ./configs/nsds/mnist_test_attack_ldp.json


