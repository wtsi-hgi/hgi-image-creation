#
# Upstream Openstack image settings for each supported distro
# 
# All supported distros should be listed in the DISTROS variable.
#
# In addition, each supported distro should have at least two variables set here: 
#   OS_SOURCE_IMAGE_<distro>              - a comma separated list of names of openstack image names or S3 object store image names (they are tried in order until one is found)
#   PACKER_SOURCE_IMAGE_USERNAME_<distro> - the username packer should use to initially login to the image
#
# In addition, a third optional variable can be set: 
#   IMAGE_SOURCE_URL_<distro>             - a URL from which to fetch the image if none of the specified OS_SOURCE_IMAGE names are found
#
export DISTROS=(artful zesty xenial trusty precise stretch jessie freebsd11)

# Note that each distro must also have a packer template file: subrepos/hgi-image-creation/packer/template-<distro>.json

###############################################################################
# Ubuntu Cloud Images 
# https://cloud-images.ubuntu.com/
###############################################################################
export OS_SOURCE_IMAGE_artful="Ubuntu 17.10 (Artful Aardvark) Daily Build [20171026.1]"
export IMAGE_SOURCE_URL_artful="https://cloud-images.ubuntu.com/artful/20171026.1/artful-server-cloudimg-amd64.img"
export PACKER_SOURCE_IMAGE_USERNAME_artful="ubuntu"

export OS_SOURCE_IMAGE_zesty="Ubuntu 17.04 (Zesty Zapus) Daily Build [20171102]"
export IMAGE_SOURCE_URL_zesty="https://cloud-images.ubuntu.com/zesty/20171102/zesty-server-cloudimg-amd64.img"
export PACKER_SOURCE_IMAGE_USERNAME_zesty="ubuntu"

export OS_SOURCE_IMAGE_xenial="Ubuntu 16.04 LTS (Xenial Xerus) Daily Build [20171028]"
export IMAGE_SOURCE_URL_xenial="https://cloud-images.ubuntu.com/xenial/20171028/xenial-server-cloudimg-amd64-disk1.img"
export PACKER_SOURCE_IMAGE_USERNAME_xenial="ubuntu"

export OS_SOURCE_IMAGE_trusty="Ubuntu 14.04.5 LTS (Trusty Tahr) Daily Build [20171101]"
export IMAGE_SOURCE_URL_trusty="https://cloud-images.ubuntu.com/trusty/20171101/trusty-server-cloudimg-amd64-disk1.img"
export PACKER_SOURCE_IMAGE_USERNAME_trusty="ubuntu"

export OS_SOURCE_IMAGE_precise="Ubuntu 12.04.5 LTS (Precise Pangolin) Daily Build [20170502]"
export IMAGE_SOURCE_URL_precise="https://cloud-images.ubuntu.com/precise/20170502/precise-server-cloudimg-amd64-disk1.img"
export PACKER_SOURCE_IMAGE_USERNAME_precise="ubuntu"

###############################################################################
# Debian 
# https://cdimage.debian.org/cdimage/openstack/
###############################################################################
export OS_SOURCE_IMAGE_stretch="debian-9.2.1-20171030-openstack-amd64"
export IMAGE_SOURCE_URL_stretch="https://cdimage.debian.org/cdimage/openstack/9.2.1-20171030/debian-9.2.1-20171030-openstack-amd64.qcow2"
export PACKER_SOURCE_IMAGE_USERNAME_stretch="debian"

export OS_SOURCE_IMAGE_jessie="debian-8.9.7-20171030-openstack-amd64"
export IMAGE_SOURCE_URL_jessie="https://cdimage.debian.org/cdimage/openstack/8.9.7-20171030/debian-8.9.7-20171030-openstack-amd64.qcow2"
export PACKER_SOURCE_IMAGE_USERNAME_jessie="debian"

###############################################################################
# FreeBSD cloudimage
# built from upstream installer ISO by:
#  https://gitlab.internal.sanger.ac.uk/hgi/freebsd-bsd-cloudinit-image-builder
###############################################################################
export OS_SOURCE_IMAGE_freebsd11="FreeBSD-11.1-RELEASE-amd64-cloud-init-dfe583cc"
export PACKER_SOURCE_IMAGE_USERNAME_freebsd11="beastie"
