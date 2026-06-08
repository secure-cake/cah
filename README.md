# Clear and Harden Repository 
Staging area for CAH resources. See Wiki for additional info/links.

https://github.com/secure-cake/cah/wiki

### Misc Content Links and Info
Linux:<br />
This is the [expect](https://github.com/secure-cake/cah/blob/main/linux/ssh-expect.sh) script used to issue remote commands to mulptiple Linux endpoints, with credential passthru. 
Before using this, install "expect" and "tk8.6" (Ubuntu/Debian): <br />
`sudo apt update`<br />
`sudo apt install expect`<br />
`sudo apt instal tk8.6`<br />

### Elastic Agent Deployment
```
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-9.3.3+build202604082258-windows-x86_64.zip -OutFile elastic-agent-9.3.3+build202604082258-windows-x86_64.zip 
Expand-Archive .\elastic-agent-9.3.3+build202604082258-windows-x86_64.zip -DestinationPath .
cd elastic-agent-9.3.3+build202604082258-windows-x86_64
.\elastic-agent.exe install --url=https://a9d10a058323477eb93caf2446a4a815.fleet.us-central1.gcp.cloud.es.io:443 --enrollment-token=WFFwTHJKMEJuV2h4Q2lZWkpLUUk6V3ZRSFBHcGtwYWJBVFhPVzJXX2pVUQ==
```

