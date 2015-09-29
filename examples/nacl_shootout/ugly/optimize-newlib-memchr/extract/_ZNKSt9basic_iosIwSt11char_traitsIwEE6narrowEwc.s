  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, @function

#! file-offset 0xa59c0
#! rip-offset  0x659c0
#! capacity    96 bytes

# Text                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc:  #        0x659c0  0      OPC=<label>         
  movl %edi, %edi                                  #  1     0x659c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                  #  2     0x659c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                  #  3     0x659c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                  #  4     0x659c8  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rdi,1), %edi                     #  5     0x659ca  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                 #  6     0x659d2  3      OPC=testq_r64_r64   
  je .L_65a00                                      #  7     0x659d5  2      OPC=je_label        
  movl %edi, %edi                                  #  8     0x659d7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                         #  9     0x659d9  4      OPC=movl_r32_m32    
  movsbl %dl, %edx                                 #  10    0x659dd  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                  #  11    0x659e0  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                     #  12    0x659e2  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                  #  13    0x659e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                  #  14    0x659ea  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                           #  15    0x659ed  6      OPC=andl_r32_imm32  
  nop                                              #  16    0x659f3  1      OPC=nop             
  nop                                              #  17    0x659f4  1      OPC=nop             
  nop                                              #  18    0x659f5  1      OPC=nop             
  addq %r15, %rax                                  #  19    0x659f6  3      OPC=addq_r64_r64    
  jmpq %rax                                        #  20    0x659f9  2      OPC=jmpq_r64        
  nop                                              #  21    0x659fb  1      OPC=nop             
  nop                                              #  22    0x659fc  1      OPC=nop             
  nop                                              #  23    0x659fd  1      OPC=nop             
  nop                                              #  24    0x659fe  1      OPC=nop             
  nop                                              #  25    0x659ff  1      OPC=nop             
  nop                                              #  26    0x65a00  1      OPC=nop             
  nop                                              #  27    0x65a01  1      OPC=nop             
  nop                                              #  28    0x65a02  1      OPC=nop             
  nop                                              #  29    0x65a03  1      OPC=nop             
  nop                                              #  30    0x65a04  1      OPC=nop             
  nop                                              #  31    0x65a05  1      OPC=nop             
.L_65a00:                                          #        0x65a06  0      OPC=<label>         
  nop                                              #  32    0x65a06  1      OPC=nop             
  nop                                              #  33    0x65a07  1      OPC=nop             
  nop                                              #  34    0x65a08  1      OPC=nop             
  nop                                              #  35    0x65a09  1      OPC=nop             
  nop                                              #  36    0x65a0a  1      OPC=nop             
  nop                                              #  37    0x65a0b  1      OPC=nop             
  nop                                              #  38    0x65a0c  1      OPC=nop             
  nop                                              #  39    0x65a0d  1      OPC=nop             
  nop                                              #  40    0x65a0e  1      OPC=nop             
  nop                                              #  41    0x65a0f  1      OPC=nop             
  nop                                              #  42    0x65a10  1      OPC=nop             
  nop                                              #  43    0x65a11  1      OPC=nop             
  nop                                              #  44    0x65a12  1      OPC=nop             
  nop                                              #  45    0x65a13  1      OPC=nop             
  nop                                              #  46    0x65a14  1      OPC=nop             
  nop                                              #  47    0x65a15  1      OPC=nop             
  nop                                              #  48    0x65a16  1      OPC=nop             
  nop                                              #  49    0x65a17  1      OPC=nop             
  nop                                              #  50    0x65a18  1      OPC=nop             
  nop                                              #  51    0x65a19  1      OPC=nop             
  nop                                              #  52    0x65a1a  1      OPC=nop             
  nop                                              #  53    0x65a1b  1      OPC=nop             
  nop                                              #  54    0x65a1c  1      OPC=nop             
  nop                                              #  55    0x65a1d  1      OPC=nop             
  nop                                              #  56    0x65a1e  1      OPC=nop             
  nop                                              #  57    0x65a1f  1      OPC=nop             
  nop                                              #  58    0x65a20  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                   #  59    0x65a21  5      OPC=callq_label     
                                                                                                
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc

