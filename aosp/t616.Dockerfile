FROM hmzdtz/aosp:legacy

RUN sudo pip install pycrypto==2.6.1 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN sudo pip3 install pycrypto==2.6.1 -i https://pypi.tuna.tsinghua.edu.cn/simple

