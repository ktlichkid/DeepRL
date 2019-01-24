import matplotlib.pyplot as plt

steps = []
rewards = []

with open("01_evaluation", 'r') as f:
    for line in f:
        s,r = line.split(' ')
        step = int(s)
        reward = float(r)
        steps.append(step)
        rewards.append(reward)

plt.plot(steps, rewards, label="hopper")
plt.show()
