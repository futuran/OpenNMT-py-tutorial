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
    python setup install
    cd ..
  ```
  
## 本レポジトリを使ったクイックスタート
+ コードをクローン
  ```
    cd OpenNMT-py
    mkdir experiment
    cd experiment
    git clone https://github.com/futuran/OpenNMT-py-tutorial.git
  ```
+ 
