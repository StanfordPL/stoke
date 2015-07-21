  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv, @function

#! file-offset 0x12c300
#! rip-offset  0xec300
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv:  #        0xec300  0      OPC=0     
  subl $0x8, %esp                                      #  1     0xec300  3      OPC=2384  
  addq %r15, %rsp                                      #  2     0xec303  3      OPC=72    
  addl $0x40, %edi                                     #  3     0xec306  3      OPC=65    
  nop                                                  #  4     0xec309  1      OPC=1343  
  nop                                                  #  5     0xec30a  1      OPC=1343  
  nop                                                  #  6     0xec30b  1      OPC=1343  
  nop                                                  #  7     0xec30c  1      OPC=1343  
  nop                                                  #  8     0xec30d  1      OPC=1343  
  nop                                                  #  9     0xec30e  1      OPC=1343  
  nop                                                  #  10    0xec30f  1      OPC=1343  
  nop                                                  #  11    0xec310  1      OPC=1343  
  nop                                                  #  12    0xec311  1      OPC=1343  
  nop                                                  #  13    0xec312  1      OPC=1343  
  nop                                                  #  14    0xec313  1      OPC=1343  
  nop                                                  #  15    0xec314  1      OPC=1343  
  nop                                                  #  16    0xec315  1      OPC=1343  
  nop                                                  #  17    0xec316  1      OPC=1343  
  nop                                                  #  18    0xec317  1      OPC=1343  
  nop                                                  #  19    0xec318  1      OPC=1343  
  nop                                                  #  20    0xec319  1      OPC=1343  
  nop                                                  #  21    0xec31a  1      OPC=1343  
  callq ._ZNKSt12__basic_fileIcE7is_openEv             #  22    0xec31b  5      OPC=260   
  addl $0x8, %esp                                      #  23    0xec320  3      OPC=65    
  addq %r15, %rsp                                      #  24    0xec323  3      OPC=72    
  popq %r11                                            #  25    0xec326  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  26    0xec328  7      OPC=131   
  nop                                                  #  27    0xec32f  1      OPC=1343  
  nop                                                  #  28    0xec330  1      OPC=1343  
  nop                                                  #  29    0xec331  1      OPC=1343  
  nop                                                  #  30    0xec332  1      OPC=1343  
  addq %r15, %r11                                      #  31    0xec333  3      OPC=72    
  jmpq %r11                                            #  32    0xec336  3      OPC=928   
  nop                                                  #  33    0xec339  1      OPC=1343  
  nop                                                  #  34    0xec33a  1      OPC=1343  
  nop                                                  #  35    0xec33b  1      OPC=1343  
  nop                                                  #  36    0xec33c  1      OPC=1343  
  nop                                                  #  37    0xec33d  1      OPC=1343  
  nop                                                  #  38    0xec33e  1      OPC=1343  
  nop                                                  #  39    0xec33f  1      OPC=1343  
  nop                                                  #  40    0xec340  1      OPC=1343  
  nop                                                  #  41    0xec341  1      OPC=1343  
  nop                                                  #  42    0xec342  1      OPC=1343  
  nop                                                  #  43    0xec343  1      OPC=1343  
  nop                                                  #  44    0xec344  1      OPC=1343  
  nop                                                  #  45    0xec345  1      OPC=1343  
  nop                                                  #  46    0xec346  1      OPC=1343  
  cmpq $0xff, %rdx                                     #  47    0xec347  4      OPC=475   
  movl %eax, %edi                                      #  48    0xec34b  2      OPC=1157  
  je .L_ec360                                          #  49    0xec34d  6      OPC=893   
  nop                                                  #  50    0xec353  1      OPC=1343  
  nop                                                  #  51    0xec354  1      OPC=1343  
  nop                                                  #  52    0xec355  1      OPC=1343  
  nop                                                  #  53    0xec356  1      OPC=1343  
  nop                                                  #  54    0xec357  1      OPC=1343  
  nop                                                  #  55    0xec358  1      OPC=1343  
  nop                                                  #  56    0xec359  1      OPC=1343  
  nop                                                  #  57    0xec35a  1      OPC=1343  
  nop                                                  #  58    0xec35b  1      OPC=1343  
  nop                                                  #  59    0xec35c  1      OPC=1343  
  nop                                                  #  60    0xec35d  1      OPC=1343  
  nop                                                  #  61    0xec35e  1      OPC=1343  
  nop                                                  #  62    0xec35f  1      OPC=1343  
  nop                                                  #  63    0xec360  1      OPC=1343  
  nop                                                  #  64    0xec361  1      OPC=1343  
  nop                                                  #  65    0xec362  1      OPC=1343  
  nop                                                  #  66    0xec363  1      OPC=1343  
  nop                                                  #  67    0xec364  1      OPC=1343  
  nop                                                  #  68    0xec365  1      OPC=1343  
  nop                                                  #  69    0xec366  1      OPC=1343  
  nop                                                  #  70    0xec367  1      OPC=1343  
  callq ._Unwind_Resume                                #  71    0xec368  5      OPC=260   
.L_ec360:                                              #        0xec36d  0      OPC=0     
  nop                                                  #  72    0xec36d  1      OPC=1343  
  nop                                                  #  73    0xec36e  1      OPC=1343  
  nop                                                  #  74    0xec36f  1      OPC=1343  
  nop                                                  #  75    0xec370  1      OPC=1343  
  nop                                                  #  76    0xec371  1      OPC=1343  
  nop                                                  #  77    0xec372  1      OPC=1343  
  nop                                                  #  78    0xec373  1      OPC=1343  
  nop                                                  #  79    0xec374  1      OPC=1343  
  nop                                                  #  80    0xec375  1      OPC=1343  
  nop                                                  #  81    0xec376  1      OPC=1343  
  nop                                                  #  82    0xec377  1      OPC=1343  
  nop                                                  #  83    0xec378  1      OPC=1343  
  nop                                                  #  84    0xec379  1      OPC=1343  
  nop                                                  #  85    0xec37a  1      OPC=1343  
  nop                                                  #  86    0xec37b  1      OPC=1343  
  nop                                                  #  87    0xec37c  1      OPC=1343  
  nop                                                  #  88    0xec37d  1      OPC=1343  
  nop                                                  #  89    0xec37e  1      OPC=1343  
  nop                                                  #  90    0xec37f  1      OPC=1343  
  nop                                                  #  91    0xec380  1      OPC=1343  
  nop                                                  #  92    0xec381  1      OPC=1343  
  nop                                                  #  93    0xec382  1      OPC=1343  
  nop                                                  #  94    0xec383  1      OPC=1343  
  nop                                                  #  95    0xec384  1      OPC=1343  
  nop                                                  #  96    0xec385  1      OPC=1343  
  nop                                                  #  97    0xec386  1      OPC=1343  
  nop                                                  #  98    0xec387  1      OPC=1343  
  callq .__cxa_call_unexpected                         #  99    0xec388  5      OPC=260   
                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv

