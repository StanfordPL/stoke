  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xe8e40
#! rip-offset  0xa8e40
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv:  #        0xa8e40  0      OPC=<label>         
  pushq %rbx                                           #  1     0xa8e40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                      #  2     0xa8e41  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  3     0xa8e43  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  4     0xa8e45  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                      #  5     0xa8e49  2      OPC=movl_r32_r32    
  movl %eax, %eax                                      #  6     0xa8e4b  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa8e4d  5      OPC=movl_r32_m32    
  nop                                                  #  8     0xa8e52  1      OPC=nop             
  nop                                                  #  9     0xa8e53  1      OPC=nop             
  nop                                                  #  10    0xa8e54  1      OPC=nop             
  nop                                                  #  11    0xa8e55  1      OPC=nop             
  nop                                                  #  12    0xa8e56  1      OPC=nop             
  nop                                                  #  13    0xa8e57  1      OPC=nop             
  andl $0xffffffe0, %eax                               #  14    0xa8e58  6      OPC=andl_r32_imm32  
  nop                                                  #  15    0xa8e5e  1      OPC=nop             
  nop                                                  #  16    0xa8e5f  1      OPC=nop             
  nop                                                  #  17    0xa8e60  1      OPC=nop             
  addq %r15, %rax                                      #  18    0xa8e61  3      OPC=addq_r64_r64    
  callq %rax                                           #  19    0xa8e64  2      OPC=callq_r64       
  cmpl $0xffffffff, %eax                               #  20    0xa8e66  6      OPC=cmpl_r32_imm32  
  nop                                                  #  21    0xa8e6c  1      OPC=nop             
  nop                                                  #  22    0xa8e6d  1      OPC=nop             
  nop                                                  #  23    0xa8e6e  1      OPC=nop             
  je .L_a8e80                                          #  24    0xa8e6f  2      OPC=je_label        
  movl %ebx, %ebx                                      #  25    0xa8e71  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edx                          #  26    0xa8e73  5      OPC=movl_r32_m32    
  movl %edx, %edx                                      #  27    0xa8e78  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %eax                           #  28    0xa8e7a  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx                                      #  29    0xa8e7f  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx                                      #  30    0xa8e82  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rbx,1)                          #  31    0xa8e84  5      OPC=movl_m32_r32    
  nop                                                  #  32    0xa8e89  1      OPC=nop             
  nop                                                  #  33    0xa8e8a  1      OPC=nop             
  nop                                                  #  34    0xa8e8b  1      OPC=nop             
.L_a8e80:                                              #        0xa8e8c  0      OPC=<label>         
  popq %rbx                                            #  35    0xa8e8c  1      OPC=popq_r64_1      
  popq %r11                                            #  36    0xa8e8d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  37    0xa8e8f  7      OPC=andl_r32_imm32  
  nop                                                  #  38    0xa8e96  1      OPC=nop             
  nop                                                  #  39    0xa8e97  1      OPC=nop             
  nop                                                  #  40    0xa8e98  1      OPC=nop             
  nop                                                  #  41    0xa8e99  1      OPC=nop             
  addq %r15, %r11                                      #  42    0xa8e9a  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  43    0xa8e9d  3      OPC=jmpq_r64        
  nop                                                  #  44    0xa8ea0  1      OPC=nop             
  nop                                                  #  45    0xa8ea1  1      OPC=nop             
  nop                                                  #  46    0xa8ea2  1      OPC=nop             
  nop                                                  #  47    0xa8ea3  1      OPC=nop             
  nop                                                  #  48    0xa8ea4  1      OPC=nop             
  nop                                                  #  49    0xa8ea5  1      OPC=nop             
  nop                                                  #  50    0xa8ea6  1      OPC=nop             
  nop                                                  #  51    0xa8ea7  1      OPC=nop             
  nop                                                  #  52    0xa8ea8  1      OPC=nop             
  nop                                                  #  53    0xa8ea9  1      OPC=nop             
  nop                                                  #  54    0xa8eaa  1      OPC=nop             
  nop                                                  #  55    0xa8eab  1      OPC=nop             
  nop                                                  #  56    0xa8eac  1      OPC=nop             
  nop                                                  #  57    0xa8ead  1      OPC=nop             
  nop                                                  #  58    0xa8eae  1      OPC=nop             
  nop                                                  #  59    0xa8eaf  1      OPC=nop             
  nop                                                  #  60    0xa8eb0  1      OPC=nop             
  nop                                                  #  61    0xa8eb1  1      OPC=nop             
  nop                                                  #  62    0xa8eb2  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv

