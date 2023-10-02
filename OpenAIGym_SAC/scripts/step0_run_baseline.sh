for seed in 41 42 43 44 45; do
    for env in gym_walker2d gym_ant gym_hopper gym_halfcheetah; do
        python examples/sac.py --env $env --seed $seed --num_layer 2 --save_freq 100
        python examples/sunrise.py --env $env --seed $seed --num_layer 2 --num_ensemble 5 --ber_mean 0.5 --temperature 20.0 --inference_type 0.9 
    done
done
