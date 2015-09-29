  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE, @function

#! file-offset 0x11b380
#! rip-offset  0xdb380
#! capacity    64 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE:  #        0xdb380  0      OPC=<label>        
  movl %edi, %edi                                            #  1     0xdb380  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                            #  2     0xdb382  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                           #  3     0xdb384  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                            #  4     0xdb388  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                   #  5     0xdb38a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                       #  6     0xdb38e  8      OPC=leal_r32_m16   
  xorl %edx, %edx                                            #  7     0xdb396  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                            #  8     0xdb398  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                            #  9     0xdb39c  3      OPC=subl_r32_imm8  
  nop                                                        #  10    0xdb39f  1      OPC=nop            
  movl %eax, %eax                                            #  11    0xdb3a0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %esi                                   #  12    0xdb3a2  4      OPC=movl_r32_m32   
  shll $0x2, %esi                                            #  13    0xdb3a6  3      OPC=shll_r32_imm8  
  sarl $0x2, %esi                                            #  14    0xdb3a9  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj       #  15    0xdb3ac  5      OPC=jmpq_label_1   
  nop                                                        #  16    0xdb3b1  1      OPC=nop            
  nop                                                        #  17    0xdb3b2  1      OPC=nop            
  nop                                                        #  18    0xdb3b3  1      OPC=nop            
  nop                                                        #  19    0xdb3b4  1      OPC=nop            
  nop                                                        #  20    0xdb3b5  1      OPC=nop            
  nop                                                        #  21    0xdb3b6  1      OPC=nop            
  nop                                                        #  22    0xdb3b7  1      OPC=nop            
  nop                                                        #  23    0xdb3b8  1      OPC=nop            
  nop                                                        #  24    0xdb3b9  1      OPC=nop            
  nop                                                        #  25    0xdb3ba  1      OPC=nop            
  nop                                                        #  26    0xdb3bb  1      OPC=nop            
  nop                                                        #  27    0xdb3bc  1      OPC=nop            
  nop                                                        #  28    0xdb3bd  1      OPC=nop            
  nop                                                        #  29    0xdb3be  1      OPC=nop            
  nop                                                        #  30    0xdb3bf  1      OPC=nop            
                                                                                                         
.size _ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEEpLESt16initializer_listIwE

