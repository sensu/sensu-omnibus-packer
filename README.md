# Sensu Omnibus Packer Templates

### What is this?

This is a very opinionated packer config + scripts which build AMIs for running
Sensu Omnibus builds.

### What's included?

Presently this project only includes templates for building CentOS 5 images,
using old RightScale AMIs as the basis for building a more up-to-date image,
suitable for building Sensu Omnibus packages.

### Why do we need this?

We have undertaken this kludge to produce a CentOS 5 AMI because:

* As of this writing CentOS 5 has not yet reached end of life cycle, which is
scheduled for March 17, 2017. As such we'd like to keep building CentOS 5
packages for the time being.

* Build automation around sensu-omnibus is using test-kitchen and the
  kitchen-ec2 driver to generate packages and upload them to S3. Therefore we
  need an AMI for each platform we build for.

* Known public AMIs for CentOS 5 use `root` as the login name

* As of version 1.2.0, kitchen-ec2 driver has a documented bug effectively
  preventing test-kitchen configuration from specifying `root` as the ssh
  username. Therefore we need to be able to login as `centos` user.

Hopefully at some point you, dear reader, will find this project after the above
rationale has grown stale and -- for the good of people everywhere -- mercifully
delete this project.