FROM amazonlinux:2

RUN \
	yum update -y \
	&& yum install -y sudo iputils bind-utils procps-ng wget telnet nmap less groff jq unzip vim \
	&& curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
	&& unzip awscliv2.zip \
	&& sudo ./aws/install \
	&& /usr/local/bin/aws --version
