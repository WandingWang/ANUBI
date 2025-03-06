#!/bin/bash

echo "Strating Python scripts..."

python AutoBindingMD_alpha.py

python AutoBindingMD_cluspro.py
echo "run 1st"
python AutoBindingMD_1.py

echo "run 2rd"
python AutoBindingMD_2.py

echo "run 3rd"
python AutoBindingMD_3.py

echo "run 4th"
python AutoBindingMD.py

echo "All  finished"


