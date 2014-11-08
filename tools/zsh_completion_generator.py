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


# ------------------------------------------
# main entry point
# ------------------------------------------

def main():
  # build an AST with all the commands / arguments
  cmd = get_command()

  # show AST
  # print cmd

  handlers = [ZshHandler()]

  # let each handler output it's file
  for handler in handlers:
    handler.handle(cmd)
    handler.finish()

  return



# ------------------------------------------
# handler class
# ------------------------------------------

# abstract handler that writes a completion script to a file
# all actual handling of writing out the script is left abstract
class Handler(object):
  def __init__(self, filename):
    self.filename = filename
    self.full_filename = os.path.join(os.path.dirname(os.path.realpath(__file__)), ".." , "bin", filename)
    self.file = open(self.full_filename, 'w')

  def handle(self, command):
    pass # to be implemented

  def writeln(self, line):
    print >>self.file, line

  def finish(self):
    self.file.close()



# ------------------------------------------
# a handler for zsh completion
# ------------------------------------------

class ZshHandler(Handler):
  def __init__(self):
    super(ZshHandler, self).__init__("_stoke")

  def handle(self, command):
    def aux(command):
      if command.has_subcommands():
        self.write_cmd(command)
        for sub in command.subcommands:
          aux(sub)
      else:
        self.write_arguments(command.name, command.arguments)
    self.write_header()
    aux(command)

  def write_cmd(self, command):
    assert len(command.arguments) == 0
    assert len(command.subcommands) > 0
    subhelp = []
    subrun = []
    for sub in command.subcommands:
      subhelp.append("'" + sub.name + "':'" + sub.help + "'")
      r = "(" + sub.name + ")"
      r += "\n          " + "_" + sub.full_name().replace(" ", "_")
      r += "\n        ;;"
      subrun.append(r)
    self.writeln("_" + command.full_name().replace(" ", "_") + """ ()
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
        """ + "\n        ".join(subhelp) + """
      )
      _describe -t commands 'stoke' subcommands
    ;;

    (options)
      case $line[1] in

        """ + "\n\n        ".join(subrun) + """

      esac
    ;;
  esac
}""")

  def write_arguments(self, name, args):
    def esc(s):
      return s.replace("{", "\\{").replace("}", "\\}").replace("'", "")
    self.writeln("_stoke_" + name.replace(" ", "_") + "()\n{")
    res = []
    for arg in args:
      if len(arg.get_parameters()) > 1:
        a = "{'" + "','".join(arg.get_parameters()) + "'}'"
      else:
        a = "'" + arg.get_parameters()[0]

      usage = arg.get_usage()

      # no argument, just a flag
      if usage == "":
        res.append(a + "[" + esc(arg.desc) + "]::'")
        continue

      # number argument
      m = re.search('<(int|double|percent|line|value|bytes)>$', usage)
      if m != None:
        res.append(a + "[" + esc(arg.desc + "; <"+m.group(1)+">") + "]:num:'")
        continue

      # file argument
      m = re.search('<(path/to/(file|bin)\.?(.*))>$', usage)
      if m != None:
        if len(m.group(3)) > 0:
          res.append(a + "[" + esc(arg.desc + "; <"+m.group(2)+">")+"]:file:_files -g \"*."+m.group(3)+"\"'")
        else:
          res.append(a + "[" + esc(arg.desc + "; <"+m.group(2)+">")+"]:file:_files'")
        continue

      # dir argument
      m = re.search('<(path/to/dir|dir)>$', usage)
      if m != None:
        res.append(a + "[" + esc(arg.desc + "; <path/to/dir>")+"]:dir:_files -/'")
        continue

      # list of options
      m = re.search('\((.*)\)$', usage)
      if m != None:
        options = m.group(1).split("|")
        res.append(a + "[" + esc(arg.desc) + "]:argument:(" + " ".join(options) + ")'")
        continue

      # arguments without completion
      m = re.search('({.*}|<move_type>|<arg1 arg2 ... argn>|<string>)$', usage)
      if m != None:
        options = m.group(1).split("|")
        res.append(a + "[" + esc(arg.desc + "; "+m.group(1))+"]:argument:'")
        continue

      # no match, just add default help
      print >> sys.stderr, "WARNING: Argument with unknown usage found: " + arg.name
      res.append(a + "[" + esc(arg.desc) + "]:argument:'")

    self.writeln("  _arguments \\")
    self.writeln("    " + " \\\n    ".join(res))
    self.writeln("}\n")

  def write_header(self):
    self.writeln("""#compdef stoke
# ------------------------------------------------------------------------------
#
# Completion script for stoke.
#
# NOTE: Automatically generated, do not modify!
#
# Author: Stefan Heule <sheule@cs.stanford.edu>
#
# ------------------------------------------------------------------------------
""")

  def finish(self):
    super(ZshHandler, self).finish()
    # if ZSH_COMPLETION_DIR is set, copy file there
    if os.environ.has_key('ZSH_COMPLETION_DIR'):
      d = os.environ.get('ZSH_COMPLETION_DIR')
      if os.path.isdir(d):
        shutil.copy2(self.full_filename, os.path.join(d, self.filename))



# ------------------------------------------
# AST classes
# ------------------------------------------

# one argument to a given command
class Arg(object):
  def __init__(self, arg, desc=""):
    self.name = arg
    self.desc = desc

  # extend the description as necessary
  def add_desc(self, desc):
    self.desc += " " + desc.strip()
    self.desc = self.desc.strip()

  # get the list of parameter names (one or two)
  def get_parameters(self):
    m = re.search("(-[^ ]*)( (-[^ ]*))?", self.name)
    if m.group(3) != None:
      return [m.group(1), m.group(3)]
    return [m.group(1)]

  # return the usage part of the parameter
  def get_usage(self):
    return self.name[len(" ".join(self.get_parameters())):]

  # simple string representation
  def __repr__(self):
    return self.name

# a stoke command (which has either a list of subcommands, or a list of arguments)
class Command(object):
  def __init__(self, parent, name, help, subcommands, arguments):
    self.parent = parent
    self.name = name.strip()
    self.subcommands = subcommands
    self.help = help.strip()
    self.arguments = arguments

  def has_subcommands(self):
    return len(self.subcommands) > 0

  def full_name(self):
    if self.parent == None:
      return self.name
    return self.parent.full_name() + " " + self.name

  def __repr__(self):
    def indent(s):
      return "  " + s.replace("\n", "\n  ")
    s = self.name + " - " + self.help + "\n"
    for sub in self.subcommands:
      s += indent(str(sub)) + "\n"
    for arg in self.arguments:
      s += indent(str(arg)) + "\n"
    return s



# ------------------------------------------
# parsing --help output into an AST
# ------------------------------------------

def run(cmd):
  p = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
  out = ""
  for line in p.stdout.readlines():
    out += line
  return out

def get_command():
  output = run("stoke --help | grep \"^  \"")
  subcommands = []
  cmd = Command(None, "stoke", "", subcommands, [])
  subsubmap = {}
  for line in output.split("\n"):
    if len(line) > 0:
      match = re.search(r"^  (.*[^ ])  +([^ ].*)$", line)
      help = match.group(2)
      full = match.group(1)
      parts = full.split(" ")
      if (len(parts) == 1):
        args = get_arguments(full)
        sub = Command(cmd, full, help, [], args)
        subcommands.append(sub)
      else:
        assert len(parts) == 2
        if not parts[0] in subsubmap:
          subsubmap[parts[0]] = []
        subsubmap[parts[0]].append({
          'name': parts[1],
          'help': help
        })
  for sub, subsubs in subsubmap.iteritems():
    subsubcommands = []
    subcmd = Command(cmd, sub, sub + " commands", subsubcommands, [])
    subcommands.append(subcmd)
    for subsub in subsubs:
      args = get_arguments(sub + " " + subsub['name'])
      subsubcommands.append(Command(subcmd, subsub['name'], subsub['help'], [], args))
  return cmd

def get_arguments(subcommand):
  data = run("stoke " + subcommand + " --help | grep \"^  \(-\| \)\"")
  args = []
  for line in data.split("\n"):
    if line.startswith("    "):
      arg.add_desc(line[4:])
    elif len(line) > 3:
      arg = Arg(line.strip())
      args.append(arg)
  return args

if __name__ == '__main__':
  main()
