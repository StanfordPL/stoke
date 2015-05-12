// The Computer Language Benchmarks Game
//  http://shootout.alioth.debian.org
//
//  Contributed by Matthew Wilson 
//  biginteger derived from Tom Wu's jsbn.js


var compareTo, multiply, divide, addTo, add, intValue, shiftLeft, nbv;

function pidigits($n) {
  var $i=1, $s="", $d, neg10=nbv(-10), three=nbv(3), ten=nbv(10), g = 1, $g,
  digits=Array(10), $z0=nbv(1), $z1=nbv(0), $z2=nbv(1), negdigits=Array(10),
  k = 0, $k, l = 2, $l, a;
  
  for(var i=0; i<10; ++i) { negdigits[i] = multiply(digits[i] = nbv(i),neg10) }
  
  do {
    while ( compareTo($z0,$z2) > 0
         || ($d = intValue(divide(add(multiply($z0,three),$z1),$z2))) != 
             intValue(divide(add(shiftLeft($z0,2),$z1),$z2))
    ) {
      $z1 = multiply($z1,$g = nbv(g+=2));
      $z2 = multiply($z2,$g);
      addTo($z1, multiply($z0,$l = nbv(l+=4)), $z1);
      $z0 = multiply($z0,$k = nbv(++k));
    }
    $z0 = multiply($z0,ten);
    $z1 = multiply($z1,ten);
    addTo($z1, multiply($z2,negdigits[$d]), $z1);
    $s += $d;
    
    if ($i % 10 == 0) { print($s+"\t:"+$i); $s="" }
    if ($i % 10 == 0) { print($s); $s="" }
  } while (++$i <= $n)
  
  if (($i = $n % 10) != 0) { $s += Array(11-$i).join(' ') }
  if ($s.length > 0) { print($s) }
}

var functions;

compareTo=functions[0];
multiply=functions[1];
divide=functions[2];
addTo=functions[3];
add=functions[4];
nbv=functions[5];
shiftLeft=functions[6];
intValue=functions[7];

function PidigitsBenchmark(n) {
  InitializePrint(false);
  pidigits(n);
  CleanupPrint();
}
