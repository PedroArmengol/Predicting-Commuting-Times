# Predicting_Communting_Times
This repository has the purpose of predicting commuting times using U.S Census Data about Origin and Destination. 

Because the information of distances and relationships between counties has million (even billions) of rows, I used Apache Spark to process the information (through PySpark). The algorithms are run in a AWS-CLI cluster. After, the estimations the predictive model is stores with a Docker image in a EC2 instance.

Later on, a insteractive userface is build in Shiny and installed within a Docker image in a EC2 instance.

Finally, the interactive userface can access the stored predictive model through the communication of the two docker instances, such that a user is capable of input values of predictive features (e.i number of workers in the county of destination) and obtain a prediction based on those values and the previously obtained weights.

Thank you for your time
