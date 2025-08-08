import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 4 * np.pi, 200)
y = np.sin(x)

fig, ax = plt.subplots()
ax.plot(x, y)
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('sin(x)')
plt.show()
