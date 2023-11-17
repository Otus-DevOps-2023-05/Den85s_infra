#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json


print json.dumps({
    "_meta": {
        "hostvars": {
            "appserver": {
                "ansible_host" : "158.160.105.136"
            },
            "dbserver": {
                "ansible_host" : "158.160.126.222"
            },
        }
    },
    "all": {
         "children": ["app", "db"]},
          "app": {"hosts": ["appserver"]},
          "db": {"hosts": ["dbserver"]}
        #

})
