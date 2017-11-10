#!/usr/bin/sh
# This Scripts Zips all the folder starting prefix "Invoice" , EX:INVOICE_20171011 to INVOICE_20171011.zip
#This Script to be added in cron job at UNIX level to run every 10 mins . Nothing to be mentioned in Channel Level. 
echo "Zip all directories with starting with Prefix Invoice from path /informatica/Ariba/AX/Child_Trans_Invoice/Inbound/Download/" 
for file  in $(ls /informatica/Ariba/AX/Child_Trans_Invoice/Inbound/Download/ |grep Invoice |grep -v .zip)
do
/opt/java8/bin/jar -Mcvf /informatica/Ariba/AX/Child_Trans_Invoice/Inbound/Download/$file.zip /informatica/Ariba/AX/Child_Trans_Invoice/Inbound/Download/$file
rm -rf /informatica/Ariba/AX/Child_Trans_Invoice/Inbound/Download/$file
done
