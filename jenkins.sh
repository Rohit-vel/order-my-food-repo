#!/bin/bash
#sudo yum -y update

#echo "Install Java JDK 11"
#yum remove -y java
#yum install -y java-11-openjdk
#amazon-linux-extras install java-openjdk11

#echo "Install Node JS"
#curl -sL https://rpm.nodesource.com/setup_16.x | bash -
#sudo yum install nodejs -y
#sudo yum install gcc-c++ make 

#echo "Installing Angular CLI"
#sudo npm install -g @angular/cli

#echo "Install git"
#yum install -y git

#echo "Install Docker engine"
#yum update -y
#yum install docker -y
#sudo chkconfig docker on
#sudo service docker start

#echo "Install Jenkins"
#sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
#sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
#kill -9 4380
#sudo yum upgrade -y
#yum install -y jenkins
#sudo usermod -a -G docker jenkins
#sudo chkconfig jenkins on
#sudo systemctl start jenkins
#****************************************

#!/bin/bash
sudo yum -y update

echo "Install Java JDK 11"
sudo yum remove -y java
sudo yum install -y java-11-openjdk

echo "Install Maven"
sudo yum install -y maven

echo "Install Node JS"
sudo curl -sL https://rpm.nodesource.com/setup_16.x | bash -
sudo yum install nodejs -y
sudo yum install gcc-c++ make

echo "Installing Angular CLI"
sudo npm install -g @angular/cli


echo "Install git"
sudo yum install -y git

echo "Install Docker engine"
sudo yum update -y
sudo yum install docker -y
#sudo usermod -a -G docker jenkins
#sudo service docker start
#sudo chkconfig docker on

echo "Install Jenkins"
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo usermod -a -G docker jenkins
sudo service docker start
