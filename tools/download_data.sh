# Download and extract pretrained Inception v3 model.

set -ue

cd $(cd -P -- "$(dirname -- "$0")" && pwd -P)
mkdir -p ../data
cd ../data

wget https://storage.googleapis.com/openimages/2016_08/model_2016_08.tar.gz
tar -xzf model_2016_08.tar.gz
