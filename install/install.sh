#!/bin/bash

echo "Copying dnsmasq config..."
sudo cp dnsmasq.conf /etc/dnsmasq.conf

echo "Restarting services..."
sudo systemctl restart dnsmasq
sudo systemctl restart apache2

echo "✅ PXE Boot Server is Ready!"
