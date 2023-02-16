%sieve of Eratosthenes 

N = 100;
Cn = zeros(1,N);
for m = 1:1:N
    Cn(1,m) = m;
    
end
for m = 4:2:N
    Cn(1,m) = 1;
    
end

for m = 6:3:N
    Cn(1,m) = 1;
end

for m = 10:5:N
    Cn(1,m) = 1;
end

for m = 14:7:N
    Cn(1,m) = 1;
end
   
plot(Cn,"--gs");
Cn