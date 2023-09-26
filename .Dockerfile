FROM python:3.11.5-bullseye

RUN pip3 install ipykernel
RUN pip3 install numpy==1.26.0
RUN pip3 install pandas==2.1.1
RUN pip3 install seaborn==0.12.2
RUN pip3 install scikit-learn==1.3.1
RUN pip3 install matplotlib==3.8.0
RUN pip3 install ppscore==1.3.0

RUN pip3 install nbconvert
RUN apt update
RUN apt install -y pandoc
RUN apt install -y texlive-xetex 
RUN apt install -y texlive-fonts-recommended 
RUN apt install -y texlive-plain-generic
RUN rm -rf /var/cache/apt/archives /var/lib/apt/lists/*.

CMD tail -f /dev/null