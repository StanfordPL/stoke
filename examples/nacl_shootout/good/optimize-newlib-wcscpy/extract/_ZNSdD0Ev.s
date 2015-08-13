  .text
  .globl _ZNSdD0Ev
  .type _ZNSdD0Ev, @function

#! file-offset 0x13b6c0
#! rip-offset  0xfb6c0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSdD0Ev:                           #        0xfb6c0  0      OPC=<label>         
  movl 0xff43006(%rip), %edx          #  1     0xfb6c0  6      OPC=movl_r32_m32    
  pushq %rbx                          #  2     0xfb6c6  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0xfb6c7  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %eax                #  4     0xfb6c9  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                     #  5     0xfb6cc  2      OPC=movl_r32_r32    
  movl $0x1003e6a0, 0x8(%r15,%rbx,1)  #  6     0xfb6ce  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi                #  7     0xfb6d7  3      OPC=leal_r32_m16    
  movl %eax, %eax                     #  8     0xfb6da  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  9     0xfb6dc  4      OPC=movl_m32_r32    
  subl $0xc, %edx                     #  10    0xfb6e0  3      OPC=subl_r32_imm8   
  movl %edx, %edx                     #  11    0xfb6e3  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax            #  12    0xfb6e5  4      OPC=addl_r32_m32    
  movl 0xff42fe1(%rip), %edx          #  13    0xfb6e9  6      OPC=movl_r32_m32    
  movl %eax, %eax                     #  14    0xfb6ef  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  15    0xfb6f1  4      OPC=movl_m32_r32    
  movl 0xff42fc9(%rip), %eax          #  16    0xfb6f5  6      OPC=movl_r32_m32    
  nop                                 #  17    0xfb6fb  1      OPC=nop             
  nop                                 #  18    0xfb6fc  1      OPC=nop             
  nop                                 #  19    0xfb6fd  1      OPC=nop             
  nop                                 #  20    0xfb6fe  1      OPC=nop             
  nop                                 #  21    0xfb6ff  1      OPC=nop             
  movl 0xff42fc2(%rip), %edx          #  22    0xfb700  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                     #  23    0xfb706  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)            #  24    0xfb708  4      OPC=movl_m32_r32    
  subl $0xc, %eax                     #  25    0xfb70c  3      OPC=subl_r32_imm8   
  movl %eax, %eax                     #  26    0xfb70f  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax            #  27    0xfb711  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                     #  28    0xfb715  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)         #  29    0xfb717  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                     #  30    0xfb720  2      OPC=addl_r32_r32    
  movl %eax, %eax                     #  31    0xfb722  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  32    0xfb724  4      OPC=movl_m32_r32    
  movl %edi, %edi                     #  33    0xfb728  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfb72a  8      OPC=movl_m32_imm32  
  nop                                 #  35    0xfb732  1      OPC=nop             
  nop                                 #  36    0xfb733  1      OPC=nop             
  nop                                 #  37    0xfb734  1      OPC=nop             
  nop                                 #  38    0xfb735  1      OPC=nop             
  nop                                 #  39    0xfb736  1      OPC=nop             
  nop                                 #  40    0xfb737  1      OPC=nop             
  nop                                 #  41    0xfb738  1      OPC=nop             
  nop                                 #  42    0xfb739  1      OPC=nop             
  nop                                 #  43    0xfb73a  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev           #  44    0xfb73b  5      OPC=callq_label     
  movl %ebx, %edi                     #  45    0xfb740  2      OPC=movl_r32_r32    
  popq %rbx                           #  46    0xfb742  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                        #  47    0xfb743  5      OPC=jmpq_label_1    
  nop                                 #  48    0xfb748  1      OPC=nop             
  nop                                 #  49    0xfb749  1      OPC=nop             
  nop                                 #  50    0xfb74a  1      OPC=nop             
  nop                                 #  51    0xfb74b  1      OPC=nop             
  nop                                 #  52    0xfb74c  1      OPC=nop             
  nop                                 #  53    0xfb74d  1      OPC=nop             
  nop                                 #  54    0xfb74e  1      OPC=nop             
  nop                                 #  55    0xfb74f  1      OPC=nop             
  nop                                 #  56    0xfb750  1      OPC=nop             
  nop                                 #  57    0xfb751  1      OPC=nop             
  nop                                 #  58    0xfb752  1      OPC=nop             
  nop                                 #  59    0xfb753  1      OPC=nop             
  nop                                 #  60    0xfb754  1      OPC=nop             
  nop                                 #  61    0xfb755  1      OPC=nop             
  nop                                 #  62    0xfb756  1      OPC=nop             
  nop                                 #  63    0xfb757  1      OPC=nop             
  nop                                 #  64    0xfb758  1      OPC=nop             
  nop                                 #  65    0xfb759  1      OPC=nop             
  nop                                 #  66    0xfb75a  1      OPC=nop             
  nop                                 #  67    0xfb75b  1      OPC=nop             
  nop                                 #  68    0xfb75c  1      OPC=nop             
  nop                                 #  69    0xfb75d  1      OPC=nop             
  nop                                 #  70    0xfb75e  1      OPC=nop             
  nop                                 #  71    0xfb75f  1      OPC=nop             
                                                                                   
.size _ZNSdD0Ev, .-_ZNSdD0Ev

