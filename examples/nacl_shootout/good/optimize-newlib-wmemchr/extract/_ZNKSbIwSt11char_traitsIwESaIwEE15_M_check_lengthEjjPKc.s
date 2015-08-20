  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, @function

#! file-offset 0x115d20
#! rip-offset  0xd5d20
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc:  #        0xd5d20  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xd5d20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                          #  2     0xd5d22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                          #  3     0xd5d25  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                          #  4     0xd5d28  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  5     0xd5d2a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  6     0xd5d2c  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                          #  7     0xd5d30  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                          #  8     0xd5d33  2      OPC=movl_r32_r32    
  subl (%r15,%rax,1), %esi                                 #  9     0xd5d35  4      OPC=subl_r32_m32    
  addl $0xffffffe, %esi                                    #  10    0xd5d39  6      OPC=addl_r32_imm32  
  nop                                                      #  11    0xd5d3f  1      OPC=nop             
  cmpl %edx, %esi                                          #  12    0xd5d40  2      OPC=cmpl_r32_r32    
  jb .L_d5d60                                              #  13    0xd5d42  2      OPC=jb_label        
  addl $0x8, %esp                                          #  14    0xd5d44  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                          #  15    0xd5d47  3      OPC=addq_r64_r64    
  popq %r11                                                #  16    0xd5d4a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                  #  17    0xd5d4c  7      OPC=andl_r32_imm32  
  nop                                                      #  18    0xd5d53  1      OPC=nop             
  nop                                                      #  19    0xd5d54  1      OPC=nop             
  nop                                                      #  20    0xd5d55  1      OPC=nop             
  nop                                                      #  21    0xd5d56  1      OPC=nop             
  addq %r15, %r11                                          #  22    0xd5d57  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  23    0xd5d5a  3      OPC=jmpq_r64        
  nop                                                      #  24    0xd5d5d  1      OPC=nop             
  nop                                                      #  25    0xd5d5e  1      OPC=nop             
  nop                                                      #  26    0xd5d5f  1      OPC=nop             
  nop                                                      #  27    0xd5d60  1      OPC=nop             
  nop                                                      #  28    0xd5d61  1      OPC=nop             
  nop                                                      #  29    0xd5d62  1      OPC=nop             
  nop                                                      #  30    0xd5d63  1      OPC=nop             
  nop                                                      #  31    0xd5d64  1      OPC=nop             
  nop                                                      #  32    0xd5d65  1      OPC=nop             
  nop                                                      #  33    0xd5d66  1      OPC=nop             
.L_d5d60:                                                  #        0xd5d67  0      OPC=<label>         
  movl %ecx, %edi                                          #  34    0xd5d67  2      OPC=movl_r32_r32    
  nop                                                      #  35    0xd5d69  1      OPC=nop             
  nop                                                      #  36    0xd5d6a  1      OPC=nop             
  nop                                                      #  37    0xd5d6b  1      OPC=nop             
  nop                                                      #  38    0xd5d6c  1      OPC=nop             
  nop                                                      #  39    0xd5d6d  1      OPC=nop             
  nop                                                      #  40    0xd5d6e  1      OPC=nop             
  nop                                                      #  41    0xd5d6f  1      OPC=nop             
  nop                                                      #  42    0xd5d70  1      OPC=nop             
  nop                                                      #  43    0xd5d71  1      OPC=nop             
  nop                                                      #  44    0xd5d72  1      OPC=nop             
  nop                                                      #  45    0xd5d73  1      OPC=nop             
  nop                                                      #  46    0xd5d74  1      OPC=nop             
  nop                                                      #  47    0xd5d75  1      OPC=nop             
  nop                                                      #  48    0xd5d76  1      OPC=nop             
  nop                                                      #  49    0xd5d77  1      OPC=nop             
  nop                                                      #  50    0xd5d78  1      OPC=nop             
  nop                                                      #  51    0xd5d79  1      OPC=nop             
  nop                                                      #  52    0xd5d7a  1      OPC=nop             
  nop                                                      #  53    0xd5d7b  1      OPC=nop             
  nop                                                      #  54    0xd5d7c  1      OPC=nop             
  nop                                                      #  55    0xd5d7d  1      OPC=nop             
  nop                                                      #  56    0xd5d7e  1      OPC=nop             
  nop                                                      #  57    0xd5d7f  1      OPC=nop             
  nop                                                      #  58    0xd5d80  1      OPC=nop             
  nop                                                      #  59    0xd5d81  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc                     #  60    0xd5d82  5      OPC=callq_label     
                                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc

