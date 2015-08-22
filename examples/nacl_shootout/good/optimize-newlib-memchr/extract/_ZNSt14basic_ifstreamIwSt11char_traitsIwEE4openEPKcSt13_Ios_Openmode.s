  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133b40
#! rip-offset  0xf3b40
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf3b40  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3b40  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3b41  2      OPC=movl_r32_r32   
  orl $0x8, %edx                                                              #  3     0xf3b43  3      OPC=orl_r32_imm8   
  leal 0x8(%rbx), %edi                                                        #  4     0xf3b46  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xf3b49  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xf3b4b  1      OPC=nop            
  nop                                                                         #  7     0xf3b4c  1      OPC=nop            
  nop                                                                         #  8     0xf3b4d  1      OPC=nop            
  nop                                                                         #  9     0xf3b4e  1      OPC=nop            
  nop                                                                         #  10    0xf3b4f  1      OPC=nop            
  nop                                                                         #  11    0xf3b50  1      OPC=nop            
  nop                                                                         #  12    0xf3b51  1      OPC=nop            
  nop                                                                         #  13    0xf3b52  1      OPC=nop            
  nop                                                                         #  14    0xf3b53  1      OPC=nop            
  nop                                                                         #  15    0xf3b54  1      OPC=nop            
  nop                                                                         #  16    0xf3b55  1      OPC=nop            
  nop                                                                         #  17    0xf3b56  1      OPC=nop            
  nop                                                                         #  18    0xf3b57  1      OPC=nop            
  nop                                                                         #  19    0xf3b58  1      OPC=nop            
  nop                                                                         #  20    0xf3b59  1      OPC=nop            
  nop                                                                         #  21    0xf3b5a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf3b5b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xf3b60  2      OPC=testl_r32_r32  
  je .L_f3b80                                                                 #  24    0xf3b62  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xf3b64  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf3b66  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xf3b6a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xf3b6c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xf3b6f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xf3b71  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xf3b75  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xf3b77  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf3b78  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xf3b7d  1      OPC=nop            
  nop                                                                         #  35    0xf3b7e  1      OPC=nop            
  nop                                                                         #  36    0xf3b7f  1      OPC=nop            
.L_f3b80:                                                                     #        0xf3b80  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xf3b80  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf3b82  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xf3b86  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xf3b89  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xf3b8b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xf3b8f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xf3b91  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf3b93  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xf3b98  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xf3b99  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xf3b9c  1      OPC=nop            
  nop                                                                         #  48    0xf3b9d  1      OPC=nop            
  nop                                                                         #  49    0xf3b9e  1      OPC=nop            
  nop                                                                         #  50    0xf3b9f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf3ba0  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xf3ba5  1      OPC=nop            
  nop                                                                         #  53    0xf3ba6  1      OPC=nop            
  nop                                                                         #  54    0xf3ba7  1      OPC=nop            
  nop                                                                         #  55    0xf3ba8  1      OPC=nop            
  nop                                                                         #  56    0xf3ba9  1      OPC=nop            
  nop                                                                         #  57    0xf3baa  1      OPC=nop            
  nop                                                                         #  58    0xf3bab  1      OPC=nop            
  nop                                                                         #  59    0xf3bac  1      OPC=nop            
  nop                                                                         #  60    0xf3bad  1      OPC=nop            
  nop                                                                         #  61    0xf3bae  1      OPC=nop            
  nop                                                                         #  62    0xf3baf  1      OPC=nop            
  nop                                                                         #  63    0xf3bb0  1      OPC=nop            
  nop                                                                         #  64    0xf3bb1  1      OPC=nop            
  nop                                                                         #  65    0xf3bb2  1      OPC=nop            
  nop                                                                         #  66    0xf3bb3  1      OPC=nop            
  nop                                                                         #  67    0xf3bb4  1      OPC=nop            
  nop                                                                         #  68    0xf3bb5  1      OPC=nop            
  nop                                                                         #  69    0xf3bb6  1      OPC=nop            
  nop                                                                         #  70    0xf3bb7  1      OPC=nop            
  nop                                                                         #  71    0xf3bb8  1      OPC=nop            
  nop                                                                         #  72    0xf3bb9  1      OPC=nop            
  nop                                                                         #  73    0xf3bba  1      OPC=nop            
  nop                                                                         #  74    0xf3bbb  1      OPC=nop            
  nop                                                                         #  75    0xf3bbc  1      OPC=nop            
  nop                                                                         #  76    0xf3bbd  1      OPC=nop            
  nop                                                                         #  77    0xf3bbe  1      OPC=nop            
  nop                                                                         #  78    0xf3bbf  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

