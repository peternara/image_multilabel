# image_multilabel

## Prerequisite
Tensorflow, Python

## Usage
1. Under the image_multilabel model, Download the pretrained Inception v3 model (if you haven't downloaded)by running:
    
    tools/download_data.sh
    
2. Run classify.py:

    python tools/classify.py --n 8 sample.jpg 
  
    ![sample image](https://github.com/ZixuanLiang/image_multilabel/blob/master/sample.jpg "sample image")
    
    Output:
    
    4119: /m/06ntj - sports (score = 0.81)
  
    3082: /m/03x045 - team sport (score = 0.26)
    
    1329: /m/020m7t - ball game (score = 0.24)
    
    2268: /m/02vzx9 - player (score = 0.10)
    
    5919: /m/0n68_ - structure (score = 0.07)
    
    4840: /m/0bmgjqz - sport venue (score = 0.07)
    
    132: /m/01445t - athlete (score = 0.07)
    
    76: /m/012sbd - tournament (score = 0.07)
    
## How does the code work
The pretrained inception v3 model is based on Google open image dataset. Open images is a dataset of ~9 million URLs to images that have been annotated with labels spanning over 6000 categories. The dataset is split into a training set (9011219 images) and a validation set (167057 images). Each image has zero, one or more image-level labels assigned. Both sets have machine-populated annotations, while the validation set also has human annotations.

Each annotation has a confidence number from 0.0 to 1.0 assigned. The human annotations are definite (either positive, 1.0 or negative, 0.0), while machine annotations have fractional confidences, generally, >= 0.5. The higher confidence, the smaller chance for the label to be a false positive.

## Possible Improvement
Fine tune the model with precisely human image-level annotations dataset. 
