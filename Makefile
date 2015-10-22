all:
	yes | sudo gcloud components update
	yes | sudo gcloud components update beta
	yes | sudo gcloud components update kubectl
	sudo apt-get install -y -qq unzip
	wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.27.zip
	sudo unzip -qq -d /opt/google google_appengine_1.9.27.zip
	rm google_appengine_1.9.27.zip
	wget https://storage.googleapis.com/appengine-sdks/featured/appengine-java-sdk-1.9.27.zip
	sudo unzip -qq -d /opt/google appengine-java-sdk-1.9.27.zip
	rm appengine-java-sdk-1.9.27.zip
	sudo apt-get install -y -qq openjdk-7-jdk
	wget http://archive.apache.org/dist/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
	sudo tar -xzvf apache-maven-3.3.3-bin.tar.gz -C /opt
	rm apache-maven-3.3.3-bin.tar.gz
	sudo echo "export PATH=$$PATH:/opt/google/google_appengine/:/usr/local/share/google/google-cloud-sdk/bin/" | sudo tee /etc/profile.d/env_vars.sh > /dev/null
	sudo echo "export M3=/opt/apache-maven-3.3.3;export M3_HOME=\$M3; export PATH=\$PATH:\$M3/bin" | sudo tee -a /etc/profile.d/env_vars.sh > /dev/null
