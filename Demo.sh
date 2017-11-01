#!/bin/bash
#python neural_style/neural_style.py eval --content-image </path/to/content/image> --model </path/to/saved/model> --output-image </path/to/output/image> --cuda 0
echo `date +'%Y-%m-%d %H:%M:%S'`
echo Task Start ...

open images/content-images/latrobe.jpg 

 
open images/style-images/rain-princess.jpg 

# rain-princess
echo Apply rain_princess model...


#python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/rain_princess.pth --output-image images/output-images/latrobe-rain-princess.jpg --cuda 0

# candy
#python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/candy.pth --output-image images/output-images/latrobe-candy.jpg --cuda 0

# mosaic
#python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/mosaic.pth --output-image images/output-images/latrobe-mosaic.jpg --cuda 0

# udnie
#python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/udnie.pth --output-image images/output-images/latrobe-udnie.jpg --cuda 0

open images/output-images/latrobe-rain-princess.jpg

echo `date +'%Y-%m-%d %H:%M:%S'`
echo Task End
