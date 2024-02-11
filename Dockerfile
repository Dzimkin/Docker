FROM selenium/standalone-chrome
LABEL authors="Guzic"
ENV TEST_VAR1=test_var
RUN mkdir "/home/seluser/test"
COPY . "/home/seluser/test"
RUN sudo apt update -y && sudo apt upgrade -y
RUN sudo apt install python3-pip -y
RUN sudo python3 -m pip install pytest pytest-cov requests selenium webdriver-manager
