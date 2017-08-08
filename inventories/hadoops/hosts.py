#!/usr/bin/env python


import sys, os, imp
# sys.path.append('..')
xinv_path = os.path.join(os.path.dirname(os.path.dirname(__file__)), "XInv.py")
XInv = imp.load_source('XInv', xinv_path)

this_path = os.path.dirname(os.path.realpath(__file__))
conf_path = os.path.join(os.path.dirname(os.path.dirname(this_path)), "conf")

XInv.XInv(host_files = [
    os.path.join(conf_path, "hosts.yml")
], group_files = [
    os.path.join(this_path, "groups.yml")
])