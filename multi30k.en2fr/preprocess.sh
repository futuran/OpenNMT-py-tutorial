dir=../../multi30k/dataset/data/task1/tok/

mkdir baseline
cd baseline
python ../../../../preprocess.py -config ../preprocess.conf \
    -train_src ../$dir/train.lc.norm.tok.en \
    -train_tgt ../$dir/train.lc.norm.tok.fr \
    -valid_src ../$dir/val.lc.norm.tok.en \
    -valid_tgt ../$dir/val.lc.norm.tok.fr \
    -save_data baseline
cd ..

