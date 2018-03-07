import cv2
import matplotlib.pyplot as plt
import numpy as np
from imfill import flood_fill
from skimage import morphology

im = cv2.imread('sign_image6.jpg')
edges = cv2.Canny(im,255,255,L2gradient=False)
# plt.imshow(edges,cmap='gray')
# plt.show()
output=flood_fill(edges)
# plt.imshow(output,cmap='gray')
# plt.show()
print output
cleaned=morphology.remove_small_objects(output,3000)
plt.imshow(output,cmap='gray')
plt.show()
