# 教程：https://mp.weixin.qq.com/s/85n8sgOEGMeb9TcKJKlkvg
conda create -n R -y
conda activate R

conda search r-base # 查看有哪些R的版本可以安装
conda install r-base=3.6.1 -y
where R

# 安装包
conda install r-ggplot2
conda install r-seurat
conda install r-devtools
conda install r-BiocManager
conda install r-tidyverse
conda install r-cowplot

conda install -c conda-forge jupyterlab r-irkernel radian

R # 激活R
IRkernel::installspec(user = FALSE)
q()  # 退出 R
