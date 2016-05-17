close all

space = linspace(-10^(-4), 10^(-4), 1000);
space = space*1.602*10^(-19);

for i = 1:10 
   plot(space, meidanPlot(i/10))
   hold on
end

legend('0.1K', '0.2K', '0.3K', '0.4K', '0.5K', '0.6K', '0.7K', '0.8K', '0.9K', '1.0K')

axis([-0.3*10^(-23) 0.3*10^(-23) -1.8*10^(-22) -1*10^(-22)])
