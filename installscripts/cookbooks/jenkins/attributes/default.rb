default['jenkins']['home'] = '/var/lib/jenkins'
default['jenkinsadmin']['file'] = "#{node['jenkins']['home']}/users/jenkinsadmin/config.xml"
default['jenkinsadmin']['fullName'] = 'Jenkins Admin'
default['jenkinsadmin']['email'] = 'harin.jose@ust-global.com'
default['jenkins']['user'] = 'jenkinsadmin'
default['jenkins']['password'] = 'Jazzadmin01'
default['server']['privateip']='10.0.0.59'
default['slave']['publicip']='10.0.0.33'
default['client']['url'] = "http://#{node['server']['privateip']}:8080/jnlpJars/jenkins-cli.jar"
#default['client']['jar'] = '/home/ec2-user/jenkins-cli.jar'
default['client']['jar'] = '/home/ec2-user/cookbooks/jenkins/files/default/jenkins-cli.jar'
default['node']['configurescript'] = '/home/ec2-user/cookbooks/jenkins/files/node/create-node.sh'
default['authfile']='/home/ec2-user/cookbooks/jenkins/files/default/authfile'


default['jenkins']['propertyfile']='/home/ec2-user/cookbooks/jenkins/files/node/jenkins-conf.properties'
default['jenkins']['propertyfiletarget']='/tmp/jenkins-conf.properties'
default['jenkins']['configfile']='/home/ec2-user/cookbooks/jenkins/files/node/config.xml'
default['jenkins']['configfiletarget']='/var/lib/jenkins/config.xml'
default['jenkins']['scriptApprovalfile']='/home/ec2-user/cookbooks/jenkins/files/scriptapproval/scriptApproval.xml'
default['jenkins']['scriptApprovalfiletarget']="#{node['jenkins']['home']}/scriptApproval.xml"
default['bitbucketelb']='jazz13-bitbucketelb-977486464.us-east-1.elb.amazonaws.com'
default['jenkinselb']='jazz13-jenkinselb-1989578044.us-east-1.elb.amazonaws.com'
default['region']='us-east-1'
default['git_branch']='master'
default['jenkins']['SES-defaultSuffix']='defaultSuffixValue'
default['jenkins']['SES-smtpAuthUsername']='smtpAuthUsernameValue'
default['jenkins']['SES-smtpAuthPassword']='smtpAuthPasswordValue'
default['jenkins']['SES-smtpHost']='email-smtp.us-east-1.amazonaws.com'
default['jenkins']['SES-useSsl']='true'
default['jenkins']['SES-smtpPort']='25'
