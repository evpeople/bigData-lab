#!/bin/bash
systemctl stop firewalld 
systemctl disable firewalld
systemctl status firewalld
