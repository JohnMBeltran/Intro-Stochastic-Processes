alpha = 0.3;
T = [0, 1, 0, 0, 0; 
     (1-alpha), 0, alpha, 0, 0; 
     0, 1, 0, 0, 0;
     .5, 0, 0, 0, .5;
     0, 0, 0, 0.5, 0.5];
 mc = dtmc(T);
 figure(1)
 graphplot(mc)