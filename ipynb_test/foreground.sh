sudo git clone https://github.com/LordGhostX/IPYNB-viewer.git
cd IPYNB-viewer
pip3 install -r requirements.txt
wget https://www.southampton.ac.uk/~fangohr/teaching/python/book/ipynb/01-introduction.ipynb
python3 viewer.py 01-introduction.ipynb
