cd ~/software
wget https://cran.r-project.org/src/base/R-4/R-4.4.2.tar.gz
tar -zxvf R-4.4.2.tar.gz
cd R-4.4.2

./configure \
  --prefix=$HOME/software/R/4.4.2 \
  --enable-R-shared \
  --with-x=no
make -j 4
make install


