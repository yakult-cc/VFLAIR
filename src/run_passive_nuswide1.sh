# #!/bin/bash
# #SBATCH --job-name no0_nsds            # 任务名叫 example
# #SBATCH --gres gpu:a100:1                   # 每个子任务都用一张 A100 GPU
# #SBATCH --time 3-1:00:00                    # 子任务 1 天 1 小时就能跑完


# echo 'No Defense agg Begin' #SBATCH --qos high

# python main_pipeline.py --configs main_passive/mnist_test_attack_nodefense --gpu 6

# echo 'No Defense End'


#!/bin/bash
#SBATCH --job-name mid0_nsds # 任务名叫 example
#SBATCH --gres gpu:a100:1                   # 每个子任务都用一张 A100 GPU
#SBATCH --time 3-1:00:00                    # 子任务 1 天 1 小时就能跑完
#SBATCH --qos high
echo 'MID agg passive begin'

python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 0.0/"lambda": 1e-8/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 1e-8/"lambda": 1e-6/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 1e-6/"lambda": 0.0001/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 0.0001/"lambda": 0.01/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 0.01/"lambda": 0.1/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 0.1/"lambda": 1.0/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 1.0/"lambda": 100/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 100/"lambda": 10000/g' ./configs/main_passive/mnist_test_attack_mid.json
python main_pipeline.py --configs main_passive/mnist_test_attack_mid --gpu 6

sed -i 's/"lambda": 10000/"lambda": 0.0/g' ./configs/main_passive/mnist_test_attack_mid.json

echo 'MIDall end'



