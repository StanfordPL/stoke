  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, @function

#! file-offset 0x119060
#! rip-offset  0xd9060
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEaSEPKw:              #        0xd9060  0      OPC=0     
  movq %r12, -0x8(%rsp)                              #  1     0xd9060  5      OPC=1138  
  movl %esi, %r12d                                   #  2     0xd9065  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                             #  3     0xd9068  5      OPC=1138  
  subl $0x18, %esp                                   #  4     0xd906d  3      OPC=2384  
  addq %r15, %rsp                                    #  5     0xd9070  3      OPC=72    
  movl %edi, %ebx                                    #  6     0xd9073  2      OPC=1157  
  movl %r12d, %edi                                   #  7     0xd9075  3      OPC=1157  
  nop                                                #  8     0xd9078  1      OPC=1343  
  nop                                                #  9     0xd9079  1      OPC=1343  
  nop                                                #  10    0xd907a  1      OPC=1343  
  callq .wcslen                                      #  11    0xd907b  5      OPC=260   
  movl %r12d, %esi                                   #  12    0xd9080  3      OPC=1157  
  movl %ebx, %edi                                    #  13    0xd9083  2      OPC=1157  
  movq 0x10(%rsp), %r12                              #  14    0xd9085  5      OPC=1161  
  movq 0x8(%rsp), %rbx                               #  15    0xd908a  5      OPC=1161  
  movl %eax, %edx                                    #  16    0xd908f  2      OPC=1157  
  addl $0x18, %esp                                   #  17    0xd9091  3      OPC=65    
  addq %r15, %rsp                                    #  18    0xd9094  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd9097  5      OPC=930   
  nop                                                #  20    0xd909c  1      OPC=1343  
  nop                                                #  21    0xd909d  1      OPC=1343  
  nop                                                #  22    0xd909e  1      OPC=1343  
  nop                                                #  23    0xd909f  1      OPC=1343  
                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEEaSEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEEaSEPKw

