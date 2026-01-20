# 教程：https://docs.conda.io/projects/conda/en/stable/user-guide/install/windows.html
###############################################################################################
# 下载并且安装miniconda
###############################################################################################
cd /d D:\download
curl -L -o Miniconda3-latest-Windows-x86_64.exe https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Windows-x86_64.exe
start /wait "" Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=0 /S /D=D:\software\Miniconda3

###############################################################################################
# 更新conda
###############################################################################################
