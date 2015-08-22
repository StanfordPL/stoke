  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE, @function

#! file-offset 0x11b340
#! rip-offset  0xdb340
#! capacity    64 bytes

# Text                                                            #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE:  #        0xdb340  0      OPC=<label>        
  movl %edi, %edi                                                 #  1     0xdb340  2      OPC=movl_r32_r32   
  movl %esi, %ecx                                                 #  2     0xdb342  2      OPC=movl_r32_r32   
  shrq $0x20, %rsi                                                #  3     0xdb344  4      OPC=shrq_r64_imm8  
  movl %edi, %edi                                                 #  4     0xdb348  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax                                        #  5     0xdb34a  4      OPC=movl_r32_m32   
  leal (,%rsi,4), %r8d                                            #  6     0xdb34e  8      OPC=leal_r32_m16   
  xorl %edx, %edx                                                 #  7     0xdb356  2      OPC=xorl_r32_r32   
  sarl $0x2, %r8d                                                 #  8     0xdb358  4      OPC=sarl_r32_imm8  
  subl $0xc, %eax                                                 #  9     0xdb35c  3      OPC=subl_r32_imm8  
  nop                                                             #  10    0xdb35f  1      OPC=nop            
  movl %eax, %eax                                                 #  11    0xdb360  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %esi                                        #  12    0xdb362  4      OPC=movl_r32_m32   
  shll $0x2, %esi                                                 #  13    0xdb366  3      OPC=shll_r32_imm8  
  sarl $0x2, %esi                                                 #  14    0xdb369  3      OPC=sarl_r32_imm8  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj            #  15    0xdb36c  5      OPC=jmpq_label_1   
  nop                                                             #  16    0xdb371  1      OPC=nop            
  nop                                                             #  17    0xdb372  1      OPC=nop            
  nop                                                             #  18    0xdb373  1      OPC=nop            
  nop                                                             #  19    0xdb374  1      OPC=nop            
  nop                                                             #  20    0xdb375  1      OPC=nop            
  nop                                                             #  21    0xdb376  1      OPC=nop            
  nop                                                             #  22    0xdb377  1      OPC=nop            
  nop                                                             #  23    0xdb378  1      OPC=nop            
  nop                                                             #  24    0xdb379  1      OPC=nop            
  nop                                                             #  25    0xdb37a  1      OPC=nop            
  nop                                                             #  26    0xdb37b  1      OPC=nop            
  nop                                                             #  27    0xdb37c  1      OPC=nop            
  nop                                                             #  28    0xdb37d  1      OPC=nop            
  nop                                                             #  29    0xdb37e  1      OPC=nop            
  nop                                                             #  30    0xdb37f  1      OPC=nop            
                                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendESt16initializer_listIwE

