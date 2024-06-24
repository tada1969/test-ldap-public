#!/bin/bash
sed -i "s/$(hostnamectl hostname)/$(hostnamectl hostname | cut -d. -f1).atcreative.internal/g" /etc/hosts
hostnamectl set-hostname $(hostnamectl hostname | cut -d. -f1).atcreative.internal
yes '' | apt install freeipa-client -y
ipa-client-install --unattended --mkhomedir --no-ntp --principal=$FREEIPA_USERNAME --password=$FREEIPA_PASSWORD --force-join
sed -i '1 a default_shell = /bin/bash' /etc/sssd/sssd.conf
sed -i '1 a override_shell = /bin/bash' /etc/sssd/sssd.conf
systemctl restart sssd