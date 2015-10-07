all:
	yes | sudo gcloud components update
	yes | sudo gcloud components update beta
	yes | sudo gcloud components update kubectl
	sudo apt-get install -y -qq unzip
	wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.27.zip
	sudo unzip -qq -d /opt/google google_appengine_1.9.27.zip
	rm google_appengine_1.9.23.zip
	wget https://storage.googleapis.com/appengine-sdks/featured/appengine-java-sdk-1.9.27.zip
	sudo unzip -qq -d /opt/google appengine-java-sdk-1.9.27.zip
	rm appengine-java-sdk-1.9.27.zip
	sudo echo "export PATH=$$PATH:/opt/google/google_appengine/:/usr/local/share/google/google-cloud-sdk/bin/" | sudo tee /etc/profile.d/env_vars.sh > /dev/null
