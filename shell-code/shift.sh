#!/bin/bash

echo "Parameter 1 is ${1}"
echo "Parameter 2 is ${2}"
echo "Parameter 3 is ${3}"

shift 

echo "Parameter 1 is ${1}"
echo "Parameter 2 is ${2}"
echo "Parameter 3 is ${3}"

shift 2

echo "Parameter 1 is ${1}"
echo "Parameter 2 is ${2}"
echo "Parameter 3 is ${3}"