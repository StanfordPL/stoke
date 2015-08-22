  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x133be0
#! rip-offset  0xf3be0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:        #        0xf3be0  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf3be0  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf3be2  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf3be3  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf3be5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf3be7  4      OPC=movl_r32_m32   
  leal 0xc(%rbx), %edi                                                        #  6     0xf3beb  3      OPC=leal_r32_m16   
  nop                                                                         #  7     0xf3bee  1      OPC=nop            
  nop                                                                         #  8     0xf3bef  1      OPC=nop            
  nop                                                                         #  9     0xf3bf0  1      OPC=nop            
  nop                                                                         #  10    0xf3bf1  1      OPC=nop            
  nop                                                                         #  11    0xf3bf2  1      OPC=nop            
  nop                                                                         #  12    0xf3bf3  1      OPC=nop            
  nop                                                                         #  13    0xf3bf4  1      OPC=nop            
  nop                                                                         #  14    0xf3bf5  1      OPC=nop            
  nop                                                                         #  15    0xf3bf6  1      OPC=nop            
  nop                                                                         #  16    0xf3bf7  1      OPC=nop            
  nop                                                                         #  17    0xf3bf8  1      OPC=nop            
  nop                                                                         #  18    0xf3bf9  1      OPC=nop            
  nop                                                                         #  19    0xf3bfa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  20    0xf3bfb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  21    0xf3c00  2      OPC=testl_r32_r32  
  je .L_f3c20                                                                 #  22    0xf3c02  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  23    0xf3c04  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  24    0xf3c06  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  25    0xf3c0a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  26    0xf3c0c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  27    0xf3c0f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  28    0xf3c11  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  29    0xf3c15  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  30    0xf3c17  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  31    0xf3c18  5      OPC=jmpq_label_1   
  nop                                                                         #  32    0xf3c1d  1      OPC=nop            
  nop                                                                         #  33    0xf3c1e  1      OPC=nop            
  nop                                                                         #  34    0xf3c1f  1      OPC=nop            
.L_f3c20:                                                                     #        0xf3c20  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  35    0xf3c20  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  36    0xf3c22  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  37    0xf3c26  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  38    0xf3c29  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  39    0xf3c2b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  40    0xf3c2f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  41    0xf3c31  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xf3c33  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  43    0xf3c38  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  44    0xf3c39  3      OPC=orl_r32_imm8   
  nop                                                                         #  45    0xf3c3c  1      OPC=nop            
  nop                                                                         #  46    0xf3c3d  1      OPC=nop            
  nop                                                                         #  47    0xf3c3e  1      OPC=nop            
  nop                                                                         #  48    0xf3c3f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  49    0xf3c40  5      OPC=jmpq_label_1   
  nop                                                                         #  50    0xf3c45  1      OPC=nop            
  nop                                                                         #  51    0xf3c46  1      OPC=nop            
  nop                                                                         #  52    0xf3c47  1      OPC=nop            
  nop                                                                         #  53    0xf3c48  1      OPC=nop            
  nop                                                                         #  54    0xf3c49  1      OPC=nop            
  nop                                                                         #  55    0xf3c4a  1      OPC=nop            
  nop                                                                         #  56    0xf3c4b  1      OPC=nop            
  nop                                                                         #  57    0xf3c4c  1      OPC=nop            
  nop                                                                         #  58    0xf3c4d  1      OPC=nop            
  nop                                                                         #  59    0xf3c4e  1      OPC=nop            
  nop                                                                         #  60    0xf3c4f  1      OPC=nop            
  nop                                                                         #  61    0xf3c50  1      OPC=nop            
  nop                                                                         #  62    0xf3c51  1      OPC=nop            
  nop                                                                         #  63    0xf3c52  1      OPC=nop            
  nop                                                                         #  64    0xf3c53  1      OPC=nop            
  nop                                                                         #  65    0xf3c54  1      OPC=nop            
  nop                                                                         #  66    0xf3c55  1      OPC=nop            
  nop                                                                         #  67    0xf3c56  1      OPC=nop            
  nop                                                                         #  68    0xf3c57  1      OPC=nop            
  nop                                                                         #  69    0xf3c58  1      OPC=nop            
  nop                                                                         #  70    0xf3c59  1      OPC=nop            
  nop                                                                         #  71    0xf3c5a  1      OPC=nop            
  nop                                                                         #  72    0xf3c5b  1      OPC=nop            
  nop                                                                         #  73    0xf3c5c  1      OPC=nop            
  nop                                                                         #  74    0xf3c5d  1      OPC=nop            
  nop                                                                         #  75    0xf3c5e  1      OPC=nop            
  nop                                                                         #  76    0xf3c5f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

