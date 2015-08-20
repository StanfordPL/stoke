  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE, @function

#! file-offset 0x11ad20
#! rip-offset  0xdad20
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE:  #        0xdad20  0      OPC=<label>        
  movl %edi, %edi                                                 #  1     0xdad20  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                                 #  2     0xdad22  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                                #  3     0xdad24  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                                 #  4     0xdad28  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                        #  5     0xdad2a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                            #  6     0xdad2e  8      OPC=leal_r32_m16   
  xorl %esi, %esi                                                 #  7     0xdad36  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                                 #  8     0xdad38  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                                 #  9     0xdad3c  3      OPC=subl_r32_imm8  
  nop                                                             #  10    0xdad3f  1      OPC=nop            
  movl %eax, %eax                                                 #  11    0xdad40  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx                                        #  12    0xdad42  4      OPC=movl_r32_m32   
  shll $0x2, %edx                                                 #  13    0xdad46  3      OPC=shll_r32_imm8  
  sarl $0x2, %edx                                                 #  14    0xdad49  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj            #  15    0xdad4c  5      OPC=jmpq_label_1   
  nop                                                             #  16    0xdad51  1      OPC=nop            
  nop                                                             #  17    0xdad52  1      OPC=nop            
  nop                                                             #  18    0xdad53  1      OPC=nop            
  nop                                                             #  19    0xdad54  1      OPC=nop            
  nop                                                             #  20    0xdad55  1      OPC=nop            
  nop                                                             #  21    0xdad56  1      OPC=nop            
  nop                                                             #  22    0xdad57  1      OPC=nop            
  nop                                                             #  23    0xdad58  1      OPC=nop            
  nop                                                             #  24    0xdad59  1      OPC=nop            
  nop                                                             #  25    0xdad5a  1      OPC=nop            
  nop                                                             #  26    0xdad5b  1      OPC=nop            
  nop                                                             #  27    0xdad5c  1      OPC=nop            
  nop                                                             #  28    0xdad5d  1      OPC=nop            
  nop                                                             #  29    0xdad5e  1      OPC=nop            
  nop                                                             #  30    0xdad5f  1      OPC=nop            
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignESt16initializer_listIwE

