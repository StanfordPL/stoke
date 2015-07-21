  .text
  .globl _ZNSs5clearEv
  .type _ZNSs5clearEv, @function

#! file-offset 0xee480
#! rip-offset  0xae480
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
._ZNSs5clearEv:              #        0xae480  0      OPC=0     
  movl %edi, %edi            #  1     0xae480  2      OPC=1157  
  xorl %ecx, %ecx            #  2     0xae482  2      OPC=3758  
  xorl %esi, %esi            #  3     0xae484  2      OPC=3758  
  movl %edi, %edi            #  4     0xae486  2      OPC=1157  
  movl (%r15,%rdi,1), %eax   #  5     0xae488  4      OPC=1156  
  subl $0xc, %eax            #  6     0xae48c  3      OPC=2384  
  movl %eax, %eax            #  7     0xae48f  2      OPC=1157  
  movl (%r15,%rax,1), %edx   #  8     0xae491  4      OPC=1156  
  jmpq ._ZNSs9_M_mutateEjjj  #  9     0xae495  5      OPC=930   
  nop                        #  10    0xae49a  1      OPC=1343  
  nop                        #  11    0xae49b  1      OPC=1343  
  nop                        #  12    0xae49c  1      OPC=1343  
  nop                        #  13    0xae49d  1      OPC=1343  
  nop                        #  14    0xae49e  1      OPC=1343  
  nop                        #  15    0xae49f  1      OPC=1343  
                                                                
.size _ZNSs5clearEv, .-_ZNSs5clearEv

