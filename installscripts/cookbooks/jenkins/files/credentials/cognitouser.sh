JENKINS_URL=http://$1:8080/ # localhost or jenkins elb url
AUTHFILE=/home/ec2-user/cookbooks/jenkins/files/default/authfile
JENKINS_CLI=/home/ec2-user/jenkins-cli.jar
echo "$0 $1 $2 "
#cat <<EOF | java -jar $JENKINS_CLI -s $JENKINS_URL -auth @$AUTHFILE update-credentials-by-xml system::system::jenkins "(global)" 642cdc8d-a9f4-4f80-b73c-863ccd522765
cat <<EOF | java -jar $JENKINS_CLI -s $JENKINS_URL -auth @$AUTHFILE create-credentials-by-xml system::system::jenkins "(global)"
<com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl>
  <scope>GLOBAL</scope>
  <id>SVC_ADMIN</id>
  <description>Jazz Admin User</description>
  <username>cognitouser</username>
  <password>cognitopasswd</password>
</com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl>
EOF
