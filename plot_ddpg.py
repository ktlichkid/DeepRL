import matplotlib
import matplotlib.pyplot as plt
import numpy as np
import json


with open("data.json") as f:
    data = json.load(f)

global_steps = data["global_steps"]
rewards = data["rewards"]

plt.plot(global_steps, rewards, label="hopper")
plt.show()
