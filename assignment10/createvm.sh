#!/usr/bin/env bash
echo $1 > token
VM_NAME=ci-vm
gcloud compute instances create $VM_NAME  --project=pradeeppingili-prj --zone=us-central1-a --machine-type=e2-medium  --network-interface=network=my-vp,subnet=us-central1-subnet --tags=github-test --access-token-file=token-file
