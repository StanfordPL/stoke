  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x133ce0
#! rip-offset  0xf3ce0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf3ce0  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf3ce0  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf3ce2  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf3ce3  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf3ce5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf3ce7  4      OPC=movl_r32_m32   
  leal 0x8(%rbx), %edi                                                        #  6     0xf3ceb  3      OPC=leal_r32_m16   
  orl $0x8, %edx                                                              #  7     0xf3cee  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xf3cf1  1      OPC=nop            
  nop                                                                         #  9     0xf3cf2  1      OPC=nop            
  nop                                                                         #  10    0xf3cf3  1      OPC=nop            
  nop                                                                         #  11    0xf3cf4  1      OPC=nop            
  nop                                                                         #  12    0xf3cf5  1      OPC=nop            
  nop                                                                         #  13    0xf3cf6  1      OPC=nop            
  nop                                                                         #  14    0xf3cf7  1      OPC=nop            
  nop                                                                         #  15    0xf3cf8  1      OPC=nop            
  nop                                                                         #  16    0xf3cf9  1      OPC=nop            
  nop                                                                         #  17    0xf3cfa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf3cfb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xf3d00  2      OPC=testl_r32_r32  
  je .L_f3d20                                                                 #  20    0xf3d02  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xf3d04  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xf3d06  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xf3d0a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xf3d0c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xf3d0f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xf3d11  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xf3d15  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xf3d17  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  29    0xf3d18  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xf3d1d  1      OPC=nop            
  nop                                                                         #  31    0xf3d1e  1      OPC=nop            
  nop                                                                         #  32    0xf3d1f  1      OPC=nop            
.L_f3d20:                                                                     #        0xf3d20  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xf3d20  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xf3d22  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xf3d26  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xf3d29  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xf3d2b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xf3d2f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xf3d31  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xf3d33  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xf3d38  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xf3d39  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xf3d3c  1      OPC=nop            
  nop                                                                         #  44    0xf3d3d  1      OPC=nop            
  nop                                                                         #  45    0xf3d3e  1      OPC=nop            
  nop                                                                         #  46    0xf3d3f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  47    0xf3d40  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xf3d45  1      OPC=nop            
  nop                                                                         #  49    0xf3d46  1      OPC=nop            
  nop                                                                         #  50    0xf3d47  1      OPC=nop            
  nop                                                                         #  51    0xf3d48  1      OPC=nop            
  nop                                                                         #  52    0xf3d49  1      OPC=nop            
  nop                                                                         #  53    0xf3d4a  1      OPC=nop            
  nop                                                                         #  54    0xf3d4b  1      OPC=nop            
  nop                                                                         #  55    0xf3d4c  1      OPC=nop            
  nop                                                                         #  56    0xf3d4d  1      OPC=nop            
  nop                                                                         #  57    0xf3d4e  1      OPC=nop            
  nop                                                                         #  58    0xf3d4f  1      OPC=nop            
  nop                                                                         #  59    0xf3d50  1      OPC=nop            
  nop                                                                         #  60    0xf3d51  1      OPC=nop            
  nop                                                                         #  61    0xf3d52  1      OPC=nop            
  nop                                                                         #  62    0xf3d53  1      OPC=nop            
  nop                                                                         #  63    0xf3d54  1      OPC=nop            
  nop                                                                         #  64    0xf3d55  1      OPC=nop            
  nop                                                                         #  65    0xf3d56  1      OPC=nop            
  nop                                                                         #  66    0xf3d57  1      OPC=nop            
  nop                                                                         #  67    0xf3d58  1      OPC=nop            
  nop                                                                         #  68    0xf3d59  1      OPC=nop            
  nop                                                                         #  69    0xf3d5a  1      OPC=nop            
  nop                                                                         #  70    0xf3d5b  1      OPC=nop            
  nop                                                                         #  71    0xf3d5c  1      OPC=nop            
  nop                                                                         #  72    0xf3d5d  1      OPC=nop            
  nop                                                                         #  73    0xf3d5e  1      OPC=nop            
  nop                                                                         #  74    0xf3d5f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

