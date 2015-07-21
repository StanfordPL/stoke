  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0xec160
#! rip-offset  0xac160
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
._ZNSs6appendEPKc:         #        0xac160  0      OPC=0     
  movq %r12, -0x8(%rsp)    #  1     0xac160  5      OPC=1138  
  movl %esi, %r12d         #  2     0xac165  3      OPC=1157  
  movq %rbx, -0x10(%rsp)   #  3     0xac168  5      OPC=1138  
  subl $0x18, %esp         #  4     0xac16d  3      OPC=2384  
  addq %r15, %rsp          #  5     0xac170  3      OPC=72    
  movl %edi, %ebx          #  6     0xac173  2      OPC=1157  
  movl %r12d, %edi         #  7     0xac175  3      OPC=1157  
  nop                      #  8     0xac178  1      OPC=1343  
  nop                      #  9     0xac179  1      OPC=1343  
  nop                      #  10    0xac17a  1      OPC=1343  
  callq .strlen            #  11    0xac17b  5      OPC=260   
  movl %r12d, %esi         #  12    0xac180  3      OPC=1157  
  movl %ebx, %edi          #  13    0xac183  2      OPC=1157  
  movq 0x10(%rsp), %r12    #  14    0xac185  5      OPC=1161  
  movq 0x8(%rsp), %rbx     #  15    0xac18a  5      OPC=1161  
  movl %eax, %edx          #  16    0xac18f  2      OPC=1157  
  addl $0x18, %esp         #  17    0xac191  3      OPC=65    
  addq %r15, %rsp          #  18    0xac194  3      OPC=72    
  jmpq ._ZNSs6appendEPKcj  #  19    0xac197  5      OPC=930   
  nop                      #  20    0xac19c  1      OPC=1343  
  nop                      #  21    0xac19d  1      OPC=1343  
  nop                      #  22    0xac19e  1      OPC=1343  
  nop                      #  23    0xac19f  1      OPC=1343  
                                                              
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

