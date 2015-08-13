  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x133240
#! rip-offset  0xf3240
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf3240  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf3240  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf3242  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf3243  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf3245  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf3247  4      OPC=movl_r32_m32   
  leal 0x4(%rbx), %edi                                                        #  6     0xf324b  3      OPC=leal_r32_m16   
  orl $0x10, %edx                                                             #  7     0xf324e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xf3251  1      OPC=nop            
  nop                                                                         #  9     0xf3252  1      OPC=nop            
  nop                                                                         #  10    0xf3253  1      OPC=nop            
  nop                                                                         #  11    0xf3254  1      OPC=nop            
  nop                                                                         #  12    0xf3255  1      OPC=nop            
  nop                                                                         #  13    0xf3256  1      OPC=nop            
  nop                                                                         #  14    0xf3257  1      OPC=nop            
  nop                                                                         #  15    0xf3258  1      OPC=nop            
  nop                                                                         #  16    0xf3259  1      OPC=nop            
  nop                                                                         #  17    0xf325a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf325b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xf3260  2      OPC=testl_r32_r32  
  je .L_f3280                                                                 #  20    0xf3262  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xf3264  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xf3266  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xf326a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xf326c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xf326f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xf3271  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xf3275  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xf3277  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  29    0xf3278  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xf327d  1      OPC=nop            
  nop                                                                         #  31    0xf327e  1      OPC=nop            
  nop                                                                         #  32    0xf327f  1      OPC=nop            
.L_f3280:                                                                     #        0xf3280  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xf3280  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xf3282  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xf3286  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xf3289  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xf328b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xf328f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xf3291  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xf3293  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xf3298  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xf3299  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xf329c  1      OPC=nop            
  nop                                                                         #  44    0xf329d  1      OPC=nop            
  nop                                                                         #  45    0xf329e  1      OPC=nop            
  nop                                                                         #  46    0xf329f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  47    0xf32a0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xf32a5  1      OPC=nop            
  nop                                                                         #  49    0xf32a6  1      OPC=nop            
  nop                                                                         #  50    0xf32a7  1      OPC=nop            
  nop                                                                         #  51    0xf32a8  1      OPC=nop            
  nop                                                                         #  52    0xf32a9  1      OPC=nop            
  nop                                                                         #  53    0xf32aa  1      OPC=nop            
  nop                                                                         #  54    0xf32ab  1      OPC=nop            
  nop                                                                         #  55    0xf32ac  1      OPC=nop            
  nop                                                                         #  56    0xf32ad  1      OPC=nop            
  nop                                                                         #  57    0xf32ae  1      OPC=nop            
  nop                                                                         #  58    0xf32af  1      OPC=nop            
  nop                                                                         #  59    0xf32b0  1      OPC=nop            
  nop                                                                         #  60    0xf32b1  1      OPC=nop            
  nop                                                                         #  61    0xf32b2  1      OPC=nop            
  nop                                                                         #  62    0xf32b3  1      OPC=nop            
  nop                                                                         #  63    0xf32b4  1      OPC=nop            
  nop                                                                         #  64    0xf32b5  1      OPC=nop            
  nop                                                                         #  65    0xf32b6  1      OPC=nop            
  nop                                                                         #  66    0xf32b7  1      OPC=nop            
  nop                                                                         #  67    0xf32b8  1      OPC=nop            
  nop                                                                         #  68    0xf32b9  1      OPC=nop            
  nop                                                                         #  69    0xf32ba  1      OPC=nop            
  nop                                                                         #  70    0xf32bb  1      OPC=nop            
  nop                                                                         #  71    0xf32bc  1      OPC=nop            
  nop                                                                         #  72    0xf32bd  1      OPC=nop            
  nop                                                                         #  73    0xf32be  1      OPC=nop            
  nop                                                                         #  74    0xf32bf  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

