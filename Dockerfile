FROM huggingface/lerobot-cpu

COPY ./pink4/calibrate.json /root/.cache/huggingface/lerobot/calibration/robots/so100_follower/pink4.json

# DANGER: WE ARE INSTALLING SUDO WHICH SHOULD NOT USUALLY BE DONE IN A CONTAINER. WE DONT WANT
# TO HAVE TO MODIFY THE INSTALL SCRIPT RIGHT NOW THOUGH. THIS CONTIAINER IS DANGEROUS!!!
RUN apt-get update && apt-get install -y curl neovim sudo
RUN curl -fsSL https://raw.githubusercontent.com/phospho-app/phosphobot/main/install.sh | bash

CMD phosphobot run
