/*
The Computer Language Benchmarks Game
http://shootout.alioth.debian.org/
Contributed by Matthew Wilson
*/

//load('io_replacement.js');//loaded from run.js; uncomment to run standalone

function revcomp_main(complement,print,readline) {
  var l, seq="";
  for (;;) { try {
    if ((l = readline()).length == 60) {
      seq += l;
    } else if (/^>/.test(l)) {
      complement(seq);
      seq = "";
      print(l);
    } else {
      seq += l;
    }
  } catch(e){
    if (typeof(seq)!='undefined' && seq.length > 0) {
      complement(seq);
    }
    break;
  }}
} 

function b(complement,print) {
  return function(seq) {
    var l = seq.length;
    for (;;) {
      var line="";
      if (l >= 60) {
        for (var i=l-1, j=l-61; i>j; --i) {
          line += complement[seq.charCodeAt(i)]
        }
        l-=60;
        print(line);
      } else if (l > 0) {
        for (var i=l-1; i>-1; --i) {
          line += complement[seq.charCodeAt(i)]
        }
        print(line);
        break;
      } else {
        break;
      }
    }
  }
}

function comp() {
  var complement=[],
    keys ='WSATUGCYRKMBDHVNwsatugcyrkmbdhvn',
    comps='WSTAACGRYMKVHDBNWSTAACGRYMKVHDBN';
  for(var i=0; i<32; ++i)
    complement[keys.charCodeAt(i)]
      = comps[i];
  
  return complement;
}

function RevcompBenchmark(param) {
  InitializePrint(false);
  InitializeReadline();
  revcomp_main(b(comp(), print), print, readline_array);
  VerifyOutput();
  CleanupReadline();
  CleanupPrint();
}

//RevcompBenchmark();
