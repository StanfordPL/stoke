  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE, @function

#! file-offset 0x11a960
#! rip-offset  0xda960
#! capacity    64 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE:  #        0xda960  0      OPC=<label>        
  movl %edi, %edi                                            #  1     0xda960  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                            #  2     0xda962  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                           #  3     0xda964  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                            #  4     0xda968  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                   #  5     0xda96a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                       #  6     0xda96e  8      OPC=leal_r32_m16   
  xorl %edx, %edx                                            #  7     0xda976  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                            #  8     0xda978  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                            #  9     0xda97c  3      OPC=subl_r32_imm8  
  nop                                                        #  10    0xda97f  1      OPC=nop            
  movl %eax, %eax                                            #  11    0xda980  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %esi                                   #  12    0xda982  4      OPC=movl_r32_m32   
  shll $0x2, %esi                                            #  13    0xda986  3      OPC=shll_r32_imm8  
  sarl $0x2, %esi                                            #  14    0xda989  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj       #  15    0xda98c  5      OPC=jmpq_label_1   
  nop                                                        #  16    0xda991  1      OPC=nop            
  nop                                                        #  17    0xda992  1      OPC=nop            
  nop                                                        #  18    0xda993  1      OPC=nop            
  nop                                                        #  19    0xda994  1      OPC=nop            
  nop                                                        #  20    0xda995  1      OPC=nop            
  nop                                                        #  21    0xda996  1      OPC=nop            
  nop                                                        #  22    0xda997  1      OPC=nop            
  nop                                                        #  23    0xda998  1      OPC=nop            
  nop                                                        #  24    0xda999  1      OPC=nop            
  nop                                                        #  25    0xda99a  1      OPC=nop            
  nop                                                        #  26    0xda99b  1      OPC=nop            
  nop                                                        #  27    0xda99c  1      OPC=nop            
  nop                                                        #  28    0xda99d  1      OPC=nop            
  nop                                                        #  29    0xda99e  1      OPC=nop            
  nop                                                        #  30    0xda99f  1      OPC=nop            
                                                                                                         
.size _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE

