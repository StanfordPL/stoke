  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x1331c0
#! rip-offset  0xf31c0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:        #        0xf31c0  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf31c0  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf31c2  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf31c3  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf31c5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf31c7  4      OPC=movl_r32_m32   
  leal 0xc(%rbx), %edi                                                        #  6     0xf31cb  3      OPC=leal_r32_m16   
  nop                                                                         #  7     0xf31ce  1      OPC=nop            
  nop                                                                         #  8     0xf31cf  1      OPC=nop            
  nop                                                                         #  9     0xf31d0  1      OPC=nop            
  nop                                                                         #  10    0xf31d1  1      OPC=nop            
  nop                                                                         #  11    0xf31d2  1      OPC=nop            
  nop                                                                         #  12    0xf31d3  1      OPC=nop            
  nop                                                                         #  13    0xf31d4  1      OPC=nop            
  nop                                                                         #  14    0xf31d5  1      OPC=nop            
  nop                                                                         #  15    0xf31d6  1      OPC=nop            
  nop                                                                         #  16    0xf31d7  1      OPC=nop            
  nop                                                                         #  17    0xf31d8  1      OPC=nop            
  nop                                                                         #  18    0xf31d9  1      OPC=nop            
  nop                                                                         #  19    0xf31da  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  20    0xf31db  5      OPC=callq_label    
  testl %eax, %eax                                                            #  21    0xf31e0  2      OPC=testl_r32_r32  
  je .L_f3200                                                                 #  22    0xf31e2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  23    0xf31e4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  24    0xf31e6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  25    0xf31ea  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  26    0xf31ec  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  27    0xf31ef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  28    0xf31f1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  29    0xf31f5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  30    0xf31f7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  31    0xf31f8  5      OPC=jmpq_label_1   
  nop                                                                         #  32    0xf31fd  1      OPC=nop            
  nop                                                                         #  33    0xf31fe  1      OPC=nop            
  nop                                                                         #  34    0xf31ff  1      OPC=nop            
.L_f3200:                                                                     #        0xf3200  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  35    0xf3200  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  36    0xf3202  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  37    0xf3206  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  38    0xf3209  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  39    0xf320b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  40    0xf320f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  41    0xf3211  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xf3213  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  43    0xf3218  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  44    0xf3219  3      OPC=orl_r32_imm8   
  nop                                                                         #  45    0xf321c  1      OPC=nop            
  nop                                                                         #  46    0xf321d  1      OPC=nop            
  nop                                                                         #  47    0xf321e  1      OPC=nop            
  nop                                                                         #  48    0xf321f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  49    0xf3220  5      OPC=jmpq_label_1   
  nop                                                                         #  50    0xf3225  1      OPC=nop            
  nop                                                                         #  51    0xf3226  1      OPC=nop            
  nop                                                                         #  52    0xf3227  1      OPC=nop            
  nop                                                                         #  53    0xf3228  1      OPC=nop            
  nop                                                                         #  54    0xf3229  1      OPC=nop            
  nop                                                                         #  55    0xf322a  1      OPC=nop            
  nop                                                                         #  56    0xf322b  1      OPC=nop            
  nop                                                                         #  57    0xf322c  1      OPC=nop            
  nop                                                                         #  58    0xf322d  1      OPC=nop            
  nop                                                                         #  59    0xf322e  1      OPC=nop            
  nop                                                                         #  60    0xf322f  1      OPC=nop            
  nop                                                                         #  61    0xf3230  1      OPC=nop            
  nop                                                                         #  62    0xf3231  1      OPC=nop            
  nop                                                                         #  63    0xf3232  1      OPC=nop            
  nop                                                                         #  64    0xf3233  1      OPC=nop            
  nop                                                                         #  65    0xf3234  1      OPC=nop            
  nop                                                                         #  66    0xf3235  1      OPC=nop            
  nop                                                                         #  67    0xf3236  1      OPC=nop            
  nop                                                                         #  68    0xf3237  1      OPC=nop            
  nop                                                                         #  69    0xf3238  1      OPC=nop            
  nop                                                                         #  70    0xf3239  1      OPC=nop            
  nop                                                                         #  71    0xf323a  1      OPC=nop            
  nop                                                                         #  72    0xf323b  1      OPC=nop            
  nop                                                                         #  73    0xf323c  1      OPC=nop            
  nop                                                                         #  74    0xf323d  1      OPC=nop            
  nop                                                                         #  75    0xf323e  1      OPC=nop            
  nop                                                                         #  76    0xf323f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

