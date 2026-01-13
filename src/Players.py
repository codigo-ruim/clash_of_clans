#!/usr/bin/env python
# -*- coding: utf-8 -*-
# encoding=utf8
import requests
import os

url = "https://api.clashofclans.com/v1/players/#QJYYCU8CQ"

payload = {}
headers = {
  'Authorization': os.environ.get('COC_TOKEN', None)
}

response = requests.request("GET", url, headers=headers, data=payload)

print(response.text)
