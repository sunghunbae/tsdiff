#!/usr/bin/bash

CKPTS="logs/trained_ckpt/ens0/checkpoints/best_ckpt.pt logs/trained_ckpt/ens1/checkpoints/best_ckpt.pt logs/trained_ckpt/ens2/checkpoints/best_ckpt.pt logs/trained_ckpt/ens3/checkpoints/best_ckpt.pt logs/trained_ckpt/ens4/checkpoints/best_ckpt.pt logs/trained_ckpt/ens5/checkpoints/best_ckpt.pt logs/trained_ckpt/ens6/checkpoints/best_ckpt.pt logs/trained_ckpt/ens7/checkpoints/best_ckpt.pt"

python sampling.py $CKPTS \
    --sampling_type ld \
    --save_dir fmc \
    --test_set test_input.txt
