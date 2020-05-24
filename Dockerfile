FROM ubuntu:20.04
LABEL maintainer="thedevmeo"
ENV DEBIAN_FRONTEND=noninteractive
ARG components=PF_C28,PF_TM4C

RUN apt-get update -qq && \
    apt-get install -qq -y \
    curl \
    ca-certificates \
    # CCS Requirements \
    libc6-i386 \
    libusb-0.1-4  \
    libgconf-2-4 \
    libncurses5  \
    libpython2.7 \
    libtinfo5
# Requirements for ubuntu 19
#    libgtk2.0-0  \
#    build-essential

RUN if [ "${components}" = "all" ]; then components=PF_MSP430,PF_MSP432,PF_CC2X,PF_CC3X,PF_CC2538,PF_C28,PF_TM4C,PF_PGA,PF_HERCULES,PF_SITARA,PF_OMAPL,PF_DAVINCI,PF_OMAP,PF_TDA_DRA,PF_C55,PF_C6000SC,PF_C66AK_KEYSTONE,PF_MMWAVE,PF_C64MC,PF_DIGITAL_POWER; fi;

# Download and install CCS
RUN mkdir -p /ti/ ~/ccs-workspace/ /download_ccs \
    && curl -L https://software-dl.ti.com/ccs/esd/CCSv10/CCS_10_0_0/exports/CCS10.0.0.00010_web_linux-x64.tar.gz | tar -xvz -C /download_ccs
RUN /download_ccs/ccs_setup_10.0.0.00010.run --prefix /ti/ --mode unattended --enable-components ${components}\
    && rm -rf /download_ccs

# RUN /ti/ccs/install_scripts/install_drivers.sh

ENV PATH="/ti/ccs/eclipse:${PATH}"
