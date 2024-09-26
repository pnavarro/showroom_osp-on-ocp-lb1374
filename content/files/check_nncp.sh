#!/bin/bash

# Check if nncp resource name is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <nncp-resource-name>"
  exit 1
fi

nncp_resource_name="$1"

# Check if the nncp resource exists
if oc get nncp "$nncp_resource_name" -n openstack >/dev/null 2>&1; then
  echo "Exercise completed Succesfully!"
else
  echo "Resource '$nncp_resource_name' does not exist. Failing the exercise."
  exit 1
fi
