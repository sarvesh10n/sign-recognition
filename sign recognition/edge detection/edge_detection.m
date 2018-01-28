%%just reading image
clearvars;
a=imread('sign_image6.jpg');
 figure;
 imshow(a);

%%detecting possible signs
b=rgb2gray(a);

bw=edge(b,'canny',0.2);
 figure;
 imshow(bw);

 figure;
 c=imfill(bw,'holes');
 imshow(c);

 Iout =bwareaopen(c, 3000);

figure;
imshow(Iout);

boundary = bwboundaries(Iout);
edge = boundary{1};
imshow(a); hold on; 
plot(edge(:,2),edge(:,1),'g','LineWidth',3);