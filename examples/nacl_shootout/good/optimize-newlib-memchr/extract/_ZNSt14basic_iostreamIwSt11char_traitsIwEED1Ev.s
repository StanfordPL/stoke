  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev, @function

#! file-offset 0x13c020
#! rip-offset  0xfc020
#! capacity    128 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev:  #        0xfc020  0      OPC=<label>         
  movl 0xff425c6(%rip), %ecx                      #  1     0xfc020  6      OPC=movl_r32_m32    
  movl %edi, %eax                                 #  2     0xfc026  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edx                            #  3     0xfc028  3      OPC=leal_r32_m16    
  movl %eax, %eax                                 #  4     0xfc02b  2      OPC=movl_r32_r32    
  movl $0x1003e5c0, 0x8(%r15,%rax,1)              #  5     0xfc02d  9      OPC=movl_m32_imm32  
  leal 0xc(%rax), %edi                            #  6     0xfc036  3      OPC=leal_r32_m16    
  movl %edx, %edx                                 #  7     0xfc039  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  8     0xfc03b  4      OPC=movl_m32_r32    
  nop                                             #  9     0xfc03f  1      OPC=nop             
  subl $0xc, %ecx                                 #  10    0xfc040  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                 #  11    0xfc043  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx                        #  12    0xfc045  4      OPC=addl_r32_m32    
  movl 0xff425a1(%rip), %ecx                      #  13    0xfc049  6      OPC=movl_r32_m32    
  movl %edx, %edx                                 #  14    0xfc04f  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  15    0xfc051  4      OPC=movl_m32_r32    
  movl 0xff42589(%rip), %edx                      #  16    0xfc055  6      OPC=movl_r32_m32    
  nop                                             #  17    0xfc05b  1      OPC=nop             
  nop                                             #  18    0xfc05c  1      OPC=nop             
  nop                                             #  19    0xfc05d  1      OPC=nop             
  nop                                             #  20    0xfc05e  1      OPC=nop             
  nop                                             #  21    0xfc05f  1      OPC=nop             
  movl 0xff42582(%rip), %ecx                      #  22    0xfc060  6      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  23    0xfc066  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  24    0xfc068  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                 #  25    0xfc06c  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                 #  26    0xfc06f  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                        #  27    0xfc071  4      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  28    0xfc075  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)                     #  29    0xfc077  9      OPC=movl_m32_imm32  
  addl %eax, %edx                                 #  30    0xfc080  2      OPC=addl_r32_r32    
  movl %edx, %edx                                 #  31    0xfc082  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  32    0xfc084  4      OPC=movl_m32_r32    
  movl %edi, %edi                                 #  33    0xfc088  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rdi,1)                 #  34    0xfc08a  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev                        #  35    0xfc092  5      OPC=jmpq_label_1    
  nop                                             #  36    0xfc097  1      OPC=nop             
  nop                                             #  37    0xfc098  1      OPC=nop             
  nop                                             #  38    0xfc099  1      OPC=nop             
  nop                                             #  39    0xfc09a  1      OPC=nop             
  nop                                             #  40    0xfc09b  1      OPC=nop             
  nop                                             #  41    0xfc09c  1      OPC=nop             
  nop                                             #  42    0xfc09d  1      OPC=nop             
  nop                                             #  43    0xfc09e  1      OPC=nop             
  nop                                             #  44    0xfc09f  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED1Ev

