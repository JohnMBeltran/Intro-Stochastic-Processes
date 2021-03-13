import matplotlib.pyplot as plt
import matplotlib.patches as patches

plt.axes().set_xlim(-.5,0.5)
plt.axes().set_ylim(-0.9,0.7)
plt.axes().set_aspect(1)

style = "Simple, tail_width=0.5, head_width=4, head_length=8"
kw = dict(arrowstyle=style, color="k")

a1 = patches.FancyArrowPatch((-0.4, -0.6), (0, 0.6), **kw)
a2 = patches.FancyArrowPatch((0, 0.6), (0.4, -0.6), **kw)
a3 = patches.FancyArrowPatch((-0.4, -0.6), (0.4, -0.6),
                             connectionstyle="arc3,rad=.5", **kw)

for a in [a1, a2, a3]:
    plt.gca().add_patch(a)
plt.show()
