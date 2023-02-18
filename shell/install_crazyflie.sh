export CSW_PYTHON=python3

sudo apt install -y ros-noetic-tf ros-noetic-tf-conversions ros-noetic-joy
sudo apt install -y libpcl-dev libusb-1.0-0-dev
sudo apt install -y swig lib${CSW_PYTHON}-dev ${CSW_PYTHON}-pip
${CSW_PYTHON} -m pip install pytest numpy PyYAML scipy
${CSW_PYTHON} -m pip install vispy

sudo apt install -y ffmpeg
${CSW_PYTHON} -m pip install ffmpeg-python

cd /home/user/drone_ws/src/
git clone https://github.com/USC-ACTLab/crazyswarm.git
rm -rf crazyswarm/.git

cd crazyswarm
./build.sh
cd /home/user/drone_ws/src/crazyswarm/scripts
source ../../../devel/setup.bash
$CSW_PYTHON -m pytest

