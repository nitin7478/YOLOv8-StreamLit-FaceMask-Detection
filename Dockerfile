FROM python:3.10
COPY . /app
WORKDIR /app
EXPOSE 8501
# Install dependencies
RUN apt-get update && apt-get install -y \
    libgl1 libgl1-mesa-glx libglib2.0-0 libgl1-mesa-dev libglu1-mesa-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install -r requirements.txt
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]