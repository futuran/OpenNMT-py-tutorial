# OpenNMT-py-tutorial



Open-NMT-py v1.1.1チュートリアルです。


## マシンの環境
- TITAN RTX
- CUDA 10.1

## 環境の構築
+ Condaの仮想環境を作成
  ```
    conda create -n onmt111
    conda activate onmt111 
  ```
+ torch1.4.0を仮想環境内にインストール
  - https://pytorch.org/get-started/previous-versions/
  ```
    conda install pytorch==1.4.0 torchvision==0.5.0 cudatoolkit=10.1 -c pytorch
  ```
  
+ OpenNMT-py v1.1.1のインストール
  - https://github.com/OpenNMT/OpenNMT-py/releases/tag/1.1.1
  ```
    wget https://github.com/OpenNMT/OpenNMT-py/archive/refs/tags/1.1.1.tar.gz
    tar -zxvf 1.1.1.tar.gz
    cd OpenNMT-py
    python setup.py install
    cd ..
  ```
  
## 本レポジトリを使ったクイックスタート
+ コードをダウンロード
  ```
    cd OpenNMT-py
    mkdir ex.test
    cd ex.test
    git clone https://github.com/futuran/OpenNMT-py-tutorial.git
    cd ..
  ```
+ データセット(Multi30k)をダウンロード
  - https://github.com/multi30k/dataset
  ```
    cd ex.test
    mkdir multi30k
    cd multi30k
    git clone https://github.com/multi30k/dataset.git
    cd ../
  ```  

+ 前処理を実施
  ```
    cd OpenNMT-py-tutorial/multi30k.en2fr
    sh preprocess.sh
  ```  

+ 訓練を実施
  ```
    nohup sh train.sh &
  ```  
+ 訓練の進捗を確認
  ```
    cat nohup.out
  ```  

+ 推論を実施
  ```
    sh translate.sh (推論を行いたいstep数)
  ```  
