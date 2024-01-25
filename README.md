# Industry Safety Detection using YOLOv7
**Problem Statement:**
In recent decades, there's been a lot of neglect in terms of safety and well-being in most industries. The practice of safety culture and safety climate is growing everyday to safeguard all workers/employees in the work environment. Government bodies and other regulatory organisations have implemented rules and laws which ensure that employers/companies create working conditions that nullify, or at the very least minimise the probabilities of accidents, injuries, etc. in the workplace. Ignorance, incompetence, lack of knowledge/training and overconfidence among other human errors also play a part in the occurrence of such negative incidents.

**Solution Proposed:**
The main point of this application to create a detection system using Computer Vision and Machine Learning to monitor, track and enforce employees/workers to wear the necessary protection gears. ISD is designed and modelled to take a real-time image of the personnel as the input and determine if the five segments - helmet, gloves, jacket, goggles and footwear are worn before entering the workplace, and record the procedures as well. If ISD does not find any of the safety gears, the worker will not be allowed to proceed and the prohibition alarm in the system will alert the authorities.

**Project Overview:**
This project focuses on enhancing workplace safety by implementing real-time detection of workers' safety gears using YOLOv7 (You Only Look Once version 7). The utilization of transfer learning ensures the model's efficiency in recognizing safety equipment.

**Key Features:**
- **YOLOv7:** The project employs YOLOv7, a state-of-the-art real-time object detection framework, for accurate and swift identification of safety gears.
- **Transfer Learning:** Leveraging transfer learning techniques, the model is fine-tuned to adapt to specific safety gear recognition requirements.
- **CI/CD with GitHub Actions:** Continuous Integration and Continuous Deployment (CI/CD) pipelines are implemented using GitHub Actions. With every push to GitHub, automated workflows initiate, ensuring seamless testing and deployment.
- **Self-Hosted EC2 Runner:** GitHub Actions utilize a self-hosted EC2 runner, providing a scalable and efficient environment for the CI/CD processes.
- **Dockerized Application:** Docker images are built during the CI/CD process and pushed to Amazon Elastic Container Registry (ECR), facilitating easy deployment and scalability.

**Data Extraction from S3:**
Data for training and testing the model is extracted from Amazon S3, ensuring a centralized and easily accessible data source.

**How to Use:**
1. Clone the repository.
2. Configure AWS credentials for S3 access.
3. Execute the CI/CD pipeline by pushing changes to the GitHub repository.
4. Monitor the automated workflow for successful model training and Docker image deployment.
5. Deploy the Dockerized application on Amazon EC2 for real-time safety gear detection.

**Contributions and Feedback:**
Contributions and feedback are welcome! Feel free to raise issues, submit pull requests, or provide suggestions to enhance the project.

**License:**
This project is licensed under the [MIT License](LICENSE).

**Acknowledgments:**
Special thanks to the YOLOv7 community and GitHub for providing robust tools for CI/CD and version control.

Let's make workplaces safer together! 🛡️👷‍♂️
