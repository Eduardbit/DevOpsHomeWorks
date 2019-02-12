#!/bin/bash

echo "Enter project directory:"
read pdir

if [ -d $pdir ]
then
  cd $pdir
else
  echo "Directory not found!"
  exit
fi

mvn package
cd target/

if [ -e *.war ]
then
  echo "*.war file(s) created"
else
  echo "ERROR: *.war files not created"
  exit
fi

if scp -B *.war root@hw3-maven-2:/var/lib/tomcat8/webapps/
then
  echo "This file(s) was copied to the Tomcat Server!" 
else
  echo "ERROR: file(s) is not copy to Tomcat Server"
  exit
fi

