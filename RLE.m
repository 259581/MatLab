clear;
clc;


A = {1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,1,1,1,0,0};
B = {{1,11},{2,7},{1,4},{0,2}};
C = length(A);
D = length(B);

P = poissrnd(1,1,5);

img_wzor = imread('lysy_wzor.gif');
img_los = imread('lysy_los.gif');


element = img_wzor(1);
compressed_img_wzor = [];
k = 1;
licznik = 1;
%compressing lysy_wzor
for i = 1 :length(img_wzor)
    
    for j = 1 :length(img_wzor)
        
        if(element == img_wzor(i,j))
            
            licznik = licznik + 1;
            
        else
            compressed_img_wzor(k) = element;
            k = k + 1;
            compressed_img_wzor(k) = licznik;
            k = k + 1;
            licznik = 1;
            element = img_wzor(i,j);
        
        end
        
    end
    
end

max_wzor = max(compressed_img_wzor)
length_compressed_img_wzor = length(compressed_img_wzor)
length_img_wzor = length(img_wzor)*length(img_wzor);
if(length_img_wzor>length_compressed_img_wzor)
   fprintf("working!\n")
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%compressing lysy_los
element = img_los(1);
compressed_img_los = [];
k = 1;
licznik = 1;


for i = 1 :length(img_los)
    
    for j = 1 :length(img_los)
        
        if(element == img_los(i,j))
            
            licznik = licznik + 1;
            
        else
            compressed_img_los(k) = element;
            k = k + 1;
            compressed_img_los(k) = licznik;
            k = k + 1;
            licznik = 1;
            element = img_los(i,j);
        
        end
        
    end
    
end

max_los = max(compressed_img_los)
length_compressed_img_los = length(compressed_img_los)
length_img_los = length(img_los)*length(img_los);
if(length_img_los>length_compressed_img_los)
   fprintf("working!\n")
end

if(length_compressed_img_wzor>length_compressed_img_los)
   fprintf("compressed lysy_wzor is bigger\n")
else 
   fprintf("compressed lysy_los is bigger\n") 
end


