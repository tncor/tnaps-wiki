#!/bin/bash
s3cmd -rr --delete-removed sync ./_site/ s3://tnaps-wiki/
