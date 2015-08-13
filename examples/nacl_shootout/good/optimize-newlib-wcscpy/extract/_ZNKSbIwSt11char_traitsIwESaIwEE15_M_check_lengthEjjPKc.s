  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, @function

#! file-offset 0x115a20
#! rip-offset  0xd5a20
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc:  #        0xd5a20  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xd5a20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                          #  2     0xd5a22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                          #  3     0xd5a25  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                          #  4     0xd5a28  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  5     0xd5a2a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  6     0xd5a2c  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                          #  7     0xd5a30  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                          #  8     0xd5a33  2      OPC=movl_r32_r32    
  subl (%r15,%rax,1), %esi                                 #  9     0xd5a35  4      OPC=subl_r32_m32    
  addl $0xffffffe, %esi                                    #  10    0xd5a39  6      OPC=addl_r32_imm32  
  nop                                                      #  11    0xd5a3f  1      OPC=nop             
  cmpl %edx, %esi                                          #  12    0xd5a40  2      OPC=cmpl_r32_r32    
  jb .L_d5a60                                              #  13    0xd5a42  2      OPC=jb_label        
  addl $0x8, %esp                                          #  14    0xd5a44  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                          #  15    0xd5a47  3      OPC=addq_r64_r64    
  popq %r11                                                #  16    0xd5a4a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                  #  17    0xd5a4c  7      OPC=andl_r32_imm32  
  nop                                                      #  18    0xd5a53  1      OPC=nop             
  nop                                                      #  19    0xd5a54  1      OPC=nop             
  nop                                                      #  20    0xd5a55  1      OPC=nop             
  nop                                                      #  21    0xd5a56  1      OPC=nop             
  addq %r15, %r11                                          #  22    0xd5a57  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  23    0xd5a5a  3      OPC=jmpq_r64        
  nop                                                      #  24    0xd5a5d  1      OPC=nop             
  nop                                                      #  25    0xd5a5e  1      OPC=nop             
  nop                                                      #  26    0xd5a5f  1      OPC=nop             
  nop                                                      #  27    0xd5a60  1      OPC=nop             
  nop                                                      #  28    0xd5a61  1      OPC=nop             
  nop                                                      #  29    0xd5a62  1      OPC=nop             
  nop                                                      #  30    0xd5a63  1      OPC=nop             
  nop                                                      #  31    0xd5a64  1      OPC=nop             
  nop                                                      #  32    0xd5a65  1      OPC=nop             
  nop                                                      #  33    0xd5a66  1      OPC=nop             
.L_d5a60:                                                  #        0xd5a67  0      OPC=<label>         
  movl %ecx, %edi                                          #  34    0xd5a67  2      OPC=movl_r32_r32    
  nop                                                      #  35    0xd5a69  1      OPC=nop             
  nop                                                      #  36    0xd5a6a  1      OPC=nop             
  nop                                                      #  37    0xd5a6b  1      OPC=nop             
  nop                                                      #  38    0xd5a6c  1      OPC=nop             
  nop                                                      #  39    0xd5a6d  1      OPC=nop             
  nop                                                      #  40    0xd5a6e  1      OPC=nop             
  nop                                                      #  41    0xd5a6f  1      OPC=nop             
  nop                                                      #  42    0xd5a70  1      OPC=nop             
  nop                                                      #  43    0xd5a71  1      OPC=nop             
  nop                                                      #  44    0xd5a72  1      OPC=nop             
  nop                                                      #  45    0xd5a73  1      OPC=nop             
  nop                                                      #  46    0xd5a74  1      OPC=nop             
  nop                                                      #  47    0xd5a75  1      OPC=nop             
  nop                                                      #  48    0xd5a76  1      OPC=nop             
  nop                                                      #  49    0xd5a77  1      OPC=nop             
  nop                                                      #  50    0xd5a78  1      OPC=nop             
  nop                                                      #  51    0xd5a79  1      OPC=nop             
  nop                                                      #  52    0xd5a7a  1      OPC=nop             
  nop                                                      #  53    0xd5a7b  1      OPC=nop             
  nop                                                      #  54    0xd5a7c  1      OPC=nop             
  nop                                                      #  55    0xd5a7d  1      OPC=nop             
  nop                                                      #  56    0xd5a7e  1      OPC=nop             
  nop                                                      #  57    0xd5a7f  1      OPC=nop             
  nop                                                      #  58    0xd5a80  1      OPC=nop             
  nop                                                      #  59    0xd5a81  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc                     #  60    0xd5a82  5      OPC=callq_label     
                                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc

