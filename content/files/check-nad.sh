#!/bin/bash

# Check if the NetworkAttachmentDefinition 'tenant' exists
if oc get Network-Attachment-Definitions tenant -n openstack >/dev/null 2>&1; then
  echo "Exercise completed Succesfully!"
else
  echo "Error: NetworkAttachmentDefinition 'tenant' does not exist."
  exit 1
fi