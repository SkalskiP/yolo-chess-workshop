# yolo-chess-workshop

## Hit the ground running

``` bash
# clone repository
git clone https://github.com/SkalskiP/yolo-chess-workshop.git

# navigate to main directory
cd yolo-chess-workshop

# run setup script
bash setup.sh
```

## Train

``` bash
# activate python environment
source .env/bin/activate

# run trening
python3 train.py --data data/chess.data --cfg cfg/yolov3-tiny.cfg
```

## Detection

``` bash
# activate python environment
source .env/bin/activate

# run trening
python3 detect.py --cfg cfg/yolov3-tiny.cfg --weights weights/best.pt --data data/chess.data 
```
