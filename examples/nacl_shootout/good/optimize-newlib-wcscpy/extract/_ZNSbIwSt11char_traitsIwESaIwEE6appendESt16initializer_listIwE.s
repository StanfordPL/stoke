  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE, @function

#! file-offset 0x11a920
#! rip-offset  0xda920
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE:  #        0xda920  0      OPC=<label>        
  movl %edi, %edi                                                 #  1     0xda920  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                                 #  2     0xda922  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                                #  3     0xda924  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                                 #  4     0xda928  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                        #  5     0xda92a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                            #  6     0xda92e  8      OPC=leal_r32_m16   
  xorl %edx, %edx                                                 #  7     0xda936  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                                 #  8     0xda938  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                                 #  9     0xda93c  3      OPC=subl_r32_imm8  
  nop                                                             #  10    0xda93f  1      OPC=nop            
  movl %eax, %eax                                                 #  11    0xda940  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %esi                                        #  12    0xda942  4      OPC=movl_r32_m32   
  shll $0x2, %esi                                                 #  13    0xda946  3      OPC=shll_r32_imm8  
  sarl $0x2, %esi                                                 #  14    0xda949  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj            #  15    0xda94c  5      OPC=jmpq_label_1   
  nop                                                             #  16    0xda951  1      OPC=nop            
  nop                                                             #  17    0xda952  1      OPC=nop            
  nop                                                             #  18    0xda953  1      OPC=nop            
  nop                                                             #  19    0xda954  1      OPC=nop            
  nop                                                             #  20    0xda955  1      OPC=nop            
  nop                                                             #  21    0xda956  1      OPC=nop            
  nop                                                             #  22    0xda957  1      OPC=nop            
  nop                                                             #  23    0xda958  1      OPC=nop            
  nop                                                             #  24    0xda959  1      OPC=nop            
  nop                                                             #  25    0xda95a  1      OPC=nop            
  nop                                                             #  26    0xda95b  1      OPC=nop            
  nop                                                             #  27    0xda95c  1      OPC=nop            
  nop                                                             #  28    0xda95d  1      OPC=nop            
  nop                                                             #  29    0xda95e  1      OPC=nop            
  nop                                                             #  30    0xda95f  1      OPC=nop            
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE

