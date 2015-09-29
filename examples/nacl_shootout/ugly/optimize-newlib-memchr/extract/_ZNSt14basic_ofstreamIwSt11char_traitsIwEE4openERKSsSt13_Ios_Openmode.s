  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x133c60
#! rip-offset  0xf3c60
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf3c60  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf3c60  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf3c62  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf3c63  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf3c65  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf3c67  4      OPC=movl_r32_m32   
  leal 0x4(%rbx), %edi                                                        #  6     0xf3c6b  3      OPC=leal_r32_m16   
  orl $0x10, %edx                                                             #  7     0xf3c6e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xf3c71  1      OPC=nop            
  nop                                                                         #  9     0xf3c72  1      OPC=nop            
  nop                                                                         #  10    0xf3c73  1      OPC=nop            
  nop                                                                         #  11    0xf3c74  1      OPC=nop            
  nop                                                                         #  12    0xf3c75  1      OPC=nop            
  nop                                                                         #  13    0xf3c76  1      OPC=nop            
  nop                                                                         #  14    0xf3c77  1      OPC=nop            
  nop                                                                         #  15    0xf3c78  1      OPC=nop            
  nop                                                                         #  16    0xf3c79  1      OPC=nop            
  nop                                                                         #  17    0xf3c7a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf3c7b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xf3c80  2      OPC=testl_r32_r32  
  je .L_f3ca0                                                                 #  20    0xf3c82  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xf3c84  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xf3c86  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xf3c8a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xf3c8c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xf3c8f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xf3c91  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xf3c95  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xf3c97  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  29    0xf3c98  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xf3c9d  1      OPC=nop            
  nop                                                                         #  31    0xf3c9e  1      OPC=nop            
  nop                                                                         #  32    0xf3c9f  1      OPC=nop            
.L_f3ca0:                                                                     #        0xf3ca0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xf3ca0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xf3ca2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xf3ca6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xf3ca9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xf3cab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xf3caf  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xf3cb1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xf3cb3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xf3cb8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xf3cb9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xf3cbc  1      OPC=nop            
  nop                                                                         #  44    0xf3cbd  1      OPC=nop            
  nop                                                                         #  45    0xf3cbe  1      OPC=nop            
  nop                                                                         #  46    0xf3cbf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  47    0xf3cc0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xf3cc5  1      OPC=nop            
  nop                                                                         #  49    0xf3cc6  1      OPC=nop            
  nop                                                                         #  50    0xf3cc7  1      OPC=nop            
  nop                                                                         #  51    0xf3cc8  1      OPC=nop            
  nop                                                                         #  52    0xf3cc9  1      OPC=nop            
  nop                                                                         #  53    0xf3cca  1      OPC=nop            
  nop                                                                         #  54    0xf3ccb  1      OPC=nop            
  nop                                                                         #  55    0xf3ccc  1      OPC=nop            
  nop                                                                         #  56    0xf3ccd  1      OPC=nop            
  nop                                                                         #  57    0xf3cce  1      OPC=nop            
  nop                                                                         #  58    0xf3ccf  1      OPC=nop            
  nop                                                                         #  59    0xf3cd0  1      OPC=nop            
  nop                                                                         #  60    0xf3cd1  1      OPC=nop            
  nop                                                                         #  61    0xf3cd2  1      OPC=nop            
  nop                                                                         #  62    0xf3cd3  1      OPC=nop            
  nop                                                                         #  63    0xf3cd4  1      OPC=nop            
  nop                                                                         #  64    0xf3cd5  1      OPC=nop            
  nop                                                                         #  65    0xf3cd6  1      OPC=nop            
  nop                                                                         #  66    0xf3cd7  1      OPC=nop            
  nop                                                                         #  67    0xf3cd8  1      OPC=nop            
  nop                                                                         #  68    0xf3cd9  1      OPC=nop            
  nop                                                                         #  69    0xf3cda  1      OPC=nop            
  nop                                                                         #  70    0xf3cdb  1      OPC=nop            
  nop                                                                         #  71    0xf3cdc  1      OPC=nop            
  nop                                                                         #  72    0xf3cdd  1      OPC=nop            
  nop                                                                         #  73    0xf3cde  1      OPC=nop            
  nop                                                                         #  74    0xf3cdf  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

