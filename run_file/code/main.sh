export CUDA_VISIBLE_DEVICES=0

for ((i=0;i<5;i++));
do

python train.py \
--model_type bert \
--do_train \
--do_eval \
--do_eval_during_train \
--model_name_or_path ../bert/ \
--data_dir ../data/data_StratifiedKFold_42/data_origin_$i/ \
--output_dir ../checkpoints/$i \
--max_seq_length 150 \
--learning_rate 2e-5 \
--hidden_dropout_prob 0.1 \
--adam_epsilon 1e-8 \
--per_gpu_train_batch_size 32 \
--gradient_accumulation_steps 1 \
--num_train_epochs 4 \
--weight_decay 0
done


python predict.py \
--model_type bert \
--vote_model_paths ../checkpoints/bertt/ \
--predict_file ../data/test.csv \
--predict_result_file ../prediction_result/resultt.csv

