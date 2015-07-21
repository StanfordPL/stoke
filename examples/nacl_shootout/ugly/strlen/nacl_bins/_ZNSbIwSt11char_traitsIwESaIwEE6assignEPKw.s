  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw, @function

#! file-offset 0x118fc0
#! rip-offset  0xd8fc0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw:         #        0xd8fc0  0      OPC=0     
  movq %r12, -0x8(%rsp)                              #  1     0xd8fc0  5      OPC=1138  
  movl %esi, %r12d                                   #  2     0xd8fc5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                             #  3     0xd8fc8  5      OPC=1138  
  subl $0x18, %esp                                   #  4     0xd8fcd  3      OPC=2384  
  addq %r15, %rsp                                    #  5     0xd8fd0  3      OPC=72    
  movl %edi, %ebx                                    #  6     0xd8fd3  2      OPC=1157  
  movl %r12d, %edi                                   #  7     0xd8fd5  3      OPC=1157  
  nop                                                #  8     0xd8fd8  1      OPC=1343  
  nop                                                #  9     0xd8fd9  1      OPC=1343  
  nop                                                #  10    0xd8fda  1      OPC=1343  
  callq .wcslen                                      #  11    0xd8fdb  5      OPC=260   
  movl %r12d, %esi                                   #  12    0xd8fe0  3      OPC=1157  
  movl %ebx, %edi                                    #  13    0xd8fe3  2      OPC=1157  
  movq 0x10(%rsp), %r12                              #  14    0xd8fe5  5      OPC=1161  
  movq 0x8(%rsp), %rbx                               #  15    0xd8fea  5      OPC=1161  
  movl %eax, %edx                                    #  16    0xd8fef  2      OPC=1157  
  addl $0x18, %esp                                   #  17    0xd8ff1  3      OPC=65    
  addq %r15, %rsp                                    #  18    0xd8ff4  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  19    0xd8ff7  5      OPC=930   
  nop                                                #  20    0xd8ffc  1      OPC=1343  
  nop                                                #  21    0xd8ffd  1      OPC=1343  
  nop                                                #  22    0xd8ffe  1      OPC=1343  
  nop                                                #  23    0xd8fff  1      OPC=1343  
                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignEPKw

