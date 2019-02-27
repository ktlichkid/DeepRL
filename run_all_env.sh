#!/bin/bash

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game Ant --evalout Ant/$1_evaluation --trainout Ant/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game Walker2d --evalout Walker2d/$1_evaluation --trainout Walker2d/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game Hopper --evalout Hopper/$1_evaluation --trainout Hopper/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game HalfCheetah --evalout HalfCheetah/$1_evaluation --trainout HalfCheetah/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game Reacher --evalout Reacher/$1_evaluation --trainout Reacher/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game AtlasForwardWalk --evalout AtlasForwardWalk/$1_evaluation --trainout AtlasForwardWalk/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game Pong --evalout Pong/$1_evaluation --trainout Pong/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game InvertedPendulum --evalout InvertedPendulum/$1_evaluation --trainout InvertedPendulum/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game HumanoidFlagrun --evalout HumanoidFlagrun/$1_evaluation --trainout HumanoidFlagrun/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game InvertedDoublePendulum --evalout InvertedDoublePendulum/$1_evaluation --trainout InvertedDoublePendulum/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game Humanoid --evalout Humanoid/$1_evaluation --trainout Humanoid/$1_train &

env CUDA_VISIBLE_DEVICES=$2 python3 plan-ddpg.py --game HumanoidFlagrunHarder --evalout HumanoidFlagrunHarder/$1_evaluation --trainout HumanoidFlagrunHarder/$1_train &
