#!/bin/bash
#
###################################
#Author: Surenkumar
#
#Date: 28th june 2024
#
#version: v1
#
#This script will report the AWS Resource usage
##################################



#AWS S3
#AWS EC2
#AWS Iam access
#AWS Lambda

resourceTracker="resourceTracker"

#list s3 buckets
echo "Print list of S3" >> $resourceTracker
aws s3 ls >> $resourceTracker

#list ec2 instances
echo "Print list of EC2-Instances" >> $resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> $resourceTracker

#list lambda functions
echo "Print list of Lambda Functions" >> $resourceTracker
aws lambda list-functions >> $resourceTracker


#list IAM users
echo "Print list of IAM Users" >> $resourceTracker
aws iam list-users >> $resourceTracker
