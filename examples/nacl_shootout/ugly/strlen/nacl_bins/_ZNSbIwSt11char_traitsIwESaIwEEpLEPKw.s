  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEpLEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEEpLEPKw, @function

#! file-offset 0x1181e0
#! rip-offset  0xd81e0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEEpLEPKw:              #        0xd81e0  0      OPC=0     
  movq %r12, -0x8(%rsp)                              #  1     0xd81e0  5      OPC=1138  
  movl %esi, %r12d                                   #  2     0xd81e5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                             #  3     0xd81e8  5      OPC=1138  
  subl $0x18, %esp                                   #  4     0xd81ed  3      OPC=2384  
  addq %r15, %rsp                                    #  5     0xd81f0  3      OPC=72    
  movl %edi, %ebx                                    #  6     0xd81f3  2      OPC=1157  
  movl %r12d, %edi                                   #  7     0xd81f5  3      OPC=1157  
  nop                                                #  8     0xd81f8  1      OPC=1343  
  nop                                                #  9     0xd81f9  1      OPC=1343  
  nop                                                #  10    0xd81fa  1      OPC=1343  
  callq .wcslen                                      #  11    0xd81fb  5      OPC=260   
  movl %r12d, %esi                                   #  12    0xd8200  3      OPC=1157  
  movl %ebx, %edi                                    #  13    0xd8203  2      OPC=1157  
  movq 0x10(%rsp), %r12                              #  14    0xd8205  5      OPC=1161  
  movq 0x8(%rsp), %rbx                               #  15    0xd820a  5      OPC=1161  
  movl %eax, %edx                                    #  16    0xd820f  2      OPC=1157  
  addl $0x18, %esp                                   #  17    0xd8211  3      OPC=65    
  addq %r15, %rsp                                    #  18    0xd8214  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj  #  19    0xd8217  5      OPC=930   
  nop                                                #  20    0xd821c  1      OPC=1343  
  nop                                                #  21    0xd821d  1      OPC=1343  
  nop                                                #  22    0xd821e  1      OPC=1343  
  nop                                                #  23    0xd821f  1      OPC=1343  
                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEEpLEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEEpLEPKw

