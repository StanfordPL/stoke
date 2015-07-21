  .text
  .globl iswupper
  .type iswupper, @function

#! file-offset 0x15f560
#! rip-offset  0x11f560
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswupper:                 #        0x11f560  0      OPC=0     
  pushq %rbx               #  1     0x11f560  1      OPC=1861  
  movl %edi, %ebx          #  2     0x11f561  2      OPC=1157  
  nop                      #  3     0x11f563  1      OPC=1343  
  nop                      #  4     0x11f564  1      OPC=1343  
  nop                      #  5     0x11f565  1      OPC=1343  
  nop                      #  6     0x11f566  1      OPC=1343  
  nop                      #  7     0x11f567  1      OPC=1343  
  nop                      #  8     0x11f568  1      OPC=1343  
  nop                      #  9     0x11f569  1      OPC=1343  
  nop                      #  10    0x11f56a  1      OPC=1343  
  nop                      #  11    0x11f56b  1      OPC=1343  
  nop                      #  12    0x11f56c  1      OPC=1343  
  nop                      #  13    0x11f56d  1      OPC=1343  
  nop                      #  14    0x11f56e  1      OPC=1343  
  nop                      #  15    0x11f56f  1      OPC=1343  
  nop                      #  16    0x11f570  1      OPC=1343  
  nop                      #  17    0x11f571  1      OPC=1343  
  nop                      #  18    0x11f572  1      OPC=1343  
  nop                      #  19    0x11f573  1      OPC=1343  
  nop                      #  20    0x11f574  1      OPC=1343  
  nop                      #  21    0x11f575  1      OPC=1343  
  nop                      #  22    0x11f576  1      OPC=1343  
  nop                      #  23    0x11f577  1      OPC=1343  
  nop                      #  24    0x11f578  1      OPC=1343  
  nop                      #  25    0x11f579  1      OPC=1343  
  nop                      #  26    0x11f57a  1      OPC=1343  
  callq .towlower          #  27    0x11f57b  5      OPC=260   
  cmpl %ebx, %eax          #  28    0x11f580  2      OPC=472   
  popq %rbx                #  29    0x11f582  1      OPC=1694  
  popq %r11                #  30    0x11f583  2      OPC=1694  
  setne %al                #  31    0x11f585  3      OPC=2208  
  movzbl %al, %eax         #  32    0x11f588  3      OPC=1304  
  andl $0xffffffe0, %r11d  #  33    0x11f58b  7      OPC=131   
  nop                      #  34    0x11f592  1      OPC=1343  
  nop                      #  35    0x11f593  1      OPC=1343  
  nop                      #  36    0x11f594  1      OPC=1343  
  nop                      #  37    0x11f595  1      OPC=1343  
  addq %r15, %r11          #  38    0x11f596  3      OPC=72    
  jmpq %r11                #  39    0x11f599  3      OPC=928   
  nop                      #  40    0x11f59c  1      OPC=1343  
  nop                      #  41    0x11f59d  1      OPC=1343  
  nop                      #  42    0x11f59e  1      OPC=1343  
  nop                      #  43    0x11f59f  1      OPC=1343  
  nop                      #  44    0x11f5a0  1      OPC=1343  
  nop                      #  45    0x11f5a1  1      OPC=1343  
  nop                      #  46    0x11f5a2  1      OPC=1343  
  nop                      #  47    0x11f5a3  1      OPC=1343  
  nop                      #  48    0x11f5a4  1      OPC=1343  
  nop                      #  49    0x11f5a5  1      OPC=1343  
  nop                      #  50    0x11f5a6  1      OPC=1343  
                                                               
.size iswupper, .-iswupper

