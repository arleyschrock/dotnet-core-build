FROM ubuntu:16.10

RUN apt update && apt install curl libicu57 libunwind8 -y \
 && mkdir /opt/dotnet \
 && mkdir /opt/dotnet/1.1 \
 && cd /opt/dotnet/1.1 \
 && curl https://download.microsoft.com/download/E/7/8/E782433E-7737-4E6C-BFBF-290A0A81C3D7/dotnet-dev-ubuntu.16.10-x64.1.0.4.tar.gz -o 1.0.4.tar.gz \
 && tar -xvf *.tar.gz \
 && mkdir ../2.0 \
 && cd ../2.0 \
 && curl https://download.microsoft.com/download/F/A/A/FAAE9280-F410-458E-8819-279C5A68EDCF/dotnet-sdk-2.0.0-preview2-006497-linux-x64.tar.gz -o 2.0.tar.gz \
 && tar -xvf *.tar.gz 

RUN PATH=$PATH:/opt/dotnet/1.1 dotnet --version
RUN PATH=$PATH:/opt/dotnet/2.0 dotnet --version

CMD /container-prep.sh
