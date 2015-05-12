//load('base.js');
//load('audio-fft-data.js');
var iterations = 1000;

var fft_data = new Object();
//var fft;
//var signal;

function generateFFTData(size) {
    // print("generating FFT")
 fft_data.fft = new FFT(size, rate);
 fft_data.signal = new Array(size);
 // base.js replaces Math.random with something deterministic
 for(var i = 0; i < size; i++) fft_data.signal[i] = Math.random();
 // print("done");
}

function tearDownFFT() {
  delete fft_data.fft;
  delete fft_data.signal;
}

function FFTCheckResult(size, sum) {
  var ref;
  switch(size) {
  case 1024:
    ref = 9.241991558475528e+00;
    break;
  case 1024*1024:
    ref = 2.629580990915497e+02;//2.629448261741669e+02;
    break;
  default:
    ref = 0;
    break;
  }
  if (!Math.abs(sum - ref < 1e-10)) {
    print("size " + size + " sum " + sum + " ref " + ref);
  }
}


var calcFFT = function(size) {
    //print("Running FFT");
  if (size != fft_data.signal.length) throw "Error: size mismatch";
  //print(signal);
  //print();
  var spectrum = fft_data.fft.forward(fft_data.signal);
  //print(spectrum);
  var sum = 0.0;
  for (var i = 0; i < spectrum.length; i++) sum += spectrum[i];
  FFTCheckResult(size, sum);
};



//runTest(calcFFT, iterations);

function FFTBenchmark(size) {
  calcFFT(size);
}
//generateFFTData(1024 * 1024)
//FFTBenchmark(1024 * 1024)