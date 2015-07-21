  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x150aa0
#! rip-offset  0x110aa0
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
._exit:                       #        0x110aa0  0      OPC=0     
  subl $0x8, %esp             #  1     0x110aa0  3      OPC=2384  
  addq %r15, %rsp             #  2     0x110aa3  3      OPC=72    
  movl 0xff687a4(%rip), %eax  #  3     0x110aa6  6      OPC=1156  
  nop                         #  4     0x110aac  1      OPC=1343  
  nop                         #  5     0x110aad  1      OPC=1343  
  nop                         #  6     0x110aae  1      OPC=1343  
  nop                         #  7     0x110aaf  1      OPC=1343  
  nop                         #  8     0x110ab0  1      OPC=1343  
  nop                         #  9     0x110ab1  1      OPC=1343  
  nop                         #  10    0x110ab2  1      OPC=1343  
  nop                         #  11    0x110ab3  1      OPC=1343  
  nop                         #  12    0x110ab4  1      OPC=1343  
  nop                         #  13    0x110ab5  1      OPC=1343  
  nop                         #  14    0x110ab6  1      OPC=1343  
  nop                         #  15    0x110ab7  1      OPC=1343  
  andl $0xffffffe0, %eax      #  16    0x110ab8  6      OPC=131   
  nop                         #  17    0x110abe  1      OPC=1343  
  nop                         #  18    0x110abf  1      OPC=1343  
  nop                         #  19    0x110ac0  1      OPC=1343  
  addq %r15, %rax             #  20    0x110ac1  3      OPC=72    
  callq %rax                  #  21    0x110ac4  2      OPC=258   
  ud2                         #  22    0x110ac6  2      OPC=2456  
  nop                         #  23    0x110ac8  1      OPC=1343  
  nop                         #  24    0x110ac9  1      OPC=1343  
  nop                         #  25    0x110aca  1      OPC=1343  
  nop                         #  26    0x110acb  1      OPC=1343  
  nop                         #  27    0x110acc  1      OPC=1343  
  nop                         #  28    0x110acd  1      OPC=1343  
  nop                         #  29    0x110ace  1      OPC=1343  
  nop                         #  30    0x110acf  1      OPC=1343  
  nop                         #  31    0x110ad0  1      OPC=1343  
  nop                         #  32    0x110ad1  1      OPC=1343  
  nop                         #  33    0x110ad2  1      OPC=1343  
  nop                         #  34    0x110ad3  1      OPC=1343  
  nop                         #  35    0x110ad4  1      OPC=1343  
  nop                         #  36    0x110ad5  1      OPC=1343  
  nop                         #  37    0x110ad6  1      OPC=1343  
  nop                         #  38    0x110ad7  1      OPC=1343  
  nop                         #  39    0x110ad8  1      OPC=1343  
  nop                         #  40    0x110ad9  1      OPC=1343  
  nop                         #  41    0x110ada  1      OPC=1343  
  nop                         #  42    0x110adb  1      OPC=1343  
  nop                         #  43    0x110adc  1      OPC=1343  
  nop                         #  44    0x110add  1      OPC=1343  
  nop                         #  45    0x110ade  1      OPC=1343  
  nop                         #  46    0x110adf  1      OPC=1343  
  nop                         #  47    0x110ae0  1      OPC=1343  
  nop                         #  48    0x110ae1  1      OPC=1343  
  nop                         #  49    0x110ae2  1      OPC=1343  
  nop                         #  50    0x110ae3  1      OPC=1343  
  nop                         #  51    0x110ae4  1      OPC=1343  
  nop                         #  52    0x110ae5  1      OPC=1343  
                                                                  
.size _exit, .-_exit

