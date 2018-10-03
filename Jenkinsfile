node{

   stage('SCM Checkout'){

     git 'https://github.com/sekhar4536/test12.git'

   }

   stage('Compile-Package'){

      // Get maven home path

      def mvnHome =  tool name: 'Maven3.54', type: 'maven'   

      bat "${mvnHome}\\bin"
      bat "mvn clean"

   }

   stage('Email Notification'){

//      mail bcc: '', body: '''Hi Welcome to jenkins email alerts

  //    Thanks

    //  Hari''', cc: '', from: '', replyTo: '', subject: 'Jenkins Job', to: 'hari.kammana@gmail.com'

   }

   stage('Slack Notification'){

   //    slackSend baseUrl: 'https://hooks.slack.com/services/',

     //  channel: '#jenkins-pipeline-demo',

       //color: 'good', 

       //message: 'Welcome to Jenkins, Slack!', 

       //teamDomain: 'javahomecloud',

       //tokenCredentialId: 'slack-demo'

   }

}
