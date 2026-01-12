#!/usr/bin/env python
# -*- coding: utf-8 -*-
# encoding=utf8
import requests

url = "https://api.clashofclans.com/v1/players/#QJYYCU8CQ"

payload = {}
headers = {
  'Authorization': ''
}

response = requests.request("GET", url, headers=headers, data=payload)

print(response.text)
