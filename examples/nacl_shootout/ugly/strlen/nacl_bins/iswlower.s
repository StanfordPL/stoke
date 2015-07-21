  .text
  .globl iswlower
  .type iswlower, @function

#! file-offset 0x15e320
#! rip-offset  0x11e320
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswlower:                 #        0x11e320  0      OPC=0     
  pushq %rbx               #  1     0x11e320  1      OPC=1861  
  movl %edi, %ebx          #  2     0x11e321  2      OPC=1157  
  nop                      #  3     0x11e323  1      OPC=1343  
  nop                      #  4     0x11e324  1      OPC=1343  
  nop                      #  5     0x11e325  1      OPC=1343  
  nop                      #  6     0x11e326  1      OPC=1343  
  nop                      #  7     0x11e327  1      OPC=1343  
  nop                      #  8     0x11e328  1      OPC=1343  
  nop                      #  9     0x11e329  1      OPC=1343  
  nop                      #  10    0x11e32a  1      OPC=1343  
  nop                      #  11    0x11e32b  1      OPC=1343  
  nop                      #  12    0x11e32c  1      OPC=1343  
  nop                      #  13    0x11e32d  1      OPC=1343  
  nop                      #  14    0x11e32e  1      OPC=1343  
  nop                      #  15    0x11e32f  1      OPC=1343  
  nop                      #  16    0x11e330  1      OPC=1343  
  nop                      #  17    0x11e331  1      OPC=1343  
  nop                      #  18    0x11e332  1      OPC=1343  
  nop                      #  19    0x11e333  1      OPC=1343  
  nop                      #  20    0x11e334  1      OPC=1343  
  nop                      #  21    0x11e335  1      OPC=1343  
  nop                      #  22    0x11e336  1      OPC=1343  
  nop                      #  23    0x11e337  1      OPC=1343  
  nop                      #  24    0x11e338  1      OPC=1343  
  nop                      #  25    0x11e339  1      OPC=1343  
  nop                      #  26    0x11e33a  1      OPC=1343  
  callq .towupper          #  27    0x11e33b  5      OPC=260   
  cmpl %ebx, %eax          #  28    0x11e340  2      OPC=472   
  popq %rbx                #  29    0x11e342  1      OPC=1694  
  popq %r11                #  30    0x11e343  2      OPC=1694  
  setne %al                #  31    0x11e345  3      OPC=2208  
  movzbl %al, %eax         #  32    0x11e348  3      OPC=1304  
  andl $0xffffffe0, %r11d  #  33    0x11e34b  7      OPC=131   
  nop                      #  34    0x11e352  1      OPC=1343  
  nop                      #  35    0x11e353  1      OPC=1343  
  nop                      #  36    0x11e354  1      OPC=1343  
  nop                      #  37    0x11e355  1      OPC=1343  
  addq %r15, %r11          #  38    0x11e356  3      OPC=72    
  jmpq %r11                #  39    0x11e359  3      OPC=928   
  nop                      #  40    0x11e35c  1      OPC=1343  
  nop                      #  41    0x11e35d  1      OPC=1343  
  nop                      #  42    0x11e35e  1      OPC=1343  
  nop                      #  43    0x11e35f  1      OPC=1343  
  nop                      #  44    0x11e360  1      OPC=1343  
  nop                      #  45    0x11e361  1      OPC=1343  
  nop                      #  46    0x11e362  1      OPC=1343  
  nop                      #  47    0x11e363  1      OPC=1343  
  nop                      #  48    0x11e364  1      OPC=1343  
  nop                      #  49    0x11e365  1      OPC=1343  
  nop                      #  50    0x11e366  1      OPC=1343  
                                                               
.size iswlower, .-iswlower

