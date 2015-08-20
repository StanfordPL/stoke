  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE, @function

#! file-offset 0x11ac20
#! rip-offset  0xdac20
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE:  #        0xdac20  0      OPC=<label>        
  movl %edi, %edi                                                 #  1     0xdac20  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                                 #  2     0xdac22  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                                #  3     0xdac24  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                                 #  4     0xdac28  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                        #  5     0xdac2a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                            #  6     0xdac2e  8      OPC=leal_r32_m16   
  xorl %edx, %edx                                                 #  7     0xdac36  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                                 #  8     0xdac38  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                                 #  9     0xdac3c  3      OPC=subl_r32_imm8  
  nop                                                             #  10    0xdac3f  1      OPC=nop            
  movl %eax, %eax                                                 #  11    0xdac40  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %esi                                        #  12    0xdac42  4      OPC=movl_r32_m32   
  shll $0x2, %esi                                                 #  13    0xdac46  3      OPC=shll_r32_imm8  
  sarl $0x2, %esi                                                 #  14    0xdac49  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj            #  15    0xdac4c  5      OPC=jmpq_label_1   
  nop                                                             #  16    0xdac51  1      OPC=nop            
  nop                                                             #  17    0xdac52  1      OPC=nop            
  nop                                                             #  18    0xdac53  1      OPC=nop            
  nop                                                             #  19    0xdac54  1      OPC=nop            
  nop                                                             #  20    0xdac55  1      OPC=nop            
  nop                                                             #  21    0xdac56  1      OPC=nop            
  nop                                                             #  22    0xdac57  1      OPC=nop            
  nop                                                             #  23    0xdac58  1      OPC=nop            
  nop                                                             #  24    0xdac59  1      OPC=nop            
  nop                                                             #  25    0xdac5a  1      OPC=nop            
  nop                                                             #  26    0xdac5b  1      OPC=nop            
  nop                                                             #  27    0xdac5c  1      OPC=nop            
  nop                                                             #  28    0xdac5d  1      OPC=nop            
  nop                                                             #  29    0xdac5e  1      OPC=nop            
  nop                                                             #  30    0xdac5f  1      OPC=nop            
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE

