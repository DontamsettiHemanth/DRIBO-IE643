train_steps=$((890000)) 
CUDA_VISIBLE_DEVICES=0 python train.py \
    --domain_name cartpole \
    --task_name swingup \
    --encoder_type rssm --work_dir ./log \
    --action_repeat 8 --num_eval_episodes 8 --kl_balance \
    --pre_transform_image_size 100 --image_size 84 --noisy_bg \
    --agent DRIBO_sac --frame_stack 1 --encoder_feature_dim 1024 --save_model  --save_video --load_model --load_model_dir './log/cp_prev_4oct/model'\
    --seed 0 --critic_lr 1e-5 --actor_lr 1e-5 --eval_freq 10000 --batch_size 8 --num_train_steps $train_steps 

