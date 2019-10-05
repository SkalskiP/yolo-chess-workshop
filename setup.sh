#!/bin/bash

# Clone dataset
git clone https://github.com/SkalskiP/yolo-chess-dataset.git

# Clone framework
git clone https://github.com/ultralytics/yolov3.git

# Dataset application
mkdir ./yolov3/data/chess/
cp -r ./yolo-chess-dataset/images ./yolov3/data/chess/images
cp -r ./yolo-chess-dataset/labels ./yolov3/data/chess/labels

rm ./yolov3/data/samples/*
cp ./yolo-chess-dataset/sample/* ./yolov3/data/samples

cp ./yolo-chess-dataset/chess.data ./yolov3/data
cp ./yolo-chess-dataset/chess.names ./yolov3/data
cp ./yolo-chess-dataset/chess_test.txt ./yolov3/data
cp ./yolo-chess-dataset/chess_train.txt ./yolov3/data

# Getting pre-trained weights
cd ./yolov3/weights
sh download_yolov3_weights.sh
cd ..

# Setup virtual env
sudo apt-get update
sudo apt-get install python-dev
sudo apt-get install python-pip
sudo apt-get install python3-venv
python3 -m venv .env                            
source .env/bin/activate                      
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install Cython
pip3 install numpy
pip3 install Pillow
pip3 install -r requirements.txt     
deactivate

echo "*****************************************************************************"
echo "******                Your environment has been created                ******"
echo "*****************************************************************************"
echo ""
echo "If you had no errors, You can proceed to work with your virtualenv as normal."
echo "(run 'source .env/bin/activate' in your assignment directory to load the venv,"
echo " and run 'deactivate' to exit the venv. See assignment handout for details.)"