/*     
The Computer Language Shootout   
http://shootout.alioth.debian.org/  
Contributed by Jesse Millikan    
*/

// Needs io_replacement loaded

// Return hash t with frequency in "n"
function frequency(seq, length){
 var m, i, t = {}, n = seq.length - length + 1

 for(i = 0; i < n; i++){
  m = seq.substr(i, length)
  t[m] = (t[m] || 0) + 1
 }

 t.n = n
 return t
}

function sort(seq, length){
 var f = frequency(seq, length), keys = [], k, i
 
 // Put all keys in key array in reverse
 for(k in f)
  if(k != 'n') keys.unshift(k)

 keys.sort(function(a, b){ return f[b] - f[a] })

 for(i in keys)
  print(keys[i].toUpperCase(), (f[keys[i]] * 100 / f.n).toFixed(3))

 print()
}

function find(seq, s){
 var f = frequency(seq, s.length)
 print((f[s] || 0) + "\t" + s.toUpperCase())
}

function knucleotide_main() {
  var seq="", l, others = ["ggt", "ggta", "ggtatt", "ggtattttaatt", "ggtattttaatttatagt"]
 
  while(!readline().match(/^>THREE/)); // no body

  while((l = readline()) && !l.match(/^>/))
    seq += l

  sort(seq, 1)
  sort(seq, 2)

  for(i in others)
  find(seq, others[i])
}

function KnucleotideBenchmark(param) {
  InitializePrint(false);
  InitializeReadline();
  knucleotide_main();
  CleanupReadline();
  VerifyOutput();
  CleanupPrint();
}

//KnucleotideBenchmark();
//knucleotide_main();
