  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev, @function

#! file-offset 0x13b600
#! rip-offset  0xfb600
#! capacity    128 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev:  #        0xfb600  0      OPC=<label>         
  movl 0xff42fe6(%rip), %ecx                      #  1     0xfb600  6      OPC=movl_r32_m32    
  movl %edi, %eax                                 #  2     0xfb606  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edx                            #  3     0xfb608  3      OPC=leal_r32_m16    
  movl %eax, %eax                                 #  4     0xfb60b  2      OPC=movl_r32_r32    
  movl $0x1003e5c0, 0x8(%r15,%rax,1)              #  5     0xfb60d  9      OPC=movl_m32_imm32  
  leal 0xc(%rax), %edi                            #  6     0xfb616  3      OPC=leal_r32_m16    
  movl %edx, %edx                                 #  7     0xfb619  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  8     0xfb61b  4      OPC=movl_m32_r32    
  nop                                             #  9     0xfb61f  1      OPC=nop             
  subl $0xc, %ecx                                 #  10    0xfb620  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                 #  11    0xfb623  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx                        #  12    0xfb625  4      OPC=addl_r32_m32    
  movl 0xff42fc1(%rip), %ecx                      #  13    0xfb629  6      OPC=movl_r32_m32    
  movl %edx, %edx                                 #  14    0xfb62f  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  15    0xfb631  4      OPC=movl_m32_r32    
  movl 0xff42fa9(%rip), %edx                      #  16    0xfb635  6      OPC=movl_r32_m32    
  nop                                             #  17    0xfb63b  1      OPC=nop             
  nop                                             #  18    0xfb63c  1      OPC=nop             
  nop                                             #  19    0xfb63d  1      OPC=nop             
  nop                                             #  20    0xfb63e  1      OPC=nop             
  nop                                             #  21    0xfb63f  1      OPC=nop             
  movl 0xff42fa2(%rip), %ecx                      #  22    0xfb640  6      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  23    0xfb646  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  24    0xfb648  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                 #  25    0xfb64c  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                 #  26    0xfb64f  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                        #  27    0xfb651  4      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  28    0xfb655  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)                     #  29    0xfb657  9      OPC=movl_m32_imm32  
  addl %eax, %edx                                 #  30    0xfb660  2      OPC=addl_r32_r32    
  movl %edx, %edx                                 #  31    0xfb662  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  32    0xfb664  4      OPC=movl_m32_r32    
  movl %edi, %edi                                 #  33    0xfb668  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rdi,1)                 #  34    0xfb66a  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev                        #  35    0xfb672  5      OPC=jmpq_label_1    
  nop                                             #  36    0xfb677  1      OPC=nop             
  nop                                             #  37    0xfb678  1      OPC=nop             
  nop                                             #  38    0xfb679  1      OPC=nop             
  nop                                             #  39    0xfb67a  1      OPC=nop             
  nop                                             #  40    0xfb67b  1      OPC=nop             
  nop                                             #  41    0xfb67c  1      OPC=nop             
  nop                                             #  42    0xfb67d  1      OPC=nop             
  nop                                             #  43    0xfb67e  1      OPC=nop             
  nop                                             #  44    0xfb67f  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev

