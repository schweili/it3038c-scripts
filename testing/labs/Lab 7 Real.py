from PIL import Image

# Opens image
image = Image.open(r'C:\Users\lukes\OneDrive\Desktop\Scripts\image.jpg')

# Saves image in different format
image.save('image_formatted.png')

# Create a image Thumbnail
image.thumbnail((200,200))
image.save('image.thumbnail.jpg')

# Rotate Image
image.transpose(Image.FLIP_TOP_BOTTOM)
image.save('sample.flip.jpg')
