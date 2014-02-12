#!/usr/bin/python
import logging
import os
import sys
import subprocess
import shlex
from subprocess import Popen, PIPE, STDOUT, call

import re

local_kit_base = os.environ['PIN_ROOT']


def info(msg):
    logging.info(msg)
def debug(msg):
    logging.debug(msg)
def warn(msg):
    logging.warning(msg)

def extractErrorlevel(output):
    errorlevel_re = re.compile(r'^-FIN-\s(\d+)', re.MULTILINE)
    result = errorlevel_re.search(output)
    if result is None:
        errorlevel = 255
        warn("no errorlevel found, probably an error in script")
    else:
        errorlevel = int(result.group(1))
    info("Errorlevel is: " + str(errorlevel))
    return errorlevel

def extractActualCommandOutput(output):
    trim_re = re.compile(r'^===PROLOGUE END===(.*)echo -FIN-', re.DOTALL + re.MULTILINE)
    out = trim_re.search(output).group(1)
    return out

def figureOutKitLocation(working_dir):
    
    remote_kit_base = os.environ['REMOTE_ROOT']
    local_kit_path = os.path.realpath(os.path.join(working_dir, local_kit_base))
    remote_kit_path = os.path.join(remote_kit_base, os.path.relpath(working_dir, local_kit_path))
    debug( "kit location is: " + remote_kit_path)
    # now we will figure out the location of libgnustl_shared.so in the kit...
    remote_kit_stl_path = os.path.join(os.environ['REMOTE_ROOT'], 'ia32/stl')
    return (remote_kit_path, remote_kit_stl_path)

def getDevSerialNumber():
    device_serial = os.environ['REMOTE_DEVICE']
    if device_serial:
        result = ["-s", device_serial,]
    else:
        result = ['',]
    debug('Serial is ' + " ".join(result))
    return result

def execute_command():
    #build tests on host machine
    command_line = " ".join(sys.argv[2:]) + '\n'

    (remote_kit_path, remote_kit_stl_path) = figureOutKitLocation(
            working_dir = os.environ['CURDIR'],)

    subprocess_cmd = ['adb',] + getDevSerialNumber() + ['shell',]
    info((subprocess_cmd))
    #run tests on device
    p = subprocess.Popen( subprocess_cmd, stdin=PIPE, stdout=PIPE, stderr=STDOUT)
    prologue = """cd %(kit)s
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:%(stl_lib_path)s
    export PS1=#
    echo ===PROLOGUE END===
    """ % {"kit": remote_kit_path, "stl_lib_path": remote_kit_stl_path, }

    # fg because sometimes pin fails with a SIGSTOP instead of a SIGSEGV
    epilogue = """echo -FIN- $?
    fg
    exit
    """

    shell_commands = prologue + command_line + epilogue
    stdo = p.communicate(shell_commands)[0]
    if p.returncode != 0 :
        print stdo
        exit(p.returncode)
    debug(stdo)
    errorlevel = extractErrorlevel(stdo)
    out = extractActualCommandOutput(stdo)

    # debug_re = re.compile(r'^', re.MULTILINE)
    # foo = re.sub(debug_re, 'debug >> ', shell_commands)

    print out
    exit(errorlevel)

if __name__=="__main__":
    logging.root.setLevel(logging.WARNING)
    execute_command()

