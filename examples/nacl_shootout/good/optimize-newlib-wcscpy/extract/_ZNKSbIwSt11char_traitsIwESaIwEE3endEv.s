  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE3endEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE3endEv, @function

#! file-offset 0x115340
#! rip-offset  0xd5340
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE3endEv:  #        0xd5340  0      OPC=<label>         
  movl %edi, %edi                         #  1     0xd5340  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  2     0xd5342  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                #  3     0xd5344  4      OPC=movl_r32_m32    
  popq %r11                               #  4     0xd5348  2      OPC=popq_r64_1      
  leal -0xc(%rax), %edx                   #  5     0xd534a  3      OPC=leal_r32_m16    
  movl %edx, %edx                         #  6     0xd534d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                #  7     0xd534f  4      OPC=movl_r32_m32    
  leal (%rax,%rdx,4), %eax                #  8     0xd5353  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                 #  9     0xd5356  7      OPC=andl_r32_imm32  
  nop                                     #  10    0xd535d  1      OPC=nop             
  nop                                     #  11    0xd535e  1      OPC=nop             
  nop                                     #  12    0xd535f  1      OPC=nop             
  nop                                     #  13    0xd5360  1      OPC=nop             
  addq %r15, %r11                         #  14    0xd5361  3      OPC=addq_r64_r64    
  jmpq %r11                               #  15    0xd5364  3      OPC=jmpq_r64        
                                                                                       
.size _ZNKSbIwSt11char_traitsIwESaIwEE3endEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE3endEv

