var worker;
var error = false;

function setupWorker() {
  if (!worker) {
    worker = new Worker('js/worker.js');
    worker.addEventListener('message', function(e) {
      //console.log('Worker said: ', e.data);
      var msgtype = e.data.type;
      var msg = e.data.msg;
      switch (msgtype) {
        case "status":
          ShowProgress(msg);
          break;
        case "result":
          AddResult(msg);
          break;
        case "error":
          AddError(msg);
          break;
        case "score":
          AddScore(msg);
          break;
        default:
          console.log("couldn't determine type of worker message: " + msg);
      }
    }, false);
  }
}

function runSmallJSBenchmarks() {
  worker.postMessage({'type':'runsmall', 'msg':''}); // Start the worker.
}

function runLargeJSBenchmarks() {
  worker.postMessage({'type':'runlarge', 'msg':''}); // Start the worker.
}

function runJSBenchmarks() {
  ClearJsResults();
  setupWorker();
  document.getElementById('javascript').className = "run running";
  runLargeJSBenchmarks();
}

function ShowProgress(text) {
  var JsStatus = document.getElementById("js_status");
  JsStatus.innerHTML = text;
}

function AddResult(text) {
  var results = document.getElementById("js_results");
  results.innerHTML += (text + "<br/>");
  var nameAndScore = text.split(':');
}

function ClearJsResults() {
  var results = document.getElementById("js_status");
  // Only clear after we have completed a run
  if (results.innerHTML.search("Score:") != -1) {
    document.getElementById("js_results").innerHTML = "";
  }
}

function AddError(name, error) {
  AddResult(name, '<b>error</b>');
  error = true;
}

function AddScore(score) {
  var JsStatus = document.getElementById("js_status");
  if (!error) {
    JsStatus.innerHTML = "Score: " + score;
    document.getElementById('javascript').className = "run";
  }
  jsBenchmarkFinished();
}

