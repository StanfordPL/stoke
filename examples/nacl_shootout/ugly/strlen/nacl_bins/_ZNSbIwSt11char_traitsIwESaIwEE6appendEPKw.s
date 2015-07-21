  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw, @function

#! file-offset 0x1181a0
#! rip-offset  0xd81a0
#! capacity    64 bytes

# Text                                               #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw:         #        0xd81a0  0      OPC=0     
  movq %r12, -0x8(%rsp)                              #  1     0xd81a0  5      OPC=1138  
  movl %esi, %r12d                                   #  2     0xd81a5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                             #  3     0xd81a8  5      OPC=1138  
  subl $0x18, %esp                                   #  4     0xd81ad  3      OPC=2384  
  addq %r15, %rsp                                    #  5     0xd81b0  3      OPC=72    
  movl %edi, %ebx                                    #  6     0xd81b3  2      OPC=1157  
  movl %r12d, %edi                                   #  7     0xd81b5  3      OPC=1157  
  nop                                                #  8     0xd81b8  1      OPC=1343  
  nop                                                #  9     0xd81b9  1      OPC=1343  
  nop                                                #  10    0xd81ba  1      OPC=1343  
  callq .wcslen                                      #  11    0xd81bb  5      OPC=260   
  movl %r12d, %esi                                   #  12    0xd81c0  3      OPC=1157  
  movl %ebx, %edi                                    #  13    0xd81c3  2      OPC=1157  
  movq 0x10(%rsp), %r12                              #  14    0xd81c5  5      OPC=1161  
  movq 0x8(%rsp), %rbx                               #  15    0xd81ca  5      OPC=1161  
  movl %eax, %edx                                    #  16    0xd81cf  2      OPC=1157  
  addl $0x18, %esp                                   #  17    0xd81d1  3      OPC=65    
  addq %r15, %rsp                                    #  18    0xd81d4  3      OPC=72    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj  #  19    0xd81d7  5      OPC=930   
  nop                                                #  20    0xd81dc  1      OPC=1343  
  nop                                                #  21    0xd81dd  1      OPC=1343  
  nop                                                #  22    0xd81de  1      OPC=1343  
  nop                                                #  23    0xd81df  1      OPC=1343  
                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendEPKw

