
def get_env(variant):
    env_name, seed = variant['env'], variant['seed']

    if env_name in ['gym_walker2d', 'gym_hopper',
                    'gym_cheetah', 'gym_ant']:
        from mbbl.env.gym_env.walker import env
        env = env(env_name=env_name, rand_seed=seed, misc_info={'reset_type': 'gym'})
    else:
        raise Exception
    
    return env
