#!/usr/bin/python

# ------------------------------------------------------------------------------
#
# Automatic generation of a completion function for stoke for zsh.
# Running this file will produce bin/_stoke, which can be used by zsh.  If the
# env variable ZSH_COMPLETION_DIR points to a directory, then _stoke is also
# copied to that directory.
#
# The completion function code (not the generation script) is loosely based on
# https://github.com/zsh-users/zsh-completions/blob/master/src/_git-flow
#
# Author: Stefan Heule <sheule@cs.stanford.edu>
#
# ------------------------------------------------------------------------------

import sys
import re
import subprocess
import os
import shutil

class Arg(object):
  def __init__(self, arg, desc=""):
    self.name = arg
    self.desc = desc
  def add_desc(self, desc):
    self.desc += desc
    self.desc = self.desc.strip()
  def args(self):
    m = re.search("(-[^ ]*)( (-[^ ]*))?", self.name)
    if m.group(3) != None:
      return [m.group(1), m.group(3)]
    return [m.group(1)]
  def extra(self):
    return self.name[len(" ".join(self.args())):]
  def __repr__(self):
    return self.name

def main():
  # generate stoke zsh completion file
  filename = '_stoke'
  localfile = os.path.join(os.path.dirname(os.path.realpath(__file__)), ".." , "bin", filename)
  f = open(localfile, 'w')
  output_main(f)
  output_function("extract", f)
  output_function("replace", f)
  output_function("testcase", f)
  output_function("search", f)
  output_function("debug cfg", f)
  output_function("debug cost", f)
  output_function("debug sandbox", f)
  output_function("debug search", f)
  output_function("debug state", f)
  output_function("debug verify", f)
  output_function("benchmark cfg", f)
  output_function("benchmark cost", f)
  output_function("benchmark sandbox", f)
  output_function("benchmark search", f)
  output_function("benchmark state", f)
  output_function("benchmark verify", f)
  f.close()

  # if ZSH_COMPLETION_DIR is set, copy file there
  if os.environ.has_key('ZSH_COMPLETION_DIR'):
    d = os.environ.get('ZSH_COMPLETION_DIR')
    if os.path.isdir(d):
      shutil.copy2(localfile, os.path.join(d, filename))

def output_function(f, fid):
  print >>fid, "__stoke_" + f.replace(" ", "_") + "()\n{"
  process(get_output(f), fid)
  print >>fid, "}\n"

def get_output(cmd):
  return run("stoke " + cmd + " --help | grep \"^  \(-\| \)\"")

def run(cmd):
  p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
  out = ""
  for line in p.stdout.readlines():
    out += line
  return out

def esc(s):
  return s.replace("{", "\\{").replace("}", "\\}").replace("'", "")

def process(data, fid):
  args = []
  for line in data.split("\n"):
    if line.startswith("    "):
      arg.add_desc(line[4:].strip())
    elif len(line) > 3:
      arg = Arg(line.strip())
      args.append(arg)
  res = []
  for arg in args:
    if len(arg.args()) > 1:
      a = "{'" + "','".join(arg.args()) + "'}'"
    else:
      a = "'" + arg.args()[0]

    extra = arg.extra()

    # no argument, just a flag
    if extra == "":
      res.append(a + "[" + esc(arg.desc) + "]::'")
      continue

    # number argument
    m = re.search('<(int|double|percent|line|value|bytes)>$', extra)
    if m != None:
      res.append(a + "[" + esc(arg.desc + "; <"+m.group(1)+">") + "]:num:'")
      continue

    # file argument
    m = re.search('<(path/to/(file|bin)\.?(.*))>$', extra)
    if m != None:
      if len(m.group(3)) > 0:
        res.append(a + "[" + esc(arg.desc + "; <"+m.group(2)+">")+"]:file:_files -g \"*."+m.group(3)+"\"'")
      else:
        res.append(a + "[" + esc(arg.desc + "; <"+m.group(2)+">")+"]:file:_files'")
      continue

    # dir argument
    m = re.search('<(path/to/dir|dir)>$', extra)
    if m != None:
      res.append(a + "[" + esc(arg.desc + "; <path/to/dir>")+"]:dir:_files -/'")
      continue

    # list of options
    m = re.search('\((.*)\)$', extra)
    if m != None:
      options = m.group(1).split("|")
      res.append(a + "[" + esc(arg.desc) + "]:argument:(" + " ".join(options) + ")'")
      continue

    # arguments without completion
    m = re.search('({.*}|<move_type>|<arg1 arg2 ... argn>|<string>)$', extra)
    if m != None:
      options = m.group(1).split("|")
      res.append(a + "[" + esc(arg.desc + "; "+m.group(1))+"]:argument:'")
      continue

    print "not found: " + arg.name
    sys.exit(1)

  print >>fid, "  _arguments \\"
  print >>fid, "    " + " \\\n    ".join(res)

def output_main(fid):
  print >>fid, """#compdef stoke
# ------------------------------------------------------------------------------
#
# Completion script for stoke.
#
# Author: Stefan Heule <sheule@cs.stanford.edu>
#
# ------------------------------------------------------------------------------

_stoke ()
{
  local curcontext="$curcontext" state line
  typeset -A opt_args

  _arguments -C \\
    ':command:->command' \\
    '*::options:->options'

  case $state in
    (command)

      local -a subcommands
      subcommands=(
        'extract':'extract the contents of a binary file'
        'replace':'replace the contents of a binary file'
        'search':'run STOKE search'
        'testcase':'generate a STOKE testcase file'
        'debug':'collection to help understand and debug STOKE'
        'benchmark':'benchmark different aspects of STOKE'
      )
      _describe -t commands 'git flow' subcommands
    ;;

    (options)
      case $line[1] in

        (extract)
          __stoke_extract
        ;;

        (replace)
          __stoke_replace
        ;;

        (testcase)
          __stoke_testcase
        ;;

        (search)
          __stoke_search
        ;;

        (debug)
          __stoke_debug
        ;;

        (benchmark)
          __stoke_benchmark
        ;;

      esac
    ;;
  esac
}

__stoke_benchmark ()
{
  local curcontext="$curcontext" state line
  typeset -A opt_args

  _arguments -C \\
    ':command:->command' \\
    '*::options:->options'

  case $state in
    (command)

      local -a subcommands
      subcommands=(
        'cfg':'benchmark Cfg::recompute() kernel'
        'cost':'benchmark Cost::operator() kernel'
        'sandbox':'benchmark Sandbox::run() kernel'
        'search':'benchmark Transforms::modify() kernel'
        'state':'benchmark Memory::copy_defined() kernel'
        'verify':'benchmark Verifier::verify() kernel'
      )
      _describe -t commands 'stoke debug' subcommands
    ;;

    (options)
      case $line[1] in

        (cfg)
          __stoke_benchmark_cfg
        ;;

        (cost)
          __stoke_benchmark_cost
        ;;

        (sandbox)
          __stoke_benchmark_sandbox
        ;;

        (search)
          __stoke_benchmark_search
        ;;

        (state)
          __stoke_benchmark_state
        ;;

        (verify)
          __stoke_benchmark_verify
        ;;

      esac
    ;;
  esac
}

__stoke_debug ()
{
  local curcontext="$curcontext" state line
  typeset -A opt_args

  _arguments -C \\
    ':command:->command' \\
    '*::options:->options'

  case $state in
    (command)

      local -a subcommands
      subcommands=(
        'cfg':'generate the control flow graph for a function'
        'cost':'evaluate a function using a STOKE cost function'
        'sandbox':'step through a function execution'
        'search':'perform a program transformation'
        'state':'check bit-wise operations'
        'verify':'check the equivalence of two functions'
      )
      _describe -t commands 'stoke debug' subcommands
    ;;

    (options)
      case $line[1] in

        (cfg)
          __stoke_debug_cfg
        ;;

        (cost)
          __stoke_debug_cost
        ;;

        (sandbox)
          __stoke_debug_sandbox
        ;;

        (search)
          __stoke_debug_search
        ;;

        (state)
          __stoke_debug_state
        ;;

        (verify)
          __stoke_debug_verify
        ;;

      esac
    ;;
  esac
}
"""


if __name__ == '__main__':
  main()
