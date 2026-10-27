from PIL import Image

# Load image
img = Image.open('/root/.openclaw/workspace/downloads/19ee3623-8cf2-8239-8000-0000491347aa_Screenshot_20260620_125410_com.quark.scanking.jpg')
img_rgb = img.convert('RGB')
pixels = img_rgb.load()
width, height = img_rgb.size

red_count = 0
for y in range(height):
    for x in range(width):
        r, g, b = pixels[x, y]
        # Detect red handwriting (red significantly higher than green and blue)
        if r > 130 and r > g + 35 and r > b + 35:
            pixels[x, y] = (255, 255, 255)
            red_count += 1
        # Also detect pink/light red marks
        elif r > 150 and g > 80 and b > 80 and r > g + 20 and r > b + 20:
            pixels[x, y] = (255, 255, 255)
            red_count += 1

# Save
img_rgb.save('/root/.openclaw/workspace/downloads/cleaned_test_v1.jpg', quality=95)
print(f'Saved cleaned_test_v1.jpg, red pixels removed: {red_count}')
