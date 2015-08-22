  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv, @function

#! file-offset 0x115de0
#! rip-offset  0xd5de0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv:  #        0xd5de0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xd5de0  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  2     0xd5de2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  3     0xd5de4  4      OPC=movl_r32_m32    
  popq %r11                                #  4     0xd5de8  2      OPC=popq_r64_1      
  subl $0xc, %eax                          #  5     0xd5dea  3      OPC=subl_r32_imm8   
  movl %eax, %eax                          #  6     0xd5ded  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                 #  7     0xd5def  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d                  #  8     0xd5df3  7      OPC=andl_r32_imm32  
  nop                                      #  9     0xd5dfa  1      OPC=nop             
  nop                                      #  10    0xd5dfb  1      OPC=nop             
  nop                                      #  11    0xd5dfc  1      OPC=nop             
  nop                                      #  12    0xd5dfd  1      OPC=nop             
  addq %r15, %r11                          #  13    0xd5dfe  3      OPC=addq_r64_r64    
  jmpq %r11                                #  14    0xd5e01  3      OPC=jmpq_r64        
  nop                                      #  15    0xd5e04  1      OPC=nop             
  nop                                      #  16    0xd5e05  1      OPC=nop             
  nop                                      #  17    0xd5e06  1      OPC=nop             
                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE4sizeEv

