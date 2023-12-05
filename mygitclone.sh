#!/bin/zsh
source ~/.zprofile

tempValue=$1
echo $tempValue
git clone https://github.com/prixingcha/template.git $tempValue
cd $tempValue
echo 'current working directory is ::::'
echo $PWD
echo $PWD
sudo rm -rd .git
sed -i '' '1s/.*/name: '"$(basename $tempValue)"'-env/' environment.yml
conda env create -f environment.yml
echo $tempValue'-env-begin'
echo $CONDA_DEFAULT_ENV
echo 'deactivate next env line'
# conda deactivate
# conda deactivate
# echo $CONDA_DEFAULT_ENV

# conda activate template-15-env
# #$tempValue'-env'
# echo $tempValue'-env-after'
# echo $CONDA_DEFAULT_ENV
git init
git add .
git commit -m 'added all value'
git branch -M main
git remote add origin https://github.com/prixingcha/$tempValue.git
git push -u origin main

