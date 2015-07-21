  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0xec1a0
#! rip-offset  0xac1a0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
._ZNSspLEPKc:              #        0xac1a0  0      OPC=0     
  movq %r12, -0x8(%rsp)    #  1     0xac1a0  5      OPC=1138  
  movl %esi, %r12d         #  2     0xac1a5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)   #  3     0xac1a8  5      OPC=1138  
  subl $0x18, %esp         #  4     0xac1ad  3      OPC=2384  
  addq %r15, %rsp          #  5     0xac1b0  3      OPC=72    
  movl %edi, %ebx          #  6     0xac1b3  2      OPC=1157  
  movl %r12d, %edi         #  7     0xac1b5  3      OPC=1157  
  nop                      #  8     0xac1b8  1      OPC=1343  
  nop                      #  9     0xac1b9  1      OPC=1343  
  nop                      #  10    0xac1ba  1      OPC=1343  
  callq .strlen            #  11    0xac1bb  5      OPC=260   
  movl %r12d, %esi         #  12    0xac1c0  3      OPC=1157  
  movl %ebx, %edi          #  13    0xac1c3  2      OPC=1157  
  movq 0x10(%rsp), %r12    #  14    0xac1c5  5      OPC=1161  
  movq 0x8(%rsp), %rbx     #  15    0xac1ca  5      OPC=1161  
  movl %eax, %edx          #  16    0xac1cf  2      OPC=1157  
  addl $0x18, %esp         #  17    0xac1d1  3      OPC=65    
  addq %r15, %rsp          #  18    0xac1d4  3      OPC=72    
  jmpq ._ZNSs6appendEPKcj  #  19    0xac1d7  5      OPC=930   
  nop                      #  20    0xac1dc  1      OPC=1343  
  nop                      #  21    0xac1dd  1      OPC=1343  
  nop                      #  22    0xac1de  1      OPC=1343  
  nop                      #  23    0xac1df  1      OPC=1343  
                                                              
.size _ZNSspLEPKc, .-_ZNSspLEPKc

