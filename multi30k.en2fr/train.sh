cd baseline
mkdir model
python ../../../../train.py -config ../train.conf \
        -data baseline \
        -save_model model/model.baseline
cd ..

