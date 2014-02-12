#!/usr/bin/python
import os
import sys
import subprocess
import shlex
import glob
import shutil
import logging

def info(msg):
    logging.info(msg)
def debug(msg):
    logging.debug(msg)
def warn(msg):
    logging.warning(msg)

def flatten(lst):
    """
    Returns a list containing the items found in sublists of lst.
    """
    return [item for sublist in lst for item in sublist]

android_shell_cmd = 'adb -s %(device_id)s shell '
mic_shell_cmd     = 'ssh %(device_id)s ' 
mkdir_base        = ' mkdir -p %(remote_path)s'
extract_base      = " cd %(remote_path)s; %(cmd_prefix)s tar -xjvf %(filename)s; rm %(filename)s"

android_properties = { 
        'shell_cmd'   : android_shell_cmd,
        'mkdir_cmd'   : android_shell_cmd + mkdir_base,
        'extract_cmd' : android_shell_cmd + extract_base,
        'push_cmd'    : 'adb -s %(device_id)s push %(filename)s %(remote_path)s',
        'obj-dir'     : 'obj-ia32',
        }

mic_properties = {
        'shell_cmd'   : mic_shell_cmd,
        'mkdir_cmd'   : mic_shell_cmd + mkdir_base,
        'extract_cmd' : mic_shell_cmd + extract_base,
        'push_cmd'    : 'scp %(filename)s %(device_id)s:%(remote_path)s',
        'obj-dir'     : 'obj-mic',
        }

def archive(env):
    """
    Builds and executes the command line for building a tar archive to send to 
    the device. May return a CalledProcessError exception.
    """
    savedPath = os.getcwd()
    os.chdir(env['root'])
    tar = shlex.split("tar -cjvf %(filename)s makefile *.sh *.reference *.ref *.master %(obj-dir)s/* " % env)
    to_tar = flatten([glob.glob(arg) if '*' in arg else [arg] for arg in tar])
    info((to_tar))
    subprocess.check_call(to_tar)
    os.chdir(savedPath)

def execute(cmd, env):
    """
    Execute a shell command. May return a CalledProcessError exception.
    """
    evaluated_cmd = shlex.split(cmd % env)
    info(evaluated_cmd)
    subprocess.check_call(evaluated_cmd)

def walk(top):
    """
    Set up the env dictionary, then iterate the directory structure, 
    finding directories of tools that need to be installed for testing.
    """
    try:
        remote_kit_base = os.environ['REMOTE_ROOT']
        cmd_prefix = os.environ.get('CMD_PREFIX', '')
        device_type = os.environ['DEVICE_TYPE']
        device_id = os.environ['REMOTE_DEVICE']
    except KeyError:
        warn("Some required environment variables aren't set. Make sure CMD_PREFIX, REMOTE_DEVICE and REMOTE_ROOT are defined'")
        return 1
    if device_type == 'android':
        prop = android_properties
    elif device_type == 'mic':
        prop = mic_properties
    else:
        print "Error: unexpected device type, installer cannot continue. Device type is '%s'." % device_type
        return 1
    env = { 'device_type': device_type,
            'device_id'  : device_id,
            'cmd_prefix' : cmd_prefix,
            'obj-dir'    : prop['obj-dir'],
    }

    for root, dirs, files in os.walk(top):
        if prop['obj-dir'] in dirs:
            info('in dir ' + root)
            env['root'] = root
            env['filename'] = os.path.basename(root) + ".tar.bz2"
            env['remote_path'] = os.path.join(remote_kit_base, "source", "tools",  os.path.basename(root))
            try:
                archive(env)
                execute(prop['mkdir_cmd'], env)
                execute(prop['push_cmd'], env)
                execute(prop['extract_cmd'], env)
            except subprocess.CalledProcessError as cpe:
               warn('Could not install in directory ' + root + '. Error code = ' + str(cpe.returncode) + '. cmd = ' + str(cpe.cmd) + '.' )
               return 1

    return 0

if __name__=="__main__":
    logging.root.setLevel(logging.DEBUG)
    exit(walk(os.getcwd()))

