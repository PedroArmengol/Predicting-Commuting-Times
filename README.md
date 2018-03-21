# Predicting_Communting_Times
This repository has the purpose of predicting commuting times using U.S Census Data about Origin and Destination. 

Because the information of distances and relationships between counties has million (even billions) of rows, I used Apache Spark to process the information (through PySpark). The algorithms are run in a AWS-CLI cluster. After, the estimations the predictive model is stores with a Docker image in a EC2 instance.

Later on, a insteractive userface is build in Shiny and installed within a Docker image in a EC2 instance.

Finally, the interactive userface can access the stored predictive model through the communication of the two docker instances, such that a user is capable of input values of predictive features (e.i number of workers in the county of destination) and obtain a prediction based on those values and the previously obtained weights.

Thank you for your time

To deploy this interactive userface in any EC2 instance please follow the following steps:
(following the work of Alex Engler in https://github.com/alexcengler/docker-shiny)

*SHH into EC2
ssh -i keyname.pem ec2-user@instance-DNS

*Install docker

sudo yum update -y
sudo yum install -y docker
sudo yum install -y git

*Give permissions 

sudo service docker start
sudo usermod -a -G docker ec2-user

*Download the App

git clone https://github.com/PedroArmengol/Predicting-Commuting-Times.git

*Build Docker image

cd docker-shiny
docker build -t shiny-app .

*Run the Shiny interface

docker run -p 3838:3838 --name shiny-app-deploy shiny-app

*Access to the Shiny interface from your browser to the interface with: DNS:3838
