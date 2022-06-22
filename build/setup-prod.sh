# Get the private key from the environment variable
#echo "Setting up Production Connection..."
#mkdir keys
#echo $SFDC_SERVER_KEY | base64 -d > keys/server.key

# Authenticate to salesforce
#echo "Authenticating..."
#sfdx force:auth:jwt:grant --clientid $SFDC_PROD_CLIENTID --jwtkeyfile keys/server.key --username $SFDC_PROD_USER --setdefaultdevhubusername -a DevHub
echo "################Authenticating with Org"
echo $url > login.txt
sfdx auth:sfdxurl:store -a deployment -f login.txt
rm -rf login.txt
