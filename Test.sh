#!/bin/bash
#python neural_style/neural_style.py eval --content-image </path/to/content/image> --model </path/to/saved/model> --output-image </path/to/output/image> --cuda 0
echo `date +'%Y-%m-%d %H:%M:%S'`
echo Task Start ...
# variables
contentimage='images/content-images/latrobe.jpg'
styleimage='images/style-images/mosaic.jpg'
model='saved_models/mosaic.pth'
outputimage='test_latrobe_udine_result.jpg'

# show content image  
echo  [1] Open Content Image
open  $contentimage
# show styple image 
echo [2] Open Style Image 
open  $styleimage

# start image transfer
python neural_style/neural_style.py eval --content-image $contentimage --model $model --output-image $outputimage --cuda 0

# open the output image 
echo [3] Open the Style Transfered Image 

echo 'Please find the test_latrobe_udine_result.jpg  in the folder'
open $outputimage
echo Task End
echo `date +'%Y-%m-%d %H:%M:%S'`

#udnie
# python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/udnie.pth --output-image images/output-images/latrobe-udnie.jpg --cuda 0

# rain-princess
# python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/rain_princess.pth --output-image images/output-images/latrobe-rain-princess.jpg --cuda 0

# candy
#python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/candy.pth --output-image images/output-images/latrobe-candy.jpg --cuda 0

#mosaic
#python neural_style/neural_style.py eval --content-image images/content-images/latrobe.jpg --model saved_models/mosaic.pth --output-image images/output-images/latrobe-mosaic.jpg --cuda 0