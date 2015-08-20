  .text
  .globl _ZNSdD0Ev
  .type _ZNSdD0Ev, @function

#! file-offset 0x13b9c0
#! rip-offset  0xfb9c0
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSdD0Ev:                           #        0xfb9c0  0      OPC=<label>         
  movl 0xff42d06(%rip), %edx          #  1     0xfb9c0  6      OPC=movl_r32_m32    
  pushq %rbx                          #  2     0xfb9c6  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0xfb9c7  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %eax                #  4     0xfb9c9  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                     #  5     0xfb9cc  2      OPC=movl_r32_r32    
  movl $0x1003e6a0, 0x8(%r15,%rbx,1)  #  6     0xfb9ce  9      OPC=movl_m32_imm32  
  leal 0xc(%rbx), %edi                #  7     0xfb9d7  3      OPC=leal_r32_m16    
  movl %eax, %eax                     #  8     0xfb9da  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  9     0xfb9dc  4      OPC=movl_m32_r32    
  subl $0xc, %edx                     #  10    0xfb9e0  3      OPC=subl_r32_imm8   
  movl %edx, %edx                     #  11    0xfb9e3  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax            #  12    0xfb9e5  4      OPC=addl_r32_m32    
  movl 0xff42ce1(%rip), %edx          #  13    0xfb9e9  6      OPC=movl_r32_m32    
  movl %eax, %eax                     #  14    0xfb9ef  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  15    0xfb9f1  4      OPC=movl_m32_r32    
  movl 0xff42cc9(%rip), %eax          #  16    0xfb9f5  6      OPC=movl_r32_m32    
  nop                                 #  17    0xfb9fb  1      OPC=nop             
  nop                                 #  18    0xfb9fc  1      OPC=nop             
  nop                                 #  19    0xfb9fd  1      OPC=nop             
  nop                                 #  20    0xfb9fe  1      OPC=nop             
  nop                                 #  21    0xfb9ff  1      OPC=nop             
  movl 0xff42cc2(%rip), %edx          #  22    0xfba00  6      OPC=movl_r32_m32    
  movl %ebx, %ebx                     #  23    0xfba06  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)            #  24    0xfba08  4      OPC=movl_m32_r32    
  subl $0xc, %eax                     #  25    0xfba0c  3      OPC=subl_r32_imm8   
  movl %eax, %eax                     #  26    0xfba0f  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax            #  27    0xfba11  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                     #  28    0xfba15  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)         #  29    0xfba17  9      OPC=movl_m32_imm32  
  addl %ebx, %eax                     #  30    0xfba20  2      OPC=addl_r32_r32    
  movl %eax, %eax                     #  31    0xfba22  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  32    0xfba24  4      OPC=movl_m32_r32    
  movl %edi, %edi                     #  33    0xfba28  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfba2a  8      OPC=movl_m32_imm32  
  nop                                 #  35    0xfba32  1      OPC=nop             
  nop                                 #  36    0xfba33  1      OPC=nop             
  nop                                 #  37    0xfba34  1      OPC=nop             
  nop                                 #  38    0xfba35  1      OPC=nop             
  nop                                 #  39    0xfba36  1      OPC=nop             
  nop                                 #  40    0xfba37  1      OPC=nop             
  nop                                 #  41    0xfba38  1      OPC=nop             
  nop                                 #  42    0xfba39  1      OPC=nop             
  nop                                 #  43    0xfba3a  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev           #  44    0xfba3b  5      OPC=callq_label     
  movl %ebx, %edi                     #  45    0xfba40  2      OPC=movl_r32_r32    
  popq %rbx                           #  46    0xfba42  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                        #  47    0xfba43  5      OPC=jmpq_label_1    
  nop                                 #  48    0xfba48  1      OPC=nop             
  nop                                 #  49    0xfba49  1      OPC=nop             
  nop                                 #  50    0xfba4a  1      OPC=nop             
  nop                                 #  51    0xfba4b  1      OPC=nop             
  nop                                 #  52    0xfba4c  1      OPC=nop             
  nop                                 #  53    0xfba4d  1      OPC=nop             
  nop                                 #  54    0xfba4e  1      OPC=nop             
  nop                                 #  55    0xfba4f  1      OPC=nop             
  nop                                 #  56    0xfba50  1      OPC=nop             
  nop                                 #  57    0xfba51  1      OPC=nop             
  nop                                 #  58    0xfba52  1      OPC=nop             
  nop                                 #  59    0xfba53  1      OPC=nop             
  nop                                 #  60    0xfba54  1      OPC=nop             
  nop                                 #  61    0xfba55  1      OPC=nop             
  nop                                 #  62    0xfba56  1      OPC=nop             
  nop                                 #  63    0xfba57  1      OPC=nop             
  nop                                 #  64    0xfba58  1      OPC=nop             
  nop                                 #  65    0xfba59  1      OPC=nop             
  nop                                 #  66    0xfba5a  1      OPC=nop             
  nop                                 #  67    0xfba5b  1      OPC=nop             
  nop                                 #  68    0xfba5c  1      OPC=nop             
  nop                                 #  69    0xfba5d  1      OPC=nop             
  nop                                 #  70    0xfba5e  1      OPC=nop             
  nop                                 #  71    0xfba5f  1      OPC=nop             
                                                                                   
.size _ZNSdD0Ev, .-_ZNSdD0Ev

