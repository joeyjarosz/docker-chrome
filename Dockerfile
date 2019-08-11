FROM ubuntu
RUN apt-get -y update
RUN apt-get -y install wget
RUN wget -O chrome.deb https://www.slimjet.com/chrome/download-chrome.php?file=lnx%2Fchrome64_58.0.3029.96.deb
RUN dpkg -i chrome.deb; exit 0
RUN apt-get install -y -f
