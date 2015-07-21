  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv, @function

#! file-offset 0x114e80
#! rip-offset  0xd4e80
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv:  #        0xd4e80  0      OPC=0     
  movl %edi, %edi                          #  1     0xd4e80  2      OPC=1157  
  movl %edi, %edi                          #  2     0xd4e82  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                 #  3     0xd4e84  4      OPC=1156  
  popq %r11                                #  4     0xd4e88  2      OPC=1694  
  subl $0xc, %eax                          #  5     0xd4e8a  3      OPC=2384  
  movl %eax, %eax                          #  6     0xd4e8d  2      OPC=1157  
  movl (%r15,%rax,1), %eax                 #  7     0xd4e8f  4      OPC=1156  
  andl $0xffffffe0, %r11d                  #  8     0xd4e93  7      OPC=131   
  nop                                      #  9     0xd4e9a  1      OPC=1343  
  nop                                      #  10    0xd4e9b  1      OPC=1343  
  nop                                      #  11    0xd4e9c  1      OPC=1343  
  nop                                      #  12    0xd4e9d  1      OPC=1343  
  addq %r15, %r11                          #  13    0xd4e9e  3      OPC=72    
  jmpq %r11                                #  14    0xd4ea1  3      OPC=928   
  nop                                      #  15    0xd4ea4  1      OPC=1343  
  nop                                      #  16    0xd4ea5  1      OPC=1343  
  nop                                      #  17    0xd4ea6  1      OPC=1343  
                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv

