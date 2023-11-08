#!/bin/bash

# Define the Bluetooth device address (replace with your Sony headphones address)
DEVICE_ADDRESS=$1

# Start Bluetooth discovery
bluetoothctl scan on

# Remove the device if it's already paired
bluetoothctl remove $DEVICE_ADDRESS

# Trust the device
bluetoothctl trust $DEVICE_ADDRESS

# Pair with the device
bluetoothctl pair $DEVICE_ADDRESS

# Connect to the device
bluetoothctl connect $DEVICE_ADDRESS
