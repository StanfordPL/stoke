  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x1332c0
#! rip-offset  0xf32c0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf32c0  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf32c0  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf32c2  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf32c3  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf32c5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf32c7  4      OPC=movl_r32_m32   
  leal 0x8(%rbx), %edi                                                        #  6     0xf32cb  3      OPC=leal_r32_m16   
  orl $0x8, %edx                                                              #  7     0xf32ce  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xf32d1  1      OPC=nop            
  nop                                                                         #  9     0xf32d2  1      OPC=nop            
  nop                                                                         #  10    0xf32d3  1      OPC=nop            
  nop                                                                         #  11    0xf32d4  1      OPC=nop            
  nop                                                                         #  12    0xf32d5  1      OPC=nop            
  nop                                                                         #  13    0xf32d6  1      OPC=nop            
  nop                                                                         #  14    0xf32d7  1      OPC=nop            
  nop                                                                         #  15    0xf32d8  1      OPC=nop            
  nop                                                                         #  16    0xf32d9  1      OPC=nop            
  nop                                                                         #  17    0xf32da  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf32db  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xf32e0  2      OPC=testl_r32_r32  
  je .L_f3300                                                                 #  20    0xf32e2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xf32e4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xf32e6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xf32ea  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xf32ec  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xf32ef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xf32f1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xf32f5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xf32f7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  29    0xf32f8  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xf32fd  1      OPC=nop            
  nop                                                                         #  31    0xf32fe  1      OPC=nop            
  nop                                                                         #  32    0xf32ff  1      OPC=nop            
.L_f3300:                                                                     #        0xf3300  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xf3300  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xf3302  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xf3306  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xf3309  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xf330b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xf330f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xf3311  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xf3313  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xf3318  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xf3319  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xf331c  1      OPC=nop            
  nop                                                                         #  44    0xf331d  1      OPC=nop            
  nop                                                                         #  45    0xf331e  1      OPC=nop            
  nop                                                                         #  46    0xf331f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  47    0xf3320  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xf3325  1      OPC=nop            
  nop                                                                         #  49    0xf3326  1      OPC=nop            
  nop                                                                         #  50    0xf3327  1      OPC=nop            
  nop                                                                         #  51    0xf3328  1      OPC=nop            
  nop                                                                         #  52    0xf3329  1      OPC=nop            
  nop                                                                         #  53    0xf332a  1      OPC=nop            
  nop                                                                         #  54    0xf332b  1      OPC=nop            
  nop                                                                         #  55    0xf332c  1      OPC=nop            
  nop                                                                         #  56    0xf332d  1      OPC=nop            
  nop                                                                         #  57    0xf332e  1      OPC=nop            
  nop                                                                         #  58    0xf332f  1      OPC=nop            
  nop                                                                         #  59    0xf3330  1      OPC=nop            
  nop                                                                         #  60    0xf3331  1      OPC=nop            
  nop                                                                         #  61    0xf3332  1      OPC=nop            
  nop                                                                         #  62    0xf3333  1      OPC=nop            
  nop                                                                         #  63    0xf3334  1      OPC=nop            
  nop                                                                         #  64    0xf3335  1      OPC=nop            
  nop                                                                         #  65    0xf3336  1      OPC=nop            
  nop                                                                         #  66    0xf3337  1      OPC=nop            
  nop                                                                         #  67    0xf3338  1      OPC=nop            
  nop                                                                         #  68    0xf3339  1      OPC=nop            
  nop                                                                         #  69    0xf333a  1      OPC=nop            
  nop                                                                         #  70    0xf333b  1      OPC=nop            
  nop                                                                         #  71    0xf333c  1      OPC=nop            
  nop                                                                         #  72    0xf333d  1      OPC=nop            
  nop                                                                         #  73    0xf333e  1      OPC=nop            
  nop                                                                         #  74    0xf333f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

