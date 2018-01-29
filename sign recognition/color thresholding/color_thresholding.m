original_image=imread('../Test_images/sign_image9.jpg');
 figure;
 imshow(original_image);
 b=redMaskFunction(original_image);
 figure;
 imshow(b);