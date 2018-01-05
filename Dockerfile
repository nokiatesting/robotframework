FROM python:3.6
ENV ROBOT_HOME=/usr/src/robot
WORKDIR $ROBOT_HOME
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
VOLUME "$ROBOT_HOME"
ENTRYPOINT ["python", "-m", "robot"]