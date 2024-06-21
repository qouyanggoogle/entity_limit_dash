sudo crontab -l > mycron;

echo "0 10 * * * sudo -u [your-ldap-or-userId] bash {your-absolute-path}/run.sh >> {your-absolute-path}/starthinker.out 2>&1" >> mycron;

sudo crontab mycron;

rm mycron;

