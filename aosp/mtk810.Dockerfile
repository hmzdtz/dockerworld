FROM hmzdtz/aosp:latest

RUN sudo apt-get update
RUN sudo apt-get install -y python
RUN sudo apt-get install -y libxml-opml-simplegen-perl libswitch-perl libfile-copy-recursive-perl

RUN sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

