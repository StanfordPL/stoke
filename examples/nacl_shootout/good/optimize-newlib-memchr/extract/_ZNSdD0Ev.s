  .text
  .globl _ZNSdD0Ev
  .type _ZNSdD0Ev, @function

#! file-offset 0x13c0e0
#! rip-offset  0xfc0e0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSdD0Ev:                           #        0xfc0e0  0      OPC=<label>         
  movl 0xff425e6(%rip), %edx          #  1     0xfc0e0  6      OPC=movl_r32_m32    
  pushq %rbx                          #  2     0xfc0e6  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0xfc0e7  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %eax                #  4     0xfc0e9  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                     #  5     0xfc0ec  2      OPC=movl_r32_r32    
  movl $0x1003e6a0, 0x8(%r15,%rbx,1)  #  6     0xfc0ee  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi                #  7     0xfc0f7  3      OPC=leal_r32_m16    
  movl %eax, %eax                     #  8     0xfc0fa  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  9     0xfc0fc  4      OPC=movl_m32_r32    
  subl $0xc, %edx                     #  10    0xfc100  3      OPC=subl_r32_imm8   
  movl %edx, %edx                     #  11    0xfc103  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax            #  12    0xfc105  4      OPC=addl_r32_m32    
  movl 0xff425c1(%rip), %edx          #  13    0xfc109  6      OPC=movl_r32_m32    
  movl %eax, %eax                     #  14    0xfc10f  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  15    0xfc111  4      OPC=movl_m32_r32    
  movl 0xff425a9(%rip), %eax          #  16    0xfc115  6      OPC=movl_r32_m32    
  nop                                 #  17    0xfc11b  1      OPC=nop             
  nop                                 #  18    0xfc11c  1      OPC=nop             
  nop                                 #  19    0xfc11d  1      OPC=nop             
  nop                                 #  20    0xfc11e  1      OPC=nop             
  nop                                 #  21    0xfc11f  1      OPC=nop             
  movl 0xff425a2(%rip), %edx          #  22    0xfc120  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                     #  23    0xfc126  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)            #  24    0xfc128  4      OPC=movl_m32_r32    
  subl $0xc, %eax                     #  25    0xfc12c  3      OPC=subl_r32_imm8   
  movl %eax, %eax                     #  26    0xfc12f  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax            #  27    0xfc131  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                     #  28    0xfc135  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)         #  29    0xfc137  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                     #  30    0xfc140  2      OPC=addl_r32_r32    
  movl %eax, %eax                     #  31    0xfc142  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  32    0xfc144  4      OPC=movl_m32_r32    
  movl %edi, %edi                     #  33    0xfc148  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfc14a  8      OPC=movl_m32_imm32  
  nop                                 #  35    0xfc152  1      OPC=nop             
  nop                                 #  36    0xfc153  1      OPC=nop             
  nop                                 #  37    0xfc154  1      OPC=nop             
  nop                                 #  38    0xfc155  1      OPC=nop             
  nop                                 #  39    0xfc156  1      OPC=nop             
  nop                                 #  40    0xfc157  1      OPC=nop             
  nop                                 #  41    0xfc158  1      OPC=nop             
  nop                                 #  42    0xfc159  1      OPC=nop             
  nop                                 #  43    0xfc15a  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev           #  44    0xfc15b  5      OPC=callq_label     
  movl %ebx, %edi                     #  45    0xfc160  2      OPC=movl_r32_r32    
  popq %rbx                           #  46    0xfc162  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                        #  47    0xfc163  5      OPC=jmpq_label_1    
  nop                                 #  48    0xfc168  1      OPC=nop             
  nop                                 #  49    0xfc169  1      OPC=nop             
  nop                                 #  50    0xfc16a  1      OPC=nop             
  nop                                 #  51    0xfc16b  1      OPC=nop             
  nop                                 #  52    0xfc16c  1      OPC=nop             
  nop                                 #  53    0xfc16d  1      OPC=nop             
  nop                                 #  54    0xfc16e  1      OPC=nop             
  nop                                 #  55    0xfc16f  1      OPC=nop             
  nop                                 #  56    0xfc170  1      OPC=nop             
  nop                                 #  57    0xfc171  1      OPC=nop             
  nop                                 #  58    0xfc172  1      OPC=nop             
  nop                                 #  59    0xfc173  1      OPC=nop             
  nop                                 #  60    0xfc174  1      OPC=nop             
  nop                                 #  61    0xfc175  1      OPC=nop             
  nop                                 #  62    0xfc176  1      OPC=nop             
  nop                                 #  63    0xfc177  1      OPC=nop             
  nop                                 #  64    0xfc178  1      OPC=nop             
  nop                                 #  65    0xfc179  1      OPC=nop             
  nop                                 #  66    0xfc17a  1      OPC=nop             
  nop                                 #  67    0xfc17b  1      OPC=nop             
  nop                                 #  68    0xfc17c  1      OPC=nop             
  nop                                 #  69    0xfc17d  1      OPC=nop             
  nop                                 #  70    0xfc17e  1      OPC=nop             
  nop                                 #  71    0xfc17f  1      OPC=nop             
                                                                                   
.size _ZNSdD0Ev, .-_ZNSdD0Ev

