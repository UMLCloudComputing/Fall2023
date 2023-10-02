Andrew A
https://infrasec.sh

Block Storage:
1. Manages data in fixed-sized blocks.
2. Often used for storing data at a low-level, like operating system files or databases.
3. Provides efficient read/write operations.
4. Requires a file system to organize and manage data.

Object Storage:
1. Manages data as objects with metadata.
2. Suitable for unstructured data like multimedia files, documents, and backups.
3. Offers scalable and cost-effective storage.
4. Doesn't require a file system and uses unique identifiers (e.g., URLs) for access.
5. Ideal for cloud-based storage and web applications.

## Simple Storage Service (S3)
Path on a linux filesystem
```bash
ls -l

sudo fdisk -l

blkid
```

When looking at a S3 object they us a "path". This is only a metadata path that can be used for filter different objects.

#### What is a S3 object?
It consists of:
- The data itself, a unique key (a user-defined name)
- Metadata that describes the object's attributes
    - Content type
    - Creation date
    - Storage class

### S3 Features
**Versioning**: Allows the retention of previous objects.
**Storage Classes**: Allows the reduction of cost of storage with the downside that retrieval will cost more.
**Website**: Allows the bucket to become a simple http server for hosting objects.
**Lifecycle Rules**: Remove old data based on filters, it can delete or change storage classes.
#### Permissions
Bucket settings by default block public access to the bucket.

Policies allow custom control on who (public, 3rd party, or internal) can access the bucket.

### Demo
Uploading and downloading S3 objects.
Requirements are to have the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) installed and [credentials configured](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).

```bash
# List all S3 buckets
aws s3 ls

# List the contents of the S3 bucket
aws s3 ls s3://c3-s3-demo

# Download the entire bucket locally
aws s3 sync s3://c3-s3-demo .

# Upload a local file the S3
echo "Hello $(date)" > my-s3-object.txt
aws s3 cp my-s3-object.txt s3://c3-s3-demo

# Download an individual file with
aws s3 cp s3://c3-s3-demo/my-s3-object.txt copy-of-my-s3-object.txt
```

This can also be done through the AWS console
https://s3.console.aws.amazon.com/s3/buckets/c3-s3-demo

## Identity and Access Management (IAM)

When a program needs access to access an AWS service (such as S3) how are permissions granted?

The user of roles authorizes an AWS service (Amplify, EC2, Lambda, etc.) to perform actions on your behalf.

https://us-east-1.console.aws.amazon.com/iamv2/home?region=us-east-1#/roles/details/ec2_s3_access_role

Policies are attached to roles & users to grant them access.

### Demo
Lets grant an EC2 instance permissions to view S3 objects.

```bash
# Connect to the instance
aws ssm start-session --target INSTANCE_ID

sudo su -
apt update && apt install -y awscli

aws s3 ls

aws s3 sync s3://c3-s3-demo .
```
