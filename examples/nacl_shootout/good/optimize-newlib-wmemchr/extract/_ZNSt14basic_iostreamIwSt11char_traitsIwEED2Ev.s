  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0x13b660
#! rip-offset  0xfb660
#! capacity    192 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev:  #        0xfb660  0      OPC=<label>         
  movl %esi, %esi                                 #  1     0xfb660  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  2     0xfb662  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xfb664  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  4     0xfb666  4      OPC=movl_r32_m32    
  movl %esi, %esi                                 #  5     0xfb66a  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rsi,1), %edx                    #  6     0xfb66c  5      OPC=movl_r32_m32    
  subl $0xc, %eax                                 #  7     0xfb671  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  8     0xfb674  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  9     0xfb676  4      OPC=movl_r32_m32    
  addl %edi, %eax                                 #  10    0xfb67a  2      OPC=addl_r32_r32    
  nop                                             #  11    0xfb67c  1      OPC=nop             
  nop                                             #  12    0xfb67d  1      OPC=nop             
  nop                                             #  13    0xfb67e  1      OPC=nop             
  nop                                             #  14    0xfb67f  1      OPC=nop             
  movl %eax, %eax                                 #  15    0xfb680  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  16    0xfb682  4      OPC=movl_m32_r32    
  movl %esi, %esi                                 #  17    0xfb686  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rsi,1), %eax                    #  18    0xfb688  5      OPC=movl_r32_m32    
  leal 0x8(%rdi), %edx                            #  19    0xfb68d  3      OPC=leal_r32_m16    
  movl %edi, %edi                                 #  20    0xfb690  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                     #  21    0xfb692  5      OPC=movl_m32_r32    
  leal 0xc(%rsi), %eax                            #  22    0xfb697  3      OPC=leal_r32_m16    
  addl $0x4, %esi                                 #  23    0xfb69a  3      OPC=addl_r32_imm8   
  nop                                             #  24    0xfb69d  1      OPC=nop             
  nop                                             #  25    0xfb69e  1      OPC=nop             
  nop                                             #  26    0xfb69f  1      OPC=nop             
  movl %eax, %eax                                 #  27    0xfb6a0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                        #  28    0xfb6a2  4      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  29    0xfb6a6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                     #  30    0xfb6a8  5      OPC=movl_r32_m32    
  movl %edx, %edx                                 #  31    0xfb6ad  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  32    0xfb6af  4      OPC=movl_m32_r32    
  subl $0xc, %ecx                                 #  33    0xfb6b3  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                 #  34    0xfb6b6  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx                        #  35    0xfb6b8  4      OPC=addl_r32_m32    
  nop                                             #  36    0xfb6bc  1      OPC=nop             
  nop                                             #  37    0xfb6bd  1      OPC=nop             
  nop                                             #  38    0xfb6be  1      OPC=nop             
  nop                                             #  39    0xfb6bf  1      OPC=nop             
  movl %edx, %edx                                 #  40    0xfb6c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                        #  41    0xfb6c2  4      OPC=movl_m32_r32    
  movl %esi, %esi                                 #  42    0xfb6c6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  43    0xfb6c8  4      OPC=movl_r32_m32    
  movl %esi, %esi                                 #  44    0xfb6cc  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                     #  45    0xfb6ce  5      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  46    0xfb6d3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  47    0xfb6d5  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                 #  48    0xfb6d9  3      OPC=subl_r32_imm8   
  nop                                             #  49    0xfb6dc  1      OPC=nop             
  nop                                             #  50    0xfb6dd  1      OPC=nop             
  nop                                             #  51    0xfb6de  1      OPC=nop             
  nop                                             #  52    0xfb6df  1      OPC=nop             
  movl %eax, %eax                                 #  53    0xfb6e0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  54    0xfb6e2  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  55    0xfb6e6  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                     #  56    0xfb6e8  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                 #  57    0xfb6f1  2      OPC=addl_r32_r32    
  movl %eax, %eax                                 #  58    0xfb6f3  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  59    0xfb6f5  4      OPC=movl_m32_r32    
  popq %r11                                       #  60    0xfb6f9  2      OPC=popq_r64_1      
  nop                                             #  61    0xfb6fb  1      OPC=nop             
  nop                                             #  62    0xfb6fc  1      OPC=nop             
  nop                                             #  63    0xfb6fd  1      OPC=nop             
  nop                                             #  64    0xfb6fe  1      OPC=nop             
  nop                                             #  65    0xfb6ff  1      OPC=nop             
  andl $0xffffffe0, %r11d                         #  66    0xfb700  7      OPC=andl_r32_imm32  
  nop                                             #  67    0xfb707  1      OPC=nop             
  nop                                             #  68    0xfb708  1      OPC=nop             
  nop                                             #  69    0xfb709  1      OPC=nop             
  nop                                             #  70    0xfb70a  1      OPC=nop             
  addq %r15, %r11                                 #  71    0xfb70b  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  72    0xfb70e  3      OPC=jmpq_r64        
  nop                                             #  73    0xfb711  1      OPC=nop             
  nop                                             #  74    0xfb712  1      OPC=nop             
  nop                                             #  75    0xfb713  1      OPC=nop             
  nop                                             #  76    0xfb714  1      OPC=nop             
  nop                                             #  77    0xfb715  1      OPC=nop             
  nop                                             #  78    0xfb716  1      OPC=nop             
  nop                                             #  79    0xfb717  1      OPC=nop             
  nop                                             #  80    0xfb718  1      OPC=nop             
  nop                                             #  81    0xfb719  1      OPC=nop             
  nop                                             #  82    0xfb71a  1      OPC=nop             
  nop                                             #  83    0xfb71b  1      OPC=nop             
  nop                                             #  84    0xfb71c  1      OPC=nop             
  nop                                             #  85    0xfb71d  1      OPC=nop             
  nop                                             #  86    0xfb71e  1      OPC=nop             
  nop                                             #  87    0xfb71f  1      OPC=nop             
  nop                                             #  88    0xfb720  1      OPC=nop             
  nop                                             #  89    0xfb721  1      OPC=nop             
  nop                                             #  90    0xfb722  1      OPC=nop             
  nop                                             #  91    0xfb723  1      OPC=nop             
  nop                                             #  92    0xfb724  1      OPC=nop             
  nop                                             #  93    0xfb725  1      OPC=nop             
  nop                                             #  94    0xfb726  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev

