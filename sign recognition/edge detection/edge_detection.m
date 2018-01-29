clearvars;
original_image=imread('sign_image4.jpg');
 figure;
 imshow(original_image);

%%detecting possible signs
grey_image=rgb2gray(original_image);

edged_image=edge(grey_image,'canny',0.2);
 figure;
 imshow(edged_image);

 figure;
 c=imfill(edged_image,'holes');
 imshow(c);

 Filled_image =bwareaopen(c, 3000);

figure;
imshow(Filled_image);

boundary = bwboundaries(Filled_image);
edge = boundary{1};
imshow(original_image); hold on; 
plot(edge(:,2),edge(:,1),'g','LineWidth',3);