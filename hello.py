from PIL import Image
import pytesseract

def main():
    # Paths to the uploaded images
    image_paths = [
        './mnt/data/FEDEF62B-1071-4DAF-A5F4-E50E0E4AC1AB.png',
        './mnt/data/EC903909-4BAF-44FC-A8DB-7B471B5DE6BF.png',
        './mnt/data/CA7F6F44-ED75-46AF-8608-DE3B29365173.png'
    ]

    # Process each image for text extraction using pytesseract
    extracted_texts = []
    for path in image_paths:
        image = Image.open(path)
        text = pytesseract.image_to_string(image, lang='jpn+eng')  # Assuming the books are in Japanese
        extracted_texts.append(text)

    extracted_texts

if __name__ == "__main__":
    main()
