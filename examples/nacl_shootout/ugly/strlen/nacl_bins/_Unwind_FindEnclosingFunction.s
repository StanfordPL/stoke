  .text
  .globl _Unwind_FindEnclosingFunction
  .type _Unwind_FindEnclosingFunction, @function

#! file-offset 0x149920
#! rip-offset  0x109920
#! capacity    64 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
._Unwind_FindEnclosingFunction:  #        0x109920  0      OPC=0     
  subl $0x18, %esp               #  1     0x109920  3      OPC=2384  
  addq %r15, %rsp                #  2     0x109923  3      OPC=72    
  subl $0x1, %edi                #  3     0x109926  3      OPC=2384  
  movl %esp, %esi                #  4     0x109929  2      OPC=1157  
  nop                            #  5     0x10992b  1      OPC=1343  
  nop                            #  6     0x10992c  1      OPC=1343  
  nop                            #  7     0x10992d  1      OPC=1343  
  nop                            #  8     0x10992e  1      OPC=1343  
  nop                            #  9     0x10992f  1      OPC=1343  
  nop                            #  10    0x109930  1      OPC=1343  
  nop                            #  11    0x109931  1      OPC=1343  
  nop                            #  12    0x109932  1      OPC=1343  
  nop                            #  13    0x109933  1      OPC=1343  
  nop                            #  14    0x109934  1      OPC=1343  
  nop                            #  15    0x109935  1      OPC=1343  
  nop                            #  16    0x109936  1      OPC=1343  
  nop                            #  17    0x109937  1      OPC=1343  
  nop                            #  18    0x109938  1      OPC=1343  
  nop                            #  19    0x109939  1      OPC=1343  
  nop                            #  20    0x10993a  1      OPC=1343  
  callq ._Unwind_Find_FDE        #  21    0x10993b  5      OPC=260   
  movl 0x8(%rsp), %ecx           #  22    0x109940  4      OPC=1156  
  movl %eax, %edx                #  23    0x109944  2      OPC=1157  
  xorl %eax, %eax                #  24    0x109946  2      OPC=3758  
  testl %edx, %edx               #  25    0x109948  2      OPC=2436  
  cmovneq %rcx, %rax             #  26    0x10994a  4      OPC=364   
  addl $0x18, %esp               #  27    0x10994e  3      OPC=65    
  addq %r15, %rsp                #  28    0x109951  3      OPC=72    
  popq %r11                      #  29    0x109954  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  30    0x109956  7      OPC=131   
  nop                            #  31    0x10995d  1      OPC=1343  
  nop                            #  32    0x10995e  1      OPC=1343  
  nop                            #  33    0x10995f  1      OPC=1343  
  nop                            #  34    0x109960  1      OPC=1343  
  addq %r15, %r11                #  35    0x109961  3      OPC=72    
  jmpq %r11                      #  36    0x109964  3      OPC=928   
                                                                     
.size _Unwind_FindEnclosingFunction, .-_Unwind_FindEnclosingFunction

