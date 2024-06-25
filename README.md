# Nginx EC2 Setup

This project provides a script to install and set up Nginx on an AWS EC2 instance using user data.

## User Data Script

The `user-data.sh` script contains the commands to install and configure Nginx.

## Launching an EC2 Instance with User Data

1. Open the EC2 Management Console.
2. Click on "Launch Instance".
3. Choose an Amazon Machine Image (AMI).
4. Select an instance type.
5. Configure instance details. In the "Advanced Details" section, paste the contents of `user-data.sh` into the "User data" field.
6. Add storage.
7. Add tags (optional).
8. Configure security groups to allow HTTP (port 80) access.
9. Review and launch the instance.

Once the instance is running, Nginx should be installed and running. You can verify this by accessing the instance's public IP address in a web browser.

## Additional Resources

For a detailed step-by-step guide, please refer to [my blog post](https://tonythomas.in/how-to-install-nginx-web-server-on-an-aws-ec2-instance-using-user-data/).