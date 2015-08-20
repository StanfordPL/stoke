  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133420
#! rip-offset  0xf3420
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf3420  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3420  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3421  2      OPC=movl_r32_r32   
  orl $0x8, %edx                                                              #  3     0xf3423  3      OPC=orl_r32_imm8   
  leal 0x8(%rbx), %edi                                                        #  4     0xf3426  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xf3429  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xf342b  1      OPC=nop            
  nop                                                                         #  7     0xf342c  1      OPC=nop            
  nop                                                                         #  8     0xf342d  1      OPC=nop            
  nop                                                                         #  9     0xf342e  1      OPC=nop            
  nop                                                                         #  10    0xf342f  1      OPC=nop            
  nop                                                                         #  11    0xf3430  1      OPC=nop            
  nop                                                                         #  12    0xf3431  1      OPC=nop            
  nop                                                                         #  13    0xf3432  1      OPC=nop            
  nop                                                                         #  14    0xf3433  1      OPC=nop            
  nop                                                                         #  15    0xf3434  1      OPC=nop            
  nop                                                                         #  16    0xf3435  1      OPC=nop            
  nop                                                                         #  17    0xf3436  1      OPC=nop            
  nop                                                                         #  18    0xf3437  1      OPC=nop            
  nop                                                                         #  19    0xf3438  1      OPC=nop            
  nop                                                                         #  20    0xf3439  1      OPC=nop            
  nop                                                                         #  21    0xf343a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf343b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xf3440  2      OPC=testl_r32_r32  
  je .L_f3460                                                                 #  24    0xf3442  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xf3444  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf3446  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xf344a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xf344c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xf344f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xf3451  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xf3455  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xf3457  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf3458  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xf345d  1      OPC=nop            
  nop                                                                         #  35    0xf345e  1      OPC=nop            
  nop                                                                         #  36    0xf345f  1      OPC=nop            
.L_f3460:                                                                     #        0xf3460  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xf3460  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf3462  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xf3466  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xf3469  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xf346b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xf346f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xf3471  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf3473  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xf3478  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xf3479  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xf347c  1      OPC=nop            
  nop                                                                         #  48    0xf347d  1      OPC=nop            
  nop                                                                         #  49    0xf347e  1      OPC=nop            
  nop                                                                         #  50    0xf347f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf3480  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xf3485  1      OPC=nop            
  nop                                                                         #  53    0xf3486  1      OPC=nop            
  nop                                                                         #  54    0xf3487  1      OPC=nop            
  nop                                                                         #  55    0xf3488  1      OPC=nop            
  nop                                                                         #  56    0xf3489  1      OPC=nop            
  nop                                                                         #  57    0xf348a  1      OPC=nop            
  nop                                                                         #  58    0xf348b  1      OPC=nop            
  nop                                                                         #  59    0xf348c  1      OPC=nop            
  nop                                                                         #  60    0xf348d  1      OPC=nop            
  nop                                                                         #  61    0xf348e  1      OPC=nop            
  nop                                                                         #  62    0xf348f  1      OPC=nop            
  nop                                                                         #  63    0xf3490  1      OPC=nop            
  nop                                                                         #  64    0xf3491  1      OPC=nop            
  nop                                                                         #  65    0xf3492  1      OPC=nop            
  nop                                                                         #  66    0xf3493  1      OPC=nop            
  nop                                                                         #  67    0xf3494  1      OPC=nop            
  nop                                                                         #  68    0xf3495  1      OPC=nop            
  nop                                                                         #  69    0xf3496  1      OPC=nop            
  nop                                                                         #  70    0xf3497  1      OPC=nop            
  nop                                                                         #  71    0xf3498  1      OPC=nop            
  nop                                                                         #  72    0xf3499  1      OPC=nop            
  nop                                                                         #  73    0xf349a  1      OPC=nop            
  nop                                                                         #  74    0xf349b  1      OPC=nop            
  nop                                                                         #  75    0xf349c  1      OPC=nop            
  nop                                                                         #  76    0xf349d  1      OPC=nop            
  nop                                                                         #  77    0xf349e  1      OPC=nop            
  nop                                                                         #  78    0xf349f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

