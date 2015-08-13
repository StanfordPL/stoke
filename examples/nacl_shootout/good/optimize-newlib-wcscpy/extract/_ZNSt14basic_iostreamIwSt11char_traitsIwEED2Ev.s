  .text
  .globl _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev
  .type _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev, @function

#! file-offset 0x13b360
#! rip-offset  0xfb360
#! capacity    192 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev:  #        0xfb360  0      OPC=<label>         
  movl %esi, %esi                                 #  1     0xfb360  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  2     0xfb362  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xfb364  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  4     0xfb366  4      OPC=movl_r32_m32    
  movl %esi, %esi                                 #  5     0xfb36a  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rsi,1), %edx                    #  6     0xfb36c  5      OPC=movl_r32_m32    
  subl $0xc, %eax                                 #  7     0xfb371  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                 #  8     0xfb374  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  9     0xfb376  4      OPC=movl_r32_m32    
  addl %edi, %eax                                 #  10    0xfb37a  2      OPC=addl_r32_r32    
  nop                                             #  11    0xfb37c  1      OPC=nop             
  nop                                             #  12    0xfb37d  1      OPC=nop             
  nop                                             #  13    0xfb37e  1      OPC=nop             
  nop                                             #  14    0xfb37f  1      OPC=nop             
  movl %eax, %eax                                 #  15    0xfb380  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  16    0xfb382  4      OPC=movl_m32_r32    
  movl %esi, %esi                                 #  17    0xfb386  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rsi,1), %eax                    #  18    0xfb388  5      OPC=movl_r32_m32    
  leal 0x8(%rdi), %edx                            #  19    0xfb38d  3      OPC=leal_r32_m16    
  movl %edi, %edi                                 #  20    0xfb390  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                     #  21    0xfb392  5      OPC=movl_m32_r32    
  leal 0xc(%rsi), %eax                            #  22    0xfb397  3      OPC=leal_r32_m16    
  addl $0x4, %esi                                 #  23    0xfb39a  3      OPC=addl_r32_imm8   
  nop                                             #  24    0xfb39d  1      OPC=nop             
  nop                                             #  25    0xfb39e  1      OPC=nop             
  nop                                             #  26    0xfb39f  1      OPC=nop             
  movl %eax, %eax                                 #  27    0xfb3a0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %ecx                        #  28    0xfb3a2  4      OPC=movl_r32_m32    
  movl %eax, %eax                                 #  29    0xfb3a6  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax                     #  30    0xfb3a8  5      OPC=movl_r32_m32    
  movl %edx, %edx                                 #  31    0xfb3ad  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)                        #  32    0xfb3af  4      OPC=movl_m32_r32    
  subl $0xc, %ecx                                 #  33    0xfb3b3  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                                 #  34    0xfb3b6  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx                        #  35    0xfb3b8  4      OPC=addl_r32_m32    
  nop                                             #  36    0xfb3bc  1      OPC=nop             
  nop                                             #  37    0xfb3bd  1      OPC=nop             
  nop                                             #  38    0xfb3be  1      OPC=nop             
  nop                                             #  39    0xfb3bf  1      OPC=nop             
  movl %edx, %edx                                 #  40    0xfb3c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdx,1)                        #  41    0xfb3c2  4      OPC=movl_m32_r32    
  movl %esi, %esi                                 #  42    0xfb3c6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  43    0xfb3c8  4      OPC=movl_r32_m32    
  movl %esi, %esi                                 #  44    0xfb3cc  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %edx                     #  45    0xfb3ce  5      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  46    0xfb3d3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  47    0xfb3d5  4      OPC=movl_m32_r32    
  subl $0xc, %eax                                 #  48    0xfb3d9  3      OPC=subl_r32_imm8   
  nop                                             #  49    0xfb3dc  1      OPC=nop             
  nop                                             #  50    0xfb3dd  1      OPC=nop             
  nop                                             #  51    0xfb3de  1      OPC=nop             
  nop                                             #  52    0xfb3df  1      OPC=nop             
  movl %eax, %eax                                 #  53    0xfb3e0  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                        #  54    0xfb3e2  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  55    0xfb3e6  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)                     #  56    0xfb3e8  9      OPC=movl_m32_imm32  
  addl %edi, %eax                                 #  57    0xfb3f1  2      OPC=addl_r32_r32    
  movl %eax, %eax                                 #  58    0xfb3f3  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)                        #  59    0xfb3f5  4      OPC=movl_m32_r32    
  popq %r11                                       #  60    0xfb3f9  2      OPC=popq_r64_1      
  nop                                             #  61    0xfb3fb  1      OPC=nop             
  nop                                             #  62    0xfb3fc  1      OPC=nop             
  nop                                             #  63    0xfb3fd  1      OPC=nop             
  nop                                             #  64    0xfb3fe  1      OPC=nop             
  nop                                             #  65    0xfb3ff  1      OPC=nop             
  andl $0xffffffe0, %r11d                         #  66    0xfb400  7      OPC=andl_r32_imm32  
  nop                                             #  67    0xfb407  1      OPC=nop             
  nop                                             #  68    0xfb408  1      OPC=nop             
  nop                                             #  69    0xfb409  1      OPC=nop             
  nop                                             #  70    0xfb40a  1      OPC=nop             
  addq %r15, %r11                                 #  71    0xfb40b  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  72    0xfb40e  3      OPC=jmpq_r64        
  nop                                             #  73    0xfb411  1      OPC=nop             
  nop                                             #  74    0xfb412  1      OPC=nop             
  nop                                             #  75    0xfb413  1      OPC=nop             
  nop                                             #  76    0xfb414  1      OPC=nop             
  nop                                             #  77    0xfb415  1      OPC=nop             
  nop                                             #  78    0xfb416  1      OPC=nop             
  nop                                             #  79    0xfb417  1      OPC=nop             
  nop                                             #  80    0xfb418  1      OPC=nop             
  nop                                             #  81    0xfb419  1      OPC=nop             
  nop                                             #  82    0xfb41a  1      OPC=nop             
  nop                                             #  83    0xfb41b  1      OPC=nop             
  nop                                             #  84    0xfb41c  1      OPC=nop             
  nop                                             #  85    0xfb41d  1      OPC=nop             
  nop                                             #  86    0xfb41e  1      OPC=nop             
  nop                                             #  87    0xfb41f  1      OPC=nop             
  nop                                             #  88    0xfb420  1      OPC=nop             
  nop                                             #  89    0xfb421  1      OPC=nop             
  nop                                             #  90    0xfb422  1      OPC=nop             
  nop                                             #  91    0xfb423  1      OPC=nop             
  nop                                             #  92    0xfb424  1      OPC=nop             
  nop                                             #  93    0xfb425  1      OPC=nop             
  nop                                             #  94    0xfb426  1      OPC=nop             
                                                                                               
.size _ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev, .-_ZNSt14basic_iostreamIwSt11char_traitsIwEED2Ev

