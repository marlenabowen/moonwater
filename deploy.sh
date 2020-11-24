#!/bin/bash

aws s3 cp --recursive build/ s3://moonwater-s3-terraform-bucket/
