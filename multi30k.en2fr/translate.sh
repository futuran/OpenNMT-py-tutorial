#How to use
# futuran$ sh translate.sh <best step of baseline>
# futuran$ sh translate.sh 10000

step=$1
dir=../../multi30k/dataset/data/task1/tok/

mkdir ./baseline/out/

out=./baseline/out/output.$step.ja
ref=$dir/test_2018_flickr.lc.norm.tok.fr
python ../../../translate.py -model ./baseline/model/model.baseline_step_$step.pt \
        -src $dir/test_2018_flickr.lc.norm.tok.en \
        -output $out -gpu 0 -verbose

perl ../../../tools/multi-bleu.perl $ref < $out > $out.bleu
cat $out.bleu

