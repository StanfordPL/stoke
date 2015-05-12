// Shootout benchmarks use 'print' and 'readline' to read/write stdin/stdout.
// We redefine print to capture the output.
// Benchmarks which use print must call InitializePrint, call print,
// and then call VerifyOutput with the appropriate argument

var fasta_output = "";
var fasta_output_array;

var print_output;

function null_print(s) {
}
function AppendDebug(text) {
  var debug = document.getElementById("debug");
  console.log(debug);
  debug.innterHTML += (text + "</br>");
}
// In the browser, we want to use something other than print() (which
// prints to the printer). as the real_print
if (typeof window != 'undefined') {
    //print = AppendDebug;
    print = null_print;
}
if (typeof print == 'undefined') {
    print = null_print;
}
var real_print = print;
// one fake print function keeps the output (e.g. for fasta) and the other
// throws it away (since we run out of memory trying to keep fasta output
// plus output of the ones that use fasta input)
// for discard, we keep a few lines in a circular buffer to have something
// we can log for debug purposes, and to keep the optimizer from being
// too aggressive
var print_keep_index = 0;
var max_keep_lines = 100;

function fake_print_keep(s) {
  print_output.push(s);
}
function fake_print_discard(s) {
  print_output[print_keep_index] = s;
  print_keep_index = (print_keep_index + 1) % max_keep_lines;
}
function InitializePrint(keep) {
  print_output = new Array();
  print_keep_index = 0;
  if (keep) {
    print = fake_print_keep;
  } else {
    print = fake_print_discard;
  }
}
function CleanupPrint() {
  print = real_print;
}  
function VerifyOutput(ref_input, keep_fasta_output) {

  var output = print_output.join("\n");
  if (keep_fasta_output) {
      //fasta_output = output;
    fasta_output_array = print_output;
  }
  print_output = null;

  if(!ref_input) return;
  if(ref_input != output) {
    real_print("Error, expected\n");
    real_print(ref_input);
    real_print("got\n");
    real_print(output);
    throw "error";
  }

  //print(output);
}

// Several benchmarks use the output of fasta as their input.
// We replace readline with a function that reads from this reference data
var start_index = 0;
if (typeof readline == 'undefined') {
    readline = null;
}
var real_readline = readline;

function readline_string() {//doesn't work?
  next = fasta_output.indexOf("\n", start_index);
  str = fasta_output.substr(start_index, next - start_index);
  start_index = next;
  return str;
}

function readline_array() {
  s = fasta_output_array[start_index];
  start_index += 1;
  print (s)
  return s;
}
function reset_readline_start() {
  start_index = 0;
}

function InitializeReadline() {
  readline = readline_array;
  reset_readline_start();
}

function CleanupReadline() {
  readline = real_readline;
  reset_readline_start();
}