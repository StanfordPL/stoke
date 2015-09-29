  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, @function

#! file-offset 0x116440
#! rip-offset  0xd6440
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc:  #        0xd6440  0      OPC=<label>         
  movl %edi, %edi                                          #  1     0xd6440  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                          #  2     0xd6442  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                          #  3     0xd6445  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                          #  4     0xd6448  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  5     0xd644a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                 #  6     0xd644c  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                          #  7     0xd6450  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                          #  8     0xd6453  2      OPC=movl_r32_r32    
  subl (%r15,%rax,1), %esi                                 #  9     0xd6455  4      OPC=subl_r32_m32    
  addl $0xffffffe, %esi                                    #  10    0xd6459  6      OPC=addl_r32_imm32  
  nop                                                      #  11    0xd645f  1      OPC=nop             
  cmpl %edx, %esi                                          #  12    0xd6460  2      OPC=cmpl_r32_r32    
  jb .L_d6480                                              #  13    0xd6462  2      OPC=jb_label        
  addl $0x8, %esp                                          #  14    0xd6464  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                          #  15    0xd6467  3      OPC=addq_r64_r64    
  popq %r11                                                #  16    0xd646a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                  #  17    0xd646c  7      OPC=andl_r32_imm32  
  nop                                                      #  18    0xd6473  1      OPC=nop             
  nop                                                      #  19    0xd6474  1      OPC=nop             
  nop                                                      #  20    0xd6475  1      OPC=nop             
  nop                                                      #  21    0xd6476  1      OPC=nop             
  addq %r15, %r11                                          #  22    0xd6477  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  23    0xd647a  3      OPC=jmpq_r64        
  nop                                                      #  24    0xd647d  1      OPC=nop             
  nop                                                      #  25    0xd647e  1      OPC=nop             
  nop                                                      #  26    0xd647f  1      OPC=nop             
  nop                                                      #  27    0xd6480  1      OPC=nop             
  nop                                                      #  28    0xd6481  1      OPC=nop             
  nop                                                      #  29    0xd6482  1      OPC=nop             
  nop                                                      #  30    0xd6483  1      OPC=nop             
  nop                                                      #  31    0xd6484  1      OPC=nop             
  nop                                                      #  32    0xd6485  1      OPC=nop             
  nop                                                      #  33    0xd6486  1      OPC=nop             
.L_d6480:                                                  #        0xd6487  0      OPC=<label>         
  movl %ecx, %edi                                          #  34    0xd6487  2      OPC=movl_r32_r32    
  nop                                                      #  35    0xd6489  1      OPC=nop             
  nop                                                      #  36    0xd648a  1      OPC=nop             
  nop                                                      #  37    0xd648b  1      OPC=nop             
  nop                                                      #  38    0xd648c  1      OPC=nop             
  nop                                                      #  39    0xd648d  1      OPC=nop             
  nop                                                      #  40    0xd648e  1      OPC=nop             
  nop                                                      #  41    0xd648f  1      OPC=nop             
  nop                                                      #  42    0xd6490  1      OPC=nop             
  nop                                                      #  43    0xd6491  1      OPC=nop             
  nop                                                      #  44    0xd6492  1      OPC=nop             
  nop                                                      #  45    0xd6493  1      OPC=nop             
  nop                                                      #  46    0xd6494  1      OPC=nop             
  nop                                                      #  47    0xd6495  1      OPC=nop             
  nop                                                      #  48    0xd6496  1      OPC=nop             
  nop                                                      #  49    0xd6497  1      OPC=nop             
  nop                                                      #  50    0xd6498  1      OPC=nop             
  nop                                                      #  51    0xd6499  1      OPC=nop             
  nop                                                      #  52    0xd649a  1      OPC=nop             
  nop                                                      #  53    0xd649b  1      OPC=nop             
  nop                                                      #  54    0xd649c  1      OPC=nop             
  nop                                                      #  55    0xd649d  1      OPC=nop             
  nop                                                      #  56    0xd649e  1      OPC=nop             
  nop                                                      #  57    0xd649f  1      OPC=nop             
  nop                                                      #  58    0xd64a0  1      OPC=nop             
  nop                                                      #  59    0xd64a1  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc                     #  60    0xd64a2  5      OPC=callq_label     
                                                                                                        
.size _ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE15_M_check_lengthEjjPKc

