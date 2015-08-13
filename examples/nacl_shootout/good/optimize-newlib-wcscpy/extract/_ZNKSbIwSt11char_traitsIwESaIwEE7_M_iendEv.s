  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv, @function

#! file-offset 0x1151e0
#! rip-offset  0xd51e0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv:  #        0xd51e0  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xd51e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xd51e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xd51e4  4      OPC=movl_r32_m32    
  popq %r11                                   #  4     0xd51e8  2      OPC=popq_r64_1      
  leal -0xc(%rax), %edx                       #  5     0xd51ea  3      OPC=leal_r32_m16    
  movl %edx, %edx                             #  6     0xd51ed  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                    #  7     0xd51ef  4      OPC=movl_r32_m32    
  leal (%rax,%rdx,4), %eax                    #  8     0xd51f3  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                     #  9     0xd51f6  7      OPC=andl_r32_imm32  
  nop                                         #  10    0xd51fd  1      OPC=nop             
  nop                                         #  11    0xd51fe  1      OPC=nop             
  nop                                         #  12    0xd51ff  1      OPC=nop             
  nop                                         #  13    0xd5200  1      OPC=nop             
  addq %r15, %r11                             #  14    0xd5201  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  15    0xd5204  3      OPC=jmpq_r64        
                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv

