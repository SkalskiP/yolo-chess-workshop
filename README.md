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

## Format of labels

```
class x_center y_center width height
```

```
 
0 0.138609 0.800403 0.138105 0.172043
6 0.308468 0.692876 0.127016 0.188172
6 0.481855 0.699597 0.090726 0.185484
8 0.560988 0.919019 0.146169 0.161962
7 0.903730 0.586022 0.190524 0.237903
```

* One file per image
* One row per object.
* Box coordinates must be in normalized xywh format (from 0 - 1).
* Classes are zero-indexed (start from 0).

## Sources

1. [The official Darknet website, along with the description of YOLO v3](https://pjreddie.com/darknet/yolo/)
2. [YOLO v3 implementation with PyTorch](https://github.com/ultralytics/yolov3)
3. [Online Labelling Tool - makesense.ai](https://github.com/SkalskiP/make-sense)
