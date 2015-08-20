  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, @function

#! file-offset 0xe8c20
#! rip-offset  0xa8c20
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv:  #        0xa8c20  0      OPC=<label>         
  pushq %rbx                                           #  1     0xa8c20  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xa8c21  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  3     0xa8c23  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  4     0xa8c25  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                      #  5     0xa8c29  2      OPC=movl_r32_r32    
  movl %eax, %eax                                      #  6     0xa8c2b  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa8c2d  5      OPC=movl_r32_m32    
  nop                                                  #  8     0xa8c32  1      OPC=nop             
  nop                                                  #  9     0xa8c33  1      OPC=nop             
  nop                                                  #  10    0xa8c34  1      OPC=nop             
  nop                                                  #  11    0xa8c35  1      OPC=nop             
  nop                                                  #  12    0xa8c36  1      OPC=nop             
  nop                                                  #  13    0xa8c37  1      OPC=nop             
  andl $0xffffffe0, %eax                               #  14    0xa8c38  6      OPC=andl_r32_imm32  
  nop                                                  #  15    0xa8c3e  1      OPC=nop             
  nop                                                  #  16    0xa8c3f  1      OPC=nop             
  nop                                                  #  17    0xa8c40  1      OPC=nop             
  addq %r15, %rax                                      #  18    0xa8c41  3      OPC=addq_r64_r64    
  callq %rax                                           #  19    0xa8c44  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                               #  20    0xa8c46  6      OPC=cmpl_r32_imm32  
  nop                                                  #  21    0xa8c4c  1      OPC=nop             
  nop                                                  #  22    0xa8c4d  1      OPC=nop             
  nop                                                  #  23    0xa8c4e  1      OPC=nop             
  je .L_a8c60                                          #  24    0xa8c4f  2      OPC=je_label        
  movl %ebx, %ebx                                      #  25    0xa8c51  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edx                          #  26    0xa8c53  5      OPC=movl_r32_m32    
  movl %edx, %edx                                      #  27    0xa8c58  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %eax                             #  28    0xa8c5a  4      OPC=movl_r32_m32    
  addl $0x4, %edx                                      #  29    0xa8c5e  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                                      #  30    0xa8c61  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rbx,1)                          #  31    0xa8c63  5      OPC=movl_m32_r32    
  nop                                                  #  32    0xa8c68  1      OPC=nop             
  nop                                                  #  33    0xa8c69  1      OPC=nop             
  nop                                                  #  34    0xa8c6a  1      OPC=nop             
  nop                                                  #  35    0xa8c6b  1      OPC=nop             
.L_a8c60:                                              #        0xa8c6c  0      OPC=<label>         
  popq %rbx                                            #  36    0xa8c6c  1      OPC=popq_r64_1      
  popq %r11                                            #  37    0xa8c6d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  38    0xa8c6f  7      OPC=andl_r32_imm32  
  nop                                                  #  39    0xa8c76  1      OPC=nop             
  nop                                                  #  40    0xa8c77  1      OPC=nop             
  nop                                                  #  41    0xa8c78  1      OPC=nop             
  nop                                                  #  42    0xa8c79  1      OPC=nop             
  addq %r15, %r11                                      #  43    0xa8c7a  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  44    0xa8c7d  3      OPC=jmpq_r64        
  nop                                                  #  45    0xa8c80  1      OPC=nop             
  nop                                                  #  46    0xa8c81  1      OPC=nop             
  nop                                                  #  47    0xa8c82  1      OPC=nop             
  nop                                                  #  48    0xa8c83  1      OPC=nop             
  nop                                                  #  49    0xa8c84  1      OPC=nop             
  nop                                                  #  50    0xa8c85  1      OPC=nop             
  nop                                                  #  51    0xa8c86  1      OPC=nop             
  nop                                                  #  52    0xa8c87  1      OPC=nop             
  nop                                                  #  53    0xa8c88  1      OPC=nop             
  nop                                                  #  54    0xa8c89  1      OPC=nop             
  nop                                                  #  55    0xa8c8a  1      OPC=nop             
  nop                                                  #  56    0xa8c8b  1      OPC=nop             
  nop                                                  #  57    0xa8c8c  1      OPC=nop             
  nop                                                  #  58    0xa8c8d  1      OPC=nop             
  nop                                                  #  59    0xa8c8e  1      OPC=nop             
  nop                                                  #  60    0xa8c8f  1      OPC=nop             
  nop                                                  #  61    0xa8c90  1      OPC=nop             
  nop                                                  #  62    0xa8c91  1      OPC=nop             
  nop                                                  #  63    0xa8c92  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5uflowEv

