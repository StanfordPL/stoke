

self.addEventListener('message', function(e) {
  var msgtype = e.data.type;
  var msg = e.data.msg;
  switch (msgtype) {
    case "runsmall":
      RunSmall();
      break;
    case "runlarge":
      RunLarge();
      break;
    default:
      throw msg;
      break;
  }
}, false);

importScripts('base.js');
importScripts('fasta_10k_ref_output.js');
importScripts('io_replacement.js');
importScripts('biginteger.js');

importScripts('audio-fft-data.js');
importScripts('audio-fft.js');
importScripts('richards.js');
importScripts('deltablue.js');
importScripts('fannkuchredux.js');
importScripts('fasta.js');
importScripts('revcomp.js');
importScripts('binarytrees.js');
importScripts('knucleotide.js');
importScripts('nbody.js');
importScripts('spectralnorm.js');
importScripts('pidigits.js');

importScripts('setup_benchmarks.js');

var started = 0;
var benchmarks = 0;
var success = true;

function PostTypedMessage(type, msg) {
  self.postMessage({'type': type, 'msg': msg});
}

function WWShowProgress(name) {
}

function WWAddStart(name) {
  ++started;
  var message = "Running " + name + " (" + started + "/" + benchmarks + ")";
  PostTypedMessage('status', message);
}

function WWAddResult(name, result) {
  var text = name + ': ' + result;
  PostTypedMessage('result', text);
}


function WWAddError(name, error) {
  success = false;
  PostTypedMessage('error', name + ': ' + error);
}


function WWAddScore(score) {
  if (success) {
    PostTypedMessage('score', score);
  }
}



function RunSmall() {
  SetupSmallBenchmarks();
  benchmarks = BenchmarkSuite.CountBenchmarks();
  WWShowProgress("benchmark");
  BenchmarkSuite.RunSuites({ NotifyStep: WWShowProgress,
                             NotifyStart: WWAddStart,
                             NotifyError: WWAddError,
                             NotifyResult: WWAddResult,
                             NotifyScore: WWAddScore });
  ClearBenchmarks();
  started = 0;
}

function RunLarge() {
  SetupLargeBenchmarks();
  benchmarks = BenchmarkSuite.CountBenchmarks();
  WWShowProgress("benchmark");
  BenchmarkSuite.RunSuites({ NotifyStep: WWShowProgress,
                             NotifyStart: WWAddStart,
                             NotifyError: WWAddError,
                             NotifyResult: WWAddResult,
                             NotifyScore: WWAddScore }); 
  started = 0;
  ClearBenchmarks();
}
