  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev, @function

#! file-offset 0x13b900
#! rip-offset  0xfb900
#! capacity    128 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev:  #        0xfb900  0      OPC=<label>         
  movl 0xff42ce6(%rip), %ecx                      #  1     0xfb900  6      OPC=movl_r32_m32    
  movl %edi, %eax                                 #  2     0xfb906  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edx                            #  3     0xfb908  3      OPC=leal_r32_m16    
  movl %eax, %eax                                 #  4     0xfb90b  2      OPC=movl_r32_r32    
  movl $0x1003e5c0, 0x8(%r15,%rax,1)              #  5     0xfb90d  9      OPC=movl_m32_imm32  
  leal 0xc(%rax), %edi                            #  6     0xfb916  3      OPC=leal_r32_m16    
  movl %edx, %edx                                 #  7     0xfb919  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  8     0xfb91b  4      OPC=movl_m32_r32    
  nop                                             #  9     0xfb91f  1      OPC=nop             
  subl $0xc, %ecx                                 #  10    0xfb920  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                 #  11    0xfb923  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx                        #  12    0xfb925  4      OPC=addl_r32_m32    
  movl 0xff42cc1(%rip), %ecx                      #  13    0xfb929  6      OPC=movl_r32_m32    
  movl %edx, %edx                                 #  14    0xfb92f  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  15    0xfb931  4      OPC=movl_m32_r32    
  movl 0xff42ca9(%rip), %edx                      #  16    0xfb935  6      OPC=movl_r32_m32    
  nop                                             #  17    0xfb93b  1      OPC=nop             
  nop                                             #  18    0xfb93c  1      OPC=nop             
  nop                                             #  19    0xfb93d  1      OPC=nop             
  nop                                             #  20    0xfb93e  1      OPC=nop             
  nop                                             #  21    0xfb93f  1      OPC=nop             
  movl 0xff42ca2(%rip), %ecx                      #  22    0xfb940  6      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  23    0xfb946  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  24    0xfb948  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                 #  25    0xfb94c  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                 #  26    0xfb94f  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                        #  27    0xfb951  4      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  28    0xfb955  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)                     #  29    0xfb957  9      OPC=movl_m32_imm32  
  addl %eax, %edx                                 #  30    0xfb960  2      OPC=addl_r32_r32    
  movl %edx, %edx                                 #  31    0xfb962  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  32    0xfb964  4      OPC=movl_m32_r32    
  movl %edi, %edi                                 #  33    0xfb968  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rdi,1)                 #  34    0xfb96a  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev                        #  35    0xfb972  5      OPC=jmpq_label_1    
  nop                                             #  36    0xfb977  1      OPC=nop             
  nop                                             #  37    0xfb978  1      OPC=nop             
  nop                                             #  38    0xfb979  1      OPC=nop             
  nop                                             #  39    0xfb97a  1      OPC=nop             
  nop                                             #  40    0xfb97b  1      OPC=nop             
  nop                                             #  41    0xfb97c  1      OPC=nop             
  nop                                             #  42    0xfb97d  1      OPC=nop             
  nop                                             #  43    0xfb97e  1      OPC=nop             
  nop                                             #  44    0xfb97f  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev

