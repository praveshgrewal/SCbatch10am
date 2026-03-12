import matplotlib.pyplot as plt

days = [1,2,3,4,5,6,7,8,9,10]
temp = [23,33,43,53,63,73,83,93,103,123]


plt.figure(figsize=(4,4))
plt.plot(days,temp,color='blue',
linestyle='--',
marker='o',
linewidth=2,
markersize=10,
markerfacecolor='red',
label = 'temp'
)
plt.title('day wise Temprature ',fontsize = 20,color='red')
plt.xlabel('Days',fontsize=20,color='red')
plt.ylabel('Temprature',fontsize = 20,color='red')
plt.grid(True)
plt.legend()
# plt.savefig("my_plot.pdf") 
plt.show()
