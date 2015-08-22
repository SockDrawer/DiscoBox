##Usage
To run: `vagrant up`. Wait ages (about 30 mins). 

To connect to Discourse: `http://discourse.sockdrawer.local`
To view emails sent by discourse: `http://discourse.sockdrawer.local:1080`
To SSH into Discourse: `discourse.sockdrawer.local:2222`
to SSH into the underlying OS: `127.0.0.1:2222` using vagrant's default credentials

##Troubleshooting
You may need to run as administrator on Windows, or edit permissions on your hosts file: see https://github.com/cogitatio/vagrant-hostsupdater/issues/40 for details.