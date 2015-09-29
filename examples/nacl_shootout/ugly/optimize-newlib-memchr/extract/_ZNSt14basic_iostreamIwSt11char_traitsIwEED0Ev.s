  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev, @function

#! file-offset 0x13c280
#! rip-offset  0xfc280
#! capacity    160 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev:  #        0xfc280  0      OPC=<label>         
  movl 0xff42366(%rip), %edx                      #  1     0xfc280  6      OPC=movl_r32_m32    
  pushq %rbx                                      #  2     0xfc286  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                 #  3     0xfc287  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %eax                            #  4     0xfc289  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                                 #  5     0xfc28c  2      OPC=movl_r32_r32    
  movl $0x1003e5c0, 0x8(%r15,%rbx,1)              #  6     0xfc28e  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi                            #  7     0xfc297  3      OPC=leal_r32_m16    
  movl %eax, %eax                                 #  8     0xfc29a  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  9     0xfc29c  4      OPC=movl_m32_r32    
  subl $0xc, %edx                                 #  10    0xfc2a0  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                 #  11    0xfc2a3  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax                        #  12    0xfc2a5  4      OPC=addl_r32_m32    
  movl 0xff42341(%rip), %edx                      #  13    0xfc2a9  6      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  14    0xfc2af  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  15    0xfc2b1  4      OPC=movl_m32_r32    
  movl 0xff42329(%rip), %eax                      #  16    0xfc2b5  6      OPC=movl_r32_m32    
  nop                                             #  17    0xfc2bb  1      OPC=nop             
  nop                                             #  18    0xfc2bc  1      OPC=nop             
  nop                                             #  19    0xfc2bd  1      OPC=nop             
  nop                                             #  20    0xfc2be  1      OPC=nop             
  nop                                             #  21    0xfc2bf  1      OPC=nop             
  movl 0xff42322(%rip), %edx                      #  22    0xfc2c0  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                                 #  23    0xfc2c6  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                        #  24    0xfc2c8  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                 #  25    0xfc2cc  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  26    0xfc2cf  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  27    0xfc2d1  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                 #  28    0xfc2d5  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)                     #  29    0xfc2d7  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                                 #  30    0xfc2e0  2      OPC=addl_r32_r32    
  movl %eax, %eax                                 #  31    0xfc2e2  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  32    0xfc2e4  4      OPC=movl_m32_r32    
  movl %edi, %edi                                 #  33    0xfc2e8  2      OPC=movl_r32_r32    
  movl $0x1003a748, (%r15,%rdi,1)                 #  34    0xfc2ea  8      OPC=movl_m32_imm32  
  nop                                             #  35    0xfc2f2  1      OPC=nop             
  nop                                             #  36    0xfc2f3  1      OPC=nop             
  nop                                             #  37    0xfc2f4  1      OPC=nop             
  nop                                             #  38    0xfc2f5  1      OPC=nop             
  nop                                             #  39    0xfc2f6  1      OPC=nop             
  nop                                             #  40    0xfc2f7  1      OPC=nop             
  nop                                             #  41    0xfc2f8  1      OPC=nop             
  nop                                             #  42    0xfc2f9  1      OPC=nop             
  nop                                             #  43    0xfc2fa  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev                       #  44    0xfc2fb  5      OPC=callq_label     
  movl %ebx, %edi                                 #  45    0xfc300  2      OPC=movl_r32_r32    
  popq %rbx                                       #  46    0xfc302  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                    #  47    0xfc303  5      OPC=jmpq_label_1    
  nop                                             #  48    0xfc308  1      OPC=nop             
  nop                                             #  49    0xfc309  1      OPC=nop             
  nop                                             #  50    0xfc30a  1      OPC=nop             
  nop                                             #  51    0xfc30b  1      OPC=nop             
  nop                                             #  52    0xfc30c  1      OPC=nop             
  nop                                             #  53    0xfc30d  1      OPC=nop             
  nop                                             #  54    0xfc30e  1      OPC=nop             
  nop                                             #  55    0xfc30f  1      OPC=nop             
  nop                                             #  56    0xfc310  1      OPC=nop             
  nop                                             #  57    0xfc311  1      OPC=nop             
  nop                                             #  58    0xfc312  1      OPC=nop             
  nop                                             #  59    0xfc313  1      OPC=nop             
  nop                                             #  60    0xfc314  1      OPC=nop             
  nop                                             #  61    0xfc315  1      OPC=nop             
  nop                                             #  62    0xfc316  1      OPC=nop             
  nop                                             #  63    0xfc317  1      OPC=nop             
  nop                                             #  64    0xfc318  1      OPC=nop             
  nop                                             #  65    0xfc319  1      OPC=nop             
  nop                                             #  66    0xfc31a  1      OPC=nop             
  nop                                             #  67    0xfc31b  1      OPC=nop             
  nop                                             #  68    0xfc31c  1      OPC=nop             
  nop                                             #  69    0xfc31d  1      OPC=nop             
  nop                                             #  70    0xfc31e  1      OPC=nop             
  nop                                             #  71    0xfc31f  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED0Ev

