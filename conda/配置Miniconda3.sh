# 教程：https://docs.conda.io/projects/conda/en/stable/user-guide/install/windows.html
# https://docs.conda.io/projects/conda/en/stable/index.html#
###############################################################################################
# 下载并且安装miniconda
###############################################################################################
cd /d D:\download
curl -L -o Miniconda3-latest-Windows-x86_64.exe https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Windows-x86_64.exe
setx PATH "D:\software\Miniconda3\condabin;D:\software\Miniconda3\Scripts;$env:PATH" # powershell

#########################################################################################
# 接受协议
#########################################################################################
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/msys2

#########################################################################################
# 修改镜像
#########################################################################################
conda config --show channels
conda config --remove-key channels
conda config --add channels defaults
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
conda config --set channel_priority strict
conda config --show channels

pip config list
pip config unset global.index-url
pip config unset global.extra-index-url

pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip config set global.extra-index-url https://pypi.org/simple
pip config list

#########################################################################################
# 防止用conda在base中安装和修改
#########################################################################################
conda install -c conda-forge conda-protect
conda protect base

###############################################################################################
# 更新conda
###############################################################################################
conda update conda

###############################################################################################
# 查看conda版本
###############################################################################################
conda --version
