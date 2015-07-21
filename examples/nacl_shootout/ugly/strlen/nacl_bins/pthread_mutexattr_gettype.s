  .text
  .globl pthread_mutexattr_gettype
  .type pthread_mutexattr_gettype, @function

#! file-offset 0x6cc00
#! rip-offset  0x2cc00
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.pthread_mutexattr_gettype:  #        0x2cc00  0      OPC=0     
  movl %edi, %edi            #  1     0x2cc00  2      OPC=1157  
  movl %esi, %esi            #  2     0x2cc02  2      OPC=1157  
  popq %r11                  #  3     0x2cc04  2      OPC=1694  
  movl %edi, %edi            #  4     0x2cc06  2      OPC=1157  
  movl (%r15,%rdi,1), %eax   #  5     0x2cc08  4      OPC=1156  
  movl %esi, %esi            #  6     0x2cc0c  2      OPC=1157  
  movl %eax, (%r15,%rsi,1)   #  7     0x2cc0e  4      OPC=1136  
  xorl %eax, %eax            #  8     0x2cc12  2      OPC=3758  
  andl $0xffffffe0, %r11d    #  9     0x2cc14  7      OPC=131   
  nop                        #  10    0x2cc1b  1      OPC=1343  
  nop                        #  11    0x2cc1c  1      OPC=1343  
  nop                        #  12    0x2cc1d  1      OPC=1343  
  nop                        #  13    0x2cc1e  1      OPC=1343  
  addq %r15, %r11            #  14    0x2cc1f  3      OPC=72    
  jmpq %r11                  #  15    0x2cc22  3      OPC=928   
  xchgw %ax, %ax             #  16    0x2cc25  2      OPC=3700  
                                                                
.size pthread_mutexattr_gettype, .-pthread_mutexattr_gettype

