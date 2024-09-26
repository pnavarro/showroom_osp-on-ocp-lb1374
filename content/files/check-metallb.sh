#!/bin/bash

# Check for L2Advertisement with name 'internalapi'
l2advertisement_exists=$(oc get L2Advertisement internalapi --ignore-not-found -n metallb-system)

# Check for IPAddressPool with name 'internalapi'
ipaddresspool_exists=$(oc get IPAddressPool internalapi --ignore-not-found -n metallb-system)

# Logic to determine if both resources exist
if [[ -n "$l2advertisement_exists" && -n "$ipaddresspool_exists" ]]; then
    echo "Exercise completed successfully!"
else
    echo "Error: One or both of the required resources do not exist."
    
    if [[ -z "$l2advertisement_exists" ]]; then
        echo "Missing L2Advertisement: internalapi"
    fi

    if [[ -z "$ipaddresspool_exists" ]]; then
        echo "Missing IPAddressPool: internalapi"
    fi
fi
