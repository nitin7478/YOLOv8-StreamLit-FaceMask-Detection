# YOLOv8 - StreamLit Object Detection Web App

## App Link
[Run Application Streamlit Deployment Link](https://facemaskdetector.streamlit.app/)<br>
[Run Application AWS Deployment Link](http://ec2-34-207-80-183.compute-1.amazonaws.com:8501/)

## Description:
This web application uses the YOLOv8 object detection model to identify faces and classify them as "With Mask" or "No Mask" or "Improper Mask". It's built with Streamlit for an interactive and user-friendly experience. The app supports both images and videos in various formats.

### Components:
* Language : [Python3.10](https://www.python.org/)
* Model : [Yolov8](https://github.com/ultralytics/ultralytics)
* Webapp Framework : [Streamlit](https://streamlit.io/)
* Dataset and Preprocessing : [Roboflow.com](https://roboflow.com/)

### Key Features:
* Real-time face detection and mask classification
* User-friendly interface for easy uploads
* Efficient processing with YOLOv8
* Visual feedback with bounding boxes and labels

### Use Cases:
* Health and safety compliance monitoring
* Crowd management in public spaces
* Monitoring face mask usage in educational settings
* Enhanced security and surveillance

## Installation
Clone the repository.<br>
Install the required dependencies.<br>
Run the Streamlit app locally.<br>

### Follow below steps : <br>
* Create conda environment
    ```
    conda create -p venv python=3.10 -y

* Install pytorch and torchvision as per your system 
    ```
    https://pytorch.org/get-started/locally/
    ```

* Install required packages
    ```
    pip install -r requirements.txt
    ```

* Run StreamLit Webapp
    ```
    streamlit run app.py
    ```

### Docker Hub Image Download on AWS/AZURE/GCP
* [Image Link](https://hub.docker.com/r/nitin7478/st-mask-detector)

* Pull Image(After installing Docker in your system)
    ```
    docker pull nitin7478/st-mask-detector
    ```
* Run docker image
    ```
    docker run -d -p 8501:8501 nitin7478/st-mask-detector
    ```

### Model Training Information 
Model is trained on custom dataset from [roboflow.com](https://roboflow.com)<br>
We have trained YOLOv8n model(by [ultalytics](https://github.com/ultralytics/ultralytics)) on opensource dataset from roboflow.com <br>
Dataset Credits : https://universe.roboflow.com/new-workspace-2cnfr/mask-ecop7/dataset/2 <br>
Metrics of the trained model are as follows:<br>
![metrics](https://github.com/nitin7478/YOLOv8-StreamLit-FaceMask-Detection/assets/110007283/a64fc034-ae50-4fc7-9a10-2f8cd5a60141)


### Project Structure 
```
.
├── src/
│ ├── components/
│ │ ├── init.py
│ │ ├── image_detector.py
│ │ ├── video_detector.py
│ ├── constants/
│ │ ├── init.py
│ │ ├── constant.py
├── sample_dataset/
│ ├── demo.jpeg
│ ├── demo.mp4
├── sample_output/
│ ├── [Sample output files]
├── models/
│ ├── best_3.pt
├── app.py
├── requirements.txt
├── packages.txt
├── README.md
├── .gitignore
├── YOLOv8_Tutorial.ipynb
├──model_trainer.ipynb
```

## Licence
[LICENCE](https://github.com/nitin7478/YOLOv8-StreamLit-FaceMask-Detection/blob/5b2ccbcc75c7bd4b5cb2a9a5a00362bcf9f34a3f/LICENSE)
