  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, @function

#! file-offset 0x114ee0
#! rip-offset  0xd4ee0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv:  #        0xd4ee0  0      OPC=0     
  movl %edi, %edi                              #  1     0xd4ee0  2      OPC=1157  
  movl %edi, %edi                              #  2     0xd4ee2  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                     #  3     0xd4ee4  4      OPC=1156  
  popq %r11                                    #  4     0xd4ee8  2      OPC=1694  
  subl $0xc, %eax                              #  5     0xd4eea  3      OPC=2384  
  movl %eax, %eax                              #  6     0xd4eed  2      OPC=1157  
  movl 0x4(%r15,%rax,1), %eax                  #  7     0xd4eef  5      OPC=1156  
  andl $0xffffffe0, %r11d                      #  8     0xd4ef4  7      OPC=131   
  nop                                          #  9     0xd4efb  1      OPC=1343  
  nop                                          #  10    0xd4efc  1      OPC=1343  
  nop                                          #  11    0xd4efd  1      OPC=1343  
  nop                                          #  12    0xd4efe  1      OPC=1343  
  addq %r15, %r11                              #  13    0xd4eff  3      OPC=72    
  jmpq %r11                                    #  14    0xd4f02  3      OPC=928   
  nop                                          #  15    0xd4f05  1      OPC=1343  
  nop                                          #  16    0xd4f06  1      OPC=1343  
                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE8capacityEv

