#!/bin/bash
echo "Converting Training Data"
python3 example.py --datasets COCO --img_path ./data/images/train/ --label ./data/annotations/instances_train.json --convert_output_path ./data_yolo/annotations/train --img_type ".jpg" --manipast_path ./ --cls_list_file ./data/iiai.names
wait
echo "Converting Validation Data"
python3 example.py --datasets COCO --img_path ./data/images/val/ --label ./data/annotations/instances_val.json --convert_output_path ./data_yolo/annotations/val --img_type ".jpg" --manipast_path ./ --cls_list_file ./data/iiai.names
