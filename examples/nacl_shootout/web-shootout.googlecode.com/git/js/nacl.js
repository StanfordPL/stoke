var benchmarkNaClModule = Array();
var errorStatus = Array();
var moduleRunning = 1;
var totalModules = 0;

function setupNaclBenchmark(num) {
  updateNaclStatus(num, 'Loading module...');
  errorStatus[num] = false;
  benchmarkNaClModule[num] = document.getElementById('benchmark_nexe'+ String(num));
}

function updateNaclResults(num, results) {
  resultbox = document.getElementById('nacl_results' + String(num));
  resultbox.innerHTML += results + '<br>';
}

// Handle a message coming from the NaCl module.
function handleNaclMessage(num, message_event) {
  var msg = message_event.data;
  //console.log("nexe said: " + message_event);
  if (msg.search(":") != -1) {
    if (msg.search("Score") != -1) {
      benchmarkNaClModule[num].removeEventListener('message', handleNaclMessage, false);
      updateNaclStatus(num, msg);
      document.getElementById('nacl'+String(num)).className = "run";
      naclBenchmarkFinished(num);
    } else if (msg.search("Score") == -1) {
      updateNaclResults(num, msg);
    } else {
      console.log("unknown NaCl message: " + msg);
    }
  } else {
    updateNaclStatus(num, msg);
  }
}

function clearNaclResults(num) {
  var results = document.getElementById("nacl_status" + String(num));
  // Only clear after we have completed a run
  if (results.innerHTML.search("Score:") != -1) {
    document.getElementById("nacl_results" + String(num)).innerHTML = "<br />";
  }
}

function runSmallNaclBenchmarks(num) {
  clearNaclResults(num);
  benchmarkNaClModule[num].postMessage('runBenchmarks small');
}
function runLargeNaclBenchmarks(num) {
  clearNaclResults(num);
  benchmarkNaClModule[num].postMessage('runBenchmarks large');
}

function runNaclBenchmarks(num) {
  if (errorStatus[num]) return naclBenchmarkFinished(num);
  benchmarkNaClModule[num].addEventListener('message', function(arg) {
    handleNaclMessage(num, arg); }, false);
  document.getElementById('nacl' + String(num)).className = "run running";
  runLargeNaclBenchmarks(num);
}

function updateNaclStatus(num, opt_message) {
  if (opt_message)
    statusText = opt_message;
  var NaclStatus = document.getElementById('nacl_status'+String(num));
  if (NaclStatus) {
    NaclStatus.innerHTML = statusText;
  }
}

function naclModuleDidLoad(num) {
  naclDoneWaiting();
  updateNaclStatus(num, "Loaded");
  if (moduleRunning == num) {
    runNaclBenchmarks(num);
  }
}

function naclModuleError(num) {
  naclDoneWaiting();
  console.log(benchmarkNaClModule[num].lastError);
  updateNaclStatus(num, "LOAD ERROR");
  errorStatus[num] = true;
  //naclBenchmarkFinished(num);
}

function setupNaclListeners(module_wrapper, num) {
  if (num > totalModules) {
    totalModules = num;
  }
  module_wrapper.addEventListener('load', function() {
    naclModuleDidLoad(num);}, true);
  module_wrapper.addEventListener('error', function() {
    naclModuleError(num);}, true);
}

function naclBenchmarkFinished(num) {
  if (num != moduleRunning) {
    alert('BenchmarkFinished='+ String(num) +' but moduleRunning=' +
          String(moduleRunning));
  }
  moduleRunning += 1;
  if (moduleRunning <= totalModules) {
    runNaclBenchmarks(moduleRunning);
  } else {
    naclBenchmarksFinished();
  }
}