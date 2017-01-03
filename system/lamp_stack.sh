sudo apt-get -y update && sudo apt-get -y upgrade;

sudo apt-get install -y apache2;

sudo apt-get install -y mysql-server mysql-client;

sudo add-apt-repository ppa:ondrej/php;
sudo apt-get update;

echo -e "PHP \e[1;31m5.6\e[0m or \e[1;31m7.0\e[0m ?";
echo -e "\e[1;30mHint: Type \e[1;31m 'both' \e[1;30m to install PHP 5.6 and 7.0 \e[0m";

read phpversion;

if [[ $phpversion ==  "5.6" ]]; then
	sudo apt-get install -y libapache2-mod-php5.6 php5.6 php5.6-cli php5.6-cgi php5.6-common php5.6-curl php5.6-dev php5.6-gd php5.6-json php5.6-ldap php5.6-mbstring php5.6-mysql php5.6-mbstring.6-opcache php5.6-readline php5.6-xml;

	echo -e "Enabling PHP5.6";
	sudo a2enmod php5.6;
	echo -e "Done";

elif [[ $phpversion == "7.0" ]]; then
	sudo apt-get install -y libapache2-mod-php7.0 php7.0 php7.0-cli php7.0-cgi php7.0-common php7.0-curl php7.0-dev php7.0-gd php7.0-json php7.0-ldap php7.0-mbstring php7.0-mysql php7.0-opcache php7.0-readline php7.0-xml;

	echo -e "Enabling PHP7.0";
	sudo a2enmod php7.0;
	echo -e "Done";

elif [[ $phpversion == "both" ]]; then
	sudo apt-get install -y libapache2-mod-php5.6 php5.6 php5.6-cli php5.6-cgi php5.6-common php5.6-curl php5.6-dev php5.6-gd php5.6-json php5.6-ldap php5.6-mbstring php5.6-mysql php5.6-opcache php5.6-readline php5.6-xml libapache2-mod-php7.0 php7.0 php7.0-cli php7.0-cgi php7.0-common php7.0-curl php7.0-dev php7.0-gd php7.0-json php7.0-ldap php7.0-mbstring php7.0-mysql php7.0-opcache php7.0-readline php7.0-xml;

	echo -e "Enabling PHP5.6";
	sudo a2enmod php5.6;
	sudo a2dismod php7.0;
	echo -e "Done";
fi;

sudo a2enmod rewrite;

sudo service apache2 restart;