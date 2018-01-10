FROM python:3.6
ENV ROBOT_HOME=/usr/src/robot
WORKDIR $ROBOT_HOME
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
VOLUME "$ROBOT_HOME"
CMD ["python3", "-m", "robot"]
