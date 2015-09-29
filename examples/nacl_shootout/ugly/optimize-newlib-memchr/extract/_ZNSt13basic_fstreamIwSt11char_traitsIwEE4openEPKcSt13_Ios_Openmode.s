  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133a40
#! rip-offset  0xf3a40
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:         #        0xf3a40  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3a40  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3a41  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  3     0xf3a43  2      OPC=movl_r32_r32   
  leal 0xc(%rbx), %edi                                                        #  4     0xf3a45  3      OPC=leal_r32_m16   
  nop                                                                         #  5     0xf3a48  1      OPC=nop            
  nop                                                                         #  6     0xf3a49  1      OPC=nop            
  nop                                                                         #  7     0xf3a4a  1      OPC=nop            
  nop                                                                         #  8     0xf3a4b  1      OPC=nop            
  nop                                                                         #  9     0xf3a4c  1      OPC=nop            
  nop                                                                         #  10    0xf3a4d  1      OPC=nop            
  nop                                                                         #  11    0xf3a4e  1      OPC=nop            
  nop                                                                         #  12    0xf3a4f  1      OPC=nop            
  nop                                                                         #  13    0xf3a50  1      OPC=nop            
  nop                                                                         #  14    0xf3a51  1      OPC=nop            
  nop                                                                         #  15    0xf3a52  1      OPC=nop            
  nop                                                                         #  16    0xf3a53  1      OPC=nop            
  nop                                                                         #  17    0xf3a54  1      OPC=nop            
  nop                                                                         #  18    0xf3a55  1      OPC=nop            
  nop                                                                         #  19    0xf3a56  1      OPC=nop            
  nop                                                                         #  20    0xf3a57  1      OPC=nop            
  nop                                                                         #  21    0xf3a58  1      OPC=nop            
  nop                                                                         #  22    0xf3a59  1      OPC=nop            
  nop                                                                         #  23    0xf3a5a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  24    0xf3a5b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  25    0xf3a60  2      OPC=testl_r32_r32  
  je .L_f3a80                                                                 #  26    0xf3a62  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  27    0xf3a64  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  28    0xf3a66  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  29    0xf3a6a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  30    0xf3a6c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  31    0xf3a6f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  32    0xf3a71  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  33    0xf3a75  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  34    0xf3a77  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  35    0xf3a78  5      OPC=jmpq_label_1   
  nop                                                                         #  36    0xf3a7d  1      OPC=nop            
  nop                                                                         #  37    0xf3a7e  1      OPC=nop            
  nop                                                                         #  38    0xf3a7f  1      OPC=nop            
.L_f3a80:                                                                     #        0xf3a80  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  39    0xf3a80  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  40    0xf3a82  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  41    0xf3a86  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  42    0xf3a89  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  43    0xf3a8b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  44    0xf3a8f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  45    0xf3a91  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xf3a93  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  47    0xf3a98  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  48    0xf3a99  3      OPC=orl_r32_imm8   
  nop                                                                         #  49    0xf3a9c  1      OPC=nop            
  nop                                                                         #  50    0xf3a9d  1      OPC=nop            
  nop                                                                         #  51    0xf3a9e  1      OPC=nop            
  nop                                                                         #  52    0xf3a9f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  53    0xf3aa0  5      OPC=jmpq_label_1   
  nop                                                                         #  54    0xf3aa5  1      OPC=nop            
  nop                                                                         #  55    0xf3aa6  1      OPC=nop            
  nop                                                                         #  56    0xf3aa7  1      OPC=nop            
  nop                                                                         #  57    0xf3aa8  1      OPC=nop            
  nop                                                                         #  58    0xf3aa9  1      OPC=nop            
  nop                                                                         #  59    0xf3aaa  1      OPC=nop            
  nop                                                                         #  60    0xf3aab  1      OPC=nop            
  nop                                                                         #  61    0xf3aac  1      OPC=nop            
  nop                                                                         #  62    0xf3aad  1      OPC=nop            
  nop                                                                         #  63    0xf3aae  1      OPC=nop            
  nop                                                                         #  64    0xf3aaf  1      OPC=nop            
  nop                                                                         #  65    0xf3ab0  1      OPC=nop            
  nop                                                                         #  66    0xf3ab1  1      OPC=nop            
  nop                                                                         #  67    0xf3ab2  1      OPC=nop            
  nop                                                                         #  68    0xf3ab3  1      OPC=nop            
  nop                                                                         #  69    0xf3ab4  1      OPC=nop            
  nop                                                                         #  70    0xf3ab5  1      OPC=nop            
  nop                                                                         #  71    0xf3ab6  1      OPC=nop            
  nop                                                                         #  72    0xf3ab7  1      OPC=nop            
  nop                                                                         #  73    0xf3ab8  1      OPC=nop            
  nop                                                                         #  74    0xf3ab9  1      OPC=nop            
  nop                                                                         #  75    0xf3aba  1      OPC=nop            
  nop                                                                         #  76    0xf3abb  1      OPC=nop            
  nop                                                                         #  77    0xf3abc  1      OPC=nop            
  nop                                                                         #  78    0xf3abd  1      OPC=nop            
  nop                                                                         #  79    0xf3abe  1      OPC=nop            
  nop                                                                         #  80    0xf3abf  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

