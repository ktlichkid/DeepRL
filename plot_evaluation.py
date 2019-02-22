import matplotlib.pyplot as plt
import numpy as np
import pandas as pd

filenames = [
    "Hopper/01_evaluation",
    "Hopper/02_evaluation",
    "Hopper/03_evaluation",
    "Hopper/04_evaluation",
    "Hopper/06_evaluation",
]

figures = np.zeros([5, 3, 100])
for i in range(5):
    figures[i] = np.array(pd.read_csv(filepath_or_buffer=filenames[i], sep=" ")).T

avg = np.mean(figures, axis=0)[1]
maximum = np.mean(np.max(figures, axis=2).T[1])
print(maximum)
index = (np.argmax(figures, axis=2).T[1])
avg_error = 0
for i in range(5):
    avg_error += figures[i][2][index[i]]
avg_error = avg_error / 5
print(avg_error)

plt.plot(figures[0][0], avg, label="hopper")
plt.legend()
plt.xlabel("Steps")
plt.ylabel("Average Reward")
plt.savefig("Hopper.png")
