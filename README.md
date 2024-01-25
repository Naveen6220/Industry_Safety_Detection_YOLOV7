# Industry Safety Detection using YOLOv7
**Problem Statement:**
In recent decades, there's been a lot of neglect in terms of safety and well-being in most industries. The practice of safety culture and safety climate is growing everyday to safeguard all workers/employees in the work environment. Government bodies and other regulatory organisations have implemented rules and laws which ensure that employers/companies create working conditions that nullify, or at the very least minimise the probabilities of accidents, injuries, etc. in the workplace. Ignorance, incompetence, lack of knowledge/training and overconfidence among other human errors also play a part in the occurrence of such negative incidents.

**Solution Proposed:**
The main point of this application to create a detection system using Computer Vision and Machine Learning to monitor, track and enforce employees/workers to wear the necessary protection gears. ISD is designed and modelled to take a real-time image of the personnel as the input and determine if the five segments - helmet, gloves, jacket, goggles and footwear are worn before entering the workplace, and record the procedures as well. If ISD does not find any of the safety gears, the worker will not be allowed to proceed and the prohibition alarm in the system will alert the authorities.

**Project Overview:**
This project focuses on enhancing workplace safety by detecting safety gears worn by workers in real-time using YOLOv7 (You Only Look Once version 7). The primary goal is to ensure that workers are adhering to safety protocols by identifying safety gear discrepancies.

**Key Features:**
- **YOLOv7:** Implementing YOLOv7 for efficient real-time object detection.
- **Transfer Learning:** Utilizing transfer learning techniques to fine-tune the model for custom safety gear recognition.
- **CI/CD with GitHub Actions:** Implementing Continuous Integration and Continuous Deployment (CI/CD) pipelines using GitHub Actions. Automated workflows are triggered with each push to GitHub, ensuring smooth testing and deployment.
- **Self-Hosted EC2 Runner:** Utilizing a self-hosted EC2 runner for GitHub Actions to push Docker images to Amazon ECR upon every GitHub push.
- **Data Extraction from S3:** Extracting data from Amazon S3 for training and testing the safety gear detection model.

## Tech Stack Used
1. Python
2. YOLOv7
3. Transfer Learning
4. GitHub Actions
5. Docker
6. MongoDB

## Infrastructure Required
1. AWS S3
2. AWS EC2
3. AWS ECR
4. GitHub Actions
5. MongoDB

## How to Run
Before running the project, ensure that MongoDB is installed locally. Additionally, an AWS account is required for accessing services such as S3, ECR, and EC2 instances.

### Step 1: Clone the Repository
```bash
git clone https://github.com/Naveen6220/Industry_Safety_Detection_YOLOv7.git
```

### Step 2: Set Up Conda Environment
```bash
conda create -n safety_detection python=3.9 -y
conda activate safety_detection
```

### Step 3: Install Requirements
```bash
pip install -r requirements.txt
```

### Step 4: Export Environment Variables
```bash
export AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID>
export AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY>
export AWS_DEFAULT_REGION=<AWS_DEFAULT_REGION>
export MONGODB_URL="mongodb+srv://<username>:<password>@your-mongodb-url"
```

### Step 5: Run the Application Server
```bash
python app.py
```

### Step 6: Train the Model
Visit [http://localhost:8080/train](http://localhost:8080/train) to initiate model training.

### Step 7: Make Predictions
Visit [http://localhost:8080/predict](http://localhost:8080/predict) to make predictions using the trained model.

## Run Locally using Docker
1. Check if the Dockerfile is available in the project directory.
2. Build the Docker image
```bash
docker build --build-arg AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID> --build-arg AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY> --build-arg AWS_DEFAULT_REGION=<AWS_DEFAULT_REGION> --build-arg MONGODB_URL=<MONGODB_URL> .
```
3. Run the Docker image
```bash
docker run -d -p 8080:8080 <IMAGE_NAME>
```

Note: Make sure to replace placeholders like `<AWS_ACCESS_KEY_ID>`, `<AWS_SECRET_ACCESS_KEY>`, `<AWS_DEFAULT_REGION>`, `<username>`, `<password>`, and `<your-mongodb-url>` with your actual values.

Feel free to reach out if you have any questions or need further assistance!
