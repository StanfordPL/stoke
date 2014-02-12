#!/usr/bin/python
import os
import sys
import subprocess
from subprocess import Popen, PIPE, STDOUT

def figureOutKitLocation():
    working_dir = os.environ['CURDIR']
    local_kit_base = os.environ['PIN_ROOT']
    remote_kit_base = os.environ['REMOTE_ROOT']
    local_kit_path = os.path.realpath(os.path.join(working_dir, local_kit_base))
    remote_kit_path = os.path.join(remote_kit_base, os.path.relpath(working_dir, local_kit_path))
    return remote_kit_path

def execute_command():
    device_id = os.environ['REMOTE_DEVICE']
    remote_kit_path = figureOutKitLocation()
    ssh_cmd = "ssh -T " + device_id
    test_cmd = "cd " + remote_kit_path + " ; " + "".join(sys.argv[2:])
    sub = subprocess.Popen(ssh_cmd, shell=True, stdin = PIPE, stdout = PIPE, stderr = STDOUT)
    out = sub.communicate(input=test_cmd)[0]
    print out
    exit(sub.returncode)

if __name__=="__main__":
    execute_command()
