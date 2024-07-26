FROM ubuntu:20.04


RUN apt-get update && apt-get install -yqq --no-install-recommends tzdata -y locales

# "questions will narrow this down by presenting a list of cities, representing => => # the time zones in which they are located."
# Change time zone
#RUN apt-get install -yqq --no-install-recommends tzdata
RUN TZ=Asia/Taipei \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && dpkg-reconfigure -f noninteractive tzdata

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

#RUN TZ=Asia/Taipei

#RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y <package_name>

# officially providedd packages
#RUN apt-get update && apt-get install curl git openjdk-17-jre openssh-client python3 python3-pip -y

# workaround with "time zone docker problem"
#RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y curl git openjdk-17-jre openssh-client python3 python3-pip

# additional packages: cgdb (lab02)
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y curl git openjdk-17-jre openssh-client python3 python3-pip cgdb

# nice terminal color
RUN echo "export PS1=\"\[\e[0;31m\]\u@\[\e[m\e[0;34m\]\h\[\e[m \e[0;32m\] \w[\!]\$\[\e[m\]  \"" >> ~/.bashrc


#ADD . /proj
#WORKDIR /proj
RUN mkdir -p /workspace/projects
WORKDIR /workspace/projects


CMD ["bash"]
