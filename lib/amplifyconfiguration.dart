const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "eu-west-1:87509a4f-759a-4213-bd9e-062be3578d4f",
                            "Region": "eu-west-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "eu-west-1_7xNqgOKZO",
                        "AppClientId": "3ea0tv9ucgecnngthfd233mlvr",
                        "Region": "eu-west-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "flutter-workshpop-test-5767593132348-dev",
                        "Region": "eu-west-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "flutter-workshpop-test-5767593132348-dev",
                "region": "eu-west-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';