#!/bin/bash

##########################
# Author: Himanshu
# Date: 07th-July
#
# Version: v1
#
# This Script will report the Aws resource usage
########################
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
set -x #debug mode
echo "========= AWS Resource Report: $(date '+%Y-%m-%d %H:%M:%S') ========="
# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls
# list EC2 Instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
# list AWS lambda
echo "Print list lambda functions"
aws lambda list-functions
# list IAM users
echo "Print List of IAM users"
aws iam list-users

