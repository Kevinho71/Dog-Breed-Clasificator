# 🐾 Dog Breed Classifier

A web application that uses machine learning to classify dog breeds from uploaded images. The application provides breed identification, probability scores, and detailed breed information using Google's Gemini AI.

## Features

- 🔍 Upload and classify dog images
- 📊 View top 5 most probable breed matches with confidence scores
- 📈 Interactive visualization of results
- 🌍 Bilingual support (English/Spanish breed names)
- 🤖 Detailed breed information powered by Google Gemini AI

## Technologies Used

- Python 3.10
- TensorFlow for image classification
- Streamlit for web interface
- Google Gemini AI for breed information
- Docker for containerization

## Prerequisites

- Python 3.10 or higher
- Docker (optional)
- Kaggle account (for downloading the dataset)

## Dataset

This project requires the Dog Breed Identification dataset from Kaggle. To set up the dataset:

1. Download the dataset from [Kaggle Dog Breed Identification Competition](https://www.kaggle.com/competitions/dog-breed-identification/data)
2. Create the following directory structure in your project:
bash data/ ├── train/ # Place training images here └── test/ # Place test images here
3. Extract the downloaded dataset into these directories

**Note**: The `data/` directory is not included in the repository due to size constraints. You must download and set up the data locally.

## Installation

### Local Setup

1. Clone the repository:
bash git clone <repository-url> cd dog-breed-classifier

2. Create and activate a virtual environment:
bash python -m venv venv source venv/bin/activate # On Windows: venv\Scripts\activate

3. Install dependencies:
bash pip install -r requirements.txt

4. Set up environment variables:
   - Create a `.env` file in the project root
   - Add your Google Gemini API key:
API_GEMINI=your_api_key_here

### Docker Setup
To run the application using Docker:
bash docker build -t dog-breed-classifier . docker run -p 8501:8501 dog-breed-classifier

## Usage

1. Ensure you have downloaded and set up the dataset as described in the Dataset section
2. Start the application:
```bash
streamlit run src/DogBreedClasificator.py
```
Open your web browser and navigate to `http://localhost:8501`
Upload a dog image using the file uploader
View the classification results and detailed breed information
## Project Structure

├── data/                    # Create this directory and add dataset
│   ├── train/              # Training images from Kaggle
│   └── test/               # Test images from Kaggle
├── models/
│   ├── modelo_entrenado.h5
│   ├── class_indices.pkl
│   └── traducciones.pkl
├── src/
│   └── DogBreedClasificator.py
├── .env
├── .gitignore
├── Dockerfile
├── requirements.txt
└── README.md

## Dependencies
Key dependencies include:
- pandas
- numpy
- tensorflow
- matplotlib
- scikit-learn
- streamlit
- Pillow
- python-dotenv
- google-generativeai

All dependencies are listed in `requirements.txt`
## Environment Variables
- : Google Gemini API key `API_GEMINI`
- : Custom path to the trained model (optional) `MODEL_PATH`
- : Custom path to class indices file (optional) `CLASS_INDICES_PATH`
- : Custom path to translations file (optional) `TRANSLATIONS_PATH`

## Important Notes
1. The dataset is not included in this repository and must be downloaded separately from Kaggle
2. Make sure to keep your API keys secure and never commit them to the repository
3. The `data/` directory is included in to prevent large files from being committed `.gitignore`

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.
## License
[Add your license information here]
## Acknowledgments
- [Kaggle Dog Breed Identification Competition](https://www.kaggle.com/competitions/dog-breed-identification/data) for the dataset
- TensorFlow for the machine learning framework
- Google Gemini AI for breed information
- Streamlit for the web interface
