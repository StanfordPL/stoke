  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, @function

#! file-offset 0xa52a0
#! rip-offset  0x652a0
#! capacity    96 bytes

# Text                                             #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc:  #        0x652a0  0      OPC=<label>         
  movl %edi, %edi                                  #  1     0x652a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                  #  2     0x652a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                  #  3     0x652a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                  #  4     0x652a8  2      OPC=movl_r32_r32    
  movl 0x80(%r15,%rdi,1), %edi                     #  5     0x652aa  8      OPC=movl_r32_m32    
  testq %rdi, %rdi                                 #  6     0x652b2  3      OPC=testq_r64_r64   
  je .L_652e0                                      #  7     0x652b5  2      OPC=je_label        
  movl %edi, %edi                                  #  8     0x652b7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                         #  9     0x652b9  4      OPC=movl_r32_m32    
  movsbl %dl, %edx                                 #  10    0x652bd  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                  #  11    0x652c0  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                     #  12    0x652c2  5      OPC=movl_r32_m32    
  addl $0x8, %esp                                  #  13    0x652c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                  #  14    0x652ca  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                           #  15    0x652cd  6      OPC=andl_r32_imm32  
  nop                                              #  16    0x652d3  1      OPC=nop             
  nop                                              #  17    0x652d4  1      OPC=nop             
  nop                                              #  18    0x652d5  1      OPC=nop             
  addq %r15, %rax                                  #  19    0x652d6  3      OPC=addq_r64_r64    
  jmpq %rax                                        #  20    0x652d9  2      OPC=jmpq_r64        
  nop                                              #  21    0x652db  1      OPC=nop             
  nop                                              #  22    0x652dc  1      OPC=nop             
  nop                                              #  23    0x652dd  1      OPC=nop             
  nop                                              #  24    0x652de  1      OPC=nop             
  nop                                              #  25    0x652df  1      OPC=nop             
  nop                                              #  26    0x652e0  1      OPC=nop             
  nop                                              #  27    0x652e1  1      OPC=nop             
  nop                                              #  28    0x652e2  1      OPC=nop             
  nop                                              #  29    0x652e3  1      OPC=nop             
  nop                                              #  30    0x652e4  1      OPC=nop             
  nop                                              #  31    0x652e5  1      OPC=nop             
.L_652e0:                                          #        0x652e6  0      OPC=<label>         
  nop                                              #  32    0x652e6  1      OPC=nop             
  nop                                              #  33    0x652e7  1      OPC=nop             
  nop                                              #  34    0x652e8  1      OPC=nop             
  nop                                              #  35    0x652e9  1      OPC=nop             
  nop                                              #  36    0x652ea  1      OPC=nop             
  nop                                              #  37    0x652eb  1      OPC=nop             
  nop                                              #  38    0x652ec  1      OPC=nop             
  nop                                              #  39    0x652ed  1      OPC=nop             
  nop                                              #  40    0x652ee  1      OPC=nop             
  nop                                              #  41    0x652ef  1      OPC=nop             
  nop                                              #  42    0x652f0  1      OPC=nop             
  nop                                              #  43    0x652f1  1      OPC=nop             
  nop                                              #  44    0x652f2  1      OPC=nop             
  nop                                              #  45    0x652f3  1      OPC=nop             
  nop                                              #  46    0x652f4  1      OPC=nop             
  nop                                              #  47    0x652f5  1      OPC=nop             
  nop                                              #  48    0x652f6  1      OPC=nop             
  nop                                              #  49    0x652f7  1      OPC=nop             
  nop                                              #  50    0x652f8  1      OPC=nop             
  nop                                              #  51    0x652f9  1      OPC=nop             
  nop                                              #  52    0x652fa  1      OPC=nop             
  nop                                              #  53    0x652fb  1      OPC=nop             
  nop                                              #  54    0x652fc  1      OPC=nop             
  nop                                              #  55    0x652fd  1      OPC=nop             
  nop                                              #  56    0x652fe  1      OPC=nop             
  nop                                              #  57    0x652ff  1      OPC=nop             
  nop                                              #  58    0x65300  1      OPC=nop             
  callq ._ZSt16__throw_bad_castv                   #  59    0x65301  5      OPC=callq_label     
                                                                                                
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE6narrowEwc

