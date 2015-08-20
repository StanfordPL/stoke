  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev, @function

#! file-offset 0x13bb60
#! rip-offset  0xfbb60
#! capacity    160 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev:  #        0xfbb60  0      OPC=<label>         
  movl 0xff42a86(%rip), %edx                      #  1     0xfbb60  6      OPC=movl_r32_m32    
  pushq %rbx                                      #  2     0xfbb66  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                 #  3     0xfbb67  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %eax                            #  4     0xfbb69  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                                 #  5     0xfbb6c  2      OPC=movl_r32_r32    
  movl $0x1003e5c0, 0x8(%r15,%rbx,1)              #  6     0xfbb6e  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi                            #  7     0xfbb77  3      OPC=leal_r32_m16    
  movl %eax, %eax                                 #  8     0xfbb7a  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  9     0xfbb7c  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                 #  10    0xfbb80  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                 #  11    0xfbb83  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax                        #  12    0xfbb85  4      OPC=addl_r32_m32    
  movl 0xff42a61(%rip), %edx                      #  13    0xfbb89  6      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  14    0xfbb8f  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  15    0xfbb91  4      OPC=movl_m32_r32    
  movl 0xff42a49(%rip), %eax                      #  16    0xfbb95  6      OPC=movl_r32_m32    
  nop                                             #  17    0xfbb9b  1      OPC=nop             
  nop                                             #  18    0xfbb9c  1      OPC=nop             
  nop                                             #  19    0xfbb9d  1      OPC=nop             
  nop                                             #  20    0xfbb9e  1      OPC=nop             
  nop                                             #  21    0xfbb9f  1      OPC=nop             
  movl 0xff42a42(%rip), %edx                      #  22    0xfbba0  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                                 #  23    0xfbba6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                        #  24    0xfbba8  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                 #  25    0xfbbac  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  26    0xfbbaf  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  27    0xfbbb1  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                 #  28    0xfbbb5  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                     #  29    0xfbbb7  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                                 #  30    0xfbbc0  2      OPC=addl_r32_r32    
  movl %eax, %eax                                 #  31    0xfbbc2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  32    0xfbbc4  4      OPC=movl_m32_r32    
  movl %edi, %edi                                 #  33    0xfbbc8  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rdi,1)                 #  34    0xfbbca  8      OPC=movl_m32_imm32  
  nop                                             #  35    0xfbbd2  1      OPC=nop             
  nop                                             #  36    0xfbbd3  1      OPC=nop             
  nop                                             #  37    0xfbbd4  1      OPC=nop             
  nop                                             #  38    0xfbbd5  1      OPC=nop             
  nop                                             #  39    0xfbbd6  1      OPC=nop             
  nop                                             #  40    0xfbbd7  1      OPC=nop             
  nop                                             #  41    0xfbbd8  1      OPC=nop             
  nop                                             #  42    0xfbbd9  1      OPC=nop             
  nop                                             #  43    0xfbbda  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev                       #  44    0xfbbdb  5      OPC=callq_label     
  movl %ebx, %edi                                 #  45    0xfbbe0  2      OPC=movl_r32_r32    
  popq %rbx                                       #  46    0xfbbe2  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                    #  47    0xfbbe3  5      OPC=jmpq_label_1    
  nop                                             #  48    0xfbbe8  1      OPC=nop             
  nop                                             #  49    0xfbbe9  1      OPC=nop             
  nop                                             #  50    0xfbbea  1      OPC=nop             
  nop                                             #  51    0xfbbeb  1      OPC=nop             
  nop                                             #  52    0xfbbec  1      OPC=nop             
  nop                                             #  53    0xfbbed  1      OPC=nop             
  nop                                             #  54    0xfbbee  1      OPC=nop             
  nop                                             #  55    0xfbbef  1      OPC=nop             
  nop                                             #  56    0xfbbf0  1      OPC=nop             
  nop                                             #  57    0xfbbf1  1      OPC=nop             
  nop                                             #  58    0xfbbf2  1      OPC=nop             
  nop                                             #  59    0xfbbf3  1      OPC=nop             
  nop                                             #  60    0xfbbf4  1      OPC=nop             
  nop                                             #  61    0xfbbf5  1      OPC=nop             
  nop                                             #  62    0xfbbf6  1      OPC=nop             
  nop                                             #  63    0xfbbf7  1      OPC=nop             
  nop                                             #  64    0xfbbf8  1      OPC=nop             
  nop                                             #  65    0xfbbf9  1      OPC=nop             
  nop                                             #  66    0xfbbfa  1      OPC=nop             
  nop                                             #  67    0xfbbfb  1      OPC=nop             
  nop                                             #  68    0xfbbfc  1      OPC=nop             
  nop                                             #  69    0xfbbfd  1      OPC=nop             
  nop                                             #  70    0xfbbfe  1      OPC=nop             
  nop                                             #  71    0xfbbff  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev

