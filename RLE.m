clear;
clc;


A = {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,1,1,1,0,0};
B = {{1,11},{2,7},{1,4},{0,2}};
C = length(A);
D = length(B);

P = poissrnd(1,1,5);

img_pattern = imread('lysy_wzor.gif');
img_rand = imread('lysy_los.gif');


element = img_pattern(1);
compressed_pattern = [];
k = 1;
counter = 1;
%compressing lysy_wzor
for i = 1 :length(img_pattern)
    
    for j = 1 :length(img_pattern)
        
        if(element == img_pattern(i,j))
            
            counter = counter + 1;
            
        else
            compressed_pattern(k) = element;
            k = k + 1;
            compressed_pattern(k) = counter;
            k = k + 1;
            counter = 1;
            element = img_pattern(i,j);
        
        end
        
    end
    
end

max_pattern = max(compressed_pattern)
length_compressed_pattern = length(compressed_pattern)
length_pattern = length(img_pattern)*length(img_pattern);
if(length_pattern>length_compressed_pattern)
   fprintf("working!\n")
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%compressing lysy_los
element = img_rand(1);
compressed_rand = [];
k = 1;
counter = 1;


for i = 1 :length(img_rand)
    
    for j = 1 :length(img_rand)
        
        if(element == img_rand(i,j))
            
            counter = counter + 1;
            
        else
            compressed_rand(k) = element;
            k = k + 1;
            compressed_rand(k) = counter;
            k = k + 1;
            counter = 1;
            element = img_rand(i,j);
        
        end
        
    end
    
end

max_los = max(compressed_rand)
length_compressed_rand = length(compressed_rand)
length_rand = length(img_rand)*length(img_rand);
if(length_rand>length_compressed_rand)
   fprintf("working!\n")
end

if(length_compressed_pattern>length_compressed_rand)
   fprintf("compressed img_pattern is bigger\n")
else 
   fprintf("compressed img_rand is bigger\n") 
end


