#!/bin/bash
GC_DEBIAN_IMAGE=$(gcloud compute images list | grep debian | awk '{print $1}' | tail -n 1)
GC_DEBIAN_IMAGE=debian-12
GC_INSTANCE_NAME=proxy$(date +%Y%m%d%H%M%S)
gcloud compute instances create $GC_INSTANCE_NAME --image=$GC_DEBIAN_IMAGE --machine-type=n1-standard-1 --zone=asia-northeast1-a
gcloud compute instances describe $GC_INSTANCE_NAME --zone=asia-northeast1-a