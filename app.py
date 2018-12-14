import gym

print "HEYYYYYYYYYYYYY"
env = gym.make("Taxi-v2").env
env.reset()
env.render()