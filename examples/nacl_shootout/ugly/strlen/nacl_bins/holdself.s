  .text
  .globl holdself
  .type holdself, @function

#! file-offset 0x65100
#! rip-offset  0x25100
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.holdself:                     #        0x25100  0      OPC=0     
  addl $0x1, 0x1004c02d(%rip)  #  1     0x25100  7      OPC=51    
  movl 0x1005409b(%rip), %eax  #  2     0x25107  6      OPC=1156  
  movl %eax, %eax              #  3     0x2510d  2      OPC=1157  
  orl $0x4, 0x10(%r15,%rax,1)  #  4     0x2510f  6      OPC=1364  
  movl %eax, %eax              #  5     0x25115  2      OPC=1157  
  movl (%r15,%rax,1), %eax     #  6     0x25117  4      OPC=1156  
  popq %r11                    #  7     0x2511b  2      OPC=1694  
  nop                          #  8     0x2511d  1      OPC=1343  
  nop                          #  9     0x2511e  1      OPC=1343  
  nop                          #  10    0x2511f  1      OPC=1343  
  andl $0xffffffe0, %r11d      #  11    0x25120  7      OPC=131   
  nop                          #  12    0x25127  1      OPC=1343  
  nop                          #  13    0x25128  1      OPC=1343  
  nop                          #  14    0x25129  1      OPC=1343  
  nop                          #  15    0x2512a  1      OPC=1343  
  addq %r15, %r11              #  16    0x2512b  3      OPC=72    
  jmpq %r11                    #  17    0x2512e  3      OPC=928   
  nop                          #  18    0x25131  1      OPC=1343  
  nop                          #  19    0x25132  1      OPC=1343  
  nop                          #  20    0x25133  1      OPC=1343  
  nop                          #  21    0x25134  1      OPC=1343  
  nop                          #  22    0x25135  1      OPC=1343  
  nop                          #  23    0x25136  1      OPC=1343  
  nop                          #  24    0x25137  1      OPC=1343  
  nop                          #  25    0x25138  1      OPC=1343  
  nop                          #  26    0x25139  1      OPC=1343  
  nop                          #  27    0x2513a  1      OPC=1343  
  nop                          #  28    0x2513b  1      OPC=1343  
  nop                          #  29    0x2513c  1      OPC=1343  
  nop                          #  30    0x2513d  1      OPC=1343  
  nop                          #  31    0x2513e  1      OPC=1343  
  nop                          #  32    0x2513f  1      OPC=1343  
  nop                          #  33    0x25140  1      OPC=1343  
  nop                          #  34    0x25141  1      OPC=1343  
  nop                          #  35    0x25142  1      OPC=1343  
  nop                          #  36    0x25143  1      OPC=1343  
  nop                          #  37    0x25144  1      OPC=1343  
  nop                          #  38    0x25145  1      OPC=1343  
  nop                          #  39    0x25146  1      OPC=1343  
                                                                  
.size holdself, .-holdself

