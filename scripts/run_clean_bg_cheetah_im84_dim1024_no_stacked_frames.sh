train_steps=$((890000/8)) 
CUDA_VISIBLE_DEVICES=0 python train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type rssm --work_dir ./clean_log \
    --action_repeat 4 --num_eval_episodes 8 \
    --pre_transform_image_size 100 --image_size 84 --kl_balance \
    --agent DRIBO_sac --frame_stack 1 --encoder_feature_dim 1024 --save_model  \
    --seed 0 --critic_lr 1e-5 --actor_lr 1e-5 --eval_freq 10000 --batch_size 8 --num_train_steps $train_steps &&

CUDA_VISIBLE_DEVICES=0 python train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type rssm --work_dir ./clean_log \
    --action_repeat 4 --num_eval_episodes 8 \
    --pre_transform_image_size 100 --image_size 84 --kl_balance \
    --agent DRIBO_sac --frame_stack 1 --encoder_feature_dim 1024 --save_model  \
    --seed 1 --critic_lr 1e-5 --actor_lr 1e-5 --eval_freq 10000 --batch_size 8 --num_train_steps $train_steps &&

CUDA_VISIBLE_DEVICES=0 python train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type rssm --work_dir ./clean_log \
    --action_repeat 4 --num_eval_episodes 8 \
    --pre_transform_image_size 100 --image_size 84 --kl_balance \
    --agent DRIBO_sac --frame_stack 1 --encoder_feature_dim 1024 --save_model  \
    --seed 2 --critic_lr 1e-5 --actor_lr 1e-5 --eval_freq 10000 --batch_size 8 --num_train_steps $train_steps &&

CUDA_VISIBLE_DEVICES=0 python train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type rssm --work_dir ./clean_log \
    --action_repeat 4 --num_eval_episodes 8 \
    --pre_transform_image_size 100 --image_size 84 --kl_balance \
    --agent DRIBO_sac --frame_stack 1 --encoder_feature_dim 1024 --save_model  \
    --seed 3 --critic_lr 1e-5 --actor_lr 1e-5 --eval_freq 10000 --batch_size 8 --num_train_steps $train_steps &&

CUDA_VISIBLE_DEVICES=0 python train.py \
    --domain_name cheetah \
    --task_name run \
    --encoder_type rssm --work_dir ./clean_log \
    --action_repeat 4 --num_eval_episodes 8 \
    --pre_transform_image_size 100 --image_size 84 --kl_balance \
    --agent DRIBO_sac --frame_stack 1 --encoder_feature_dim 1024 --save_model  \
    --seed 4 --critic_lr 1e-5 --actor_lr 1e-5 --eval_freq 10000 --batch_size 8 --num_train_steps $train_steps
