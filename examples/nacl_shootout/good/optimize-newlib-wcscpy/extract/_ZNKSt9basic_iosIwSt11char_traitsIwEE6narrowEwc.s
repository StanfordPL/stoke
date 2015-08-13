  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, @function

#! file-offset 0xa4fa0
#! rip-offset  0x64fa0
#! capacity    96 bytes

# Text                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc:  #        0x64fa0  0      OPC=<label>         
  movl %edi, %edi                                  #  1     0x64fa0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                  #  2     0x64fa2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                  #  3     0x64fa5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                  #  4     0x64fa8  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rdi,1), %edi                     #  5     0x64faa  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                 #  6     0x64fb2  3      OPC=testq_r64_r64   
  je .L_64fe0                                      #  7     0x64fb5  2      OPC=je_label        
  movl %edi, %edi                                  #  8     0x64fb7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                         #  9     0x64fb9  4      OPC=movl_r32_m32    
  movsbl %dl, %edx                                 #  10    0x64fbd  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                  #  11    0x64fc0  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                     #  12    0x64fc2  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                  #  13    0x64fc7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                  #  14    0x64fca  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                           #  15    0x64fcd  6      OPC=andl_r32_imm32  
  nop                                              #  16    0x64fd3  1      OPC=nop             
  nop                                              #  17    0x64fd4  1      OPC=nop             
  nop                                              #  18    0x64fd5  1      OPC=nop             
  addq %r15, %rax                                  #  19    0x64fd6  3      OPC=addq_r64_r64    
  jmpq %rax                                        #  20    0x64fd9  2      OPC=jmpq_r64        
  nop                                              #  21    0x64fdb  1      OPC=nop             
  nop                                              #  22    0x64fdc  1      OPC=nop             
  nop                                              #  23    0x64fdd  1      OPC=nop             
  nop                                              #  24    0x64fde  1      OPC=nop             
  nop                                              #  25    0x64fdf  1      OPC=nop             
  nop                                              #  26    0x64fe0  1      OPC=nop             
  nop                                              #  27    0x64fe1  1      OPC=nop             
  nop                                              #  28    0x64fe2  1      OPC=nop             
  nop                                              #  29    0x64fe3  1      OPC=nop             
  nop                                              #  30    0x64fe4  1      OPC=nop             
  nop                                              #  31    0x64fe5  1      OPC=nop             
.L_64fe0:                                          #        0x64fe6  0      OPC=<label>         
  nop                                              #  32    0x64fe6  1      OPC=nop             
  nop                                              #  33    0x64fe7  1      OPC=nop             
  nop                                              #  34    0x64fe8  1      OPC=nop             
  nop                                              #  35    0x64fe9  1      OPC=nop             
  nop                                              #  36    0x64fea  1      OPC=nop             
  nop                                              #  37    0x64feb  1      OPC=nop             
  nop                                              #  38    0x64fec  1      OPC=nop             
  nop                                              #  39    0x64fed  1      OPC=nop             
  nop                                              #  40    0x64fee  1      OPC=nop             
  nop                                              #  41    0x64fef  1      OPC=nop             
  nop                                              #  42    0x64ff0  1      OPC=nop             
  nop                                              #  43    0x64ff1  1      OPC=nop             
  nop                                              #  44    0x64ff2  1      OPC=nop             
  nop                                              #  45    0x64ff3  1      OPC=nop             
  nop                                              #  46    0x64ff4  1      OPC=nop             
  nop                                              #  47    0x64ff5  1      OPC=nop             
  nop                                              #  48    0x64ff6  1      OPC=nop             
  nop                                              #  49    0x64ff7  1      OPC=nop             
  nop                                              #  50    0x64ff8  1      OPC=nop             
  nop                                              #  51    0x64ff9  1      OPC=nop             
  nop                                              #  52    0x64ffa  1      OPC=nop             
  nop                                              #  53    0x64ffb  1      OPC=nop             
  nop                                              #  54    0x64ffc  1      OPC=nop             
  nop                                              #  55    0x64ffd  1      OPC=nop             
  nop                                              #  56    0x64ffe  1      OPC=nop             
  nop                                              #  57    0x64fff  1      OPC=nop             
  nop                                              #  58    0x65000  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                   #  59    0x65001  5      OPC=callq_label     
                                                                                                
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc

