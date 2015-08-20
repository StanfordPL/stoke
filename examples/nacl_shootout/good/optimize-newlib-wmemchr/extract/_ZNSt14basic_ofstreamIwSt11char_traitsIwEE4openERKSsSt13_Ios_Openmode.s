  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x133540
#! rip-offset  0xf3540
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf3540  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf3540  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf3542  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf3543  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf3545  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf3547  4      OPC=movl_r32_m32   
  leal 0x4(%rbx), %edi                                                        #  6     0xf354b  3      OPC=leal_r32_m16   
  orl $0x10, %edx                                                             #  7     0xf354e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xf3551  1      OPC=nop            
  nop                                                                         #  9     0xf3552  1      OPC=nop            
  nop                                                                         #  10    0xf3553  1      OPC=nop            
  nop                                                                         #  11    0xf3554  1      OPC=nop            
  nop                                                                         #  12    0xf3555  1      OPC=nop            
  nop                                                                         #  13    0xf3556  1      OPC=nop            
  nop                                                                         #  14    0xf3557  1      OPC=nop            
  nop                                                                         #  15    0xf3558  1      OPC=nop            
  nop                                                                         #  16    0xf3559  1      OPC=nop            
  nop                                                                         #  17    0xf355a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf355b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xf3560  2      OPC=testl_r32_r32  
  je .L_f3580                                                                 #  20    0xf3562  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xf3564  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xf3566  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xf356a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xf356c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xf356f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xf3571  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xf3575  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xf3577  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  29    0xf3578  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xf357d  1      OPC=nop            
  nop                                                                         #  31    0xf357e  1      OPC=nop            
  nop                                                                         #  32    0xf357f  1      OPC=nop            
.L_f3580:                                                                     #        0xf3580  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xf3580  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xf3582  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xf3586  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xf3589  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xf358b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xf358f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xf3591  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xf3593  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xf3598  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xf3599  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xf359c  1      OPC=nop            
  nop                                                                         #  44    0xf359d  1      OPC=nop            
  nop                                                                         #  45    0xf359e  1      OPC=nop            
  nop                                                                         #  46    0xf359f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  47    0xf35a0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xf35a5  1      OPC=nop            
  nop                                                                         #  49    0xf35a6  1      OPC=nop            
  nop                                                                         #  50    0xf35a7  1      OPC=nop            
  nop                                                                         #  51    0xf35a8  1      OPC=nop            
  nop                                                                         #  52    0xf35a9  1      OPC=nop            
  nop                                                                         #  53    0xf35aa  1      OPC=nop            
  nop                                                                         #  54    0xf35ab  1      OPC=nop            
  nop                                                                         #  55    0xf35ac  1      OPC=nop            
  nop                                                                         #  56    0xf35ad  1      OPC=nop            
  nop                                                                         #  57    0xf35ae  1      OPC=nop            
  nop                                                                         #  58    0xf35af  1      OPC=nop            
  nop                                                                         #  59    0xf35b0  1      OPC=nop            
  nop                                                                         #  60    0xf35b1  1      OPC=nop            
  nop                                                                         #  61    0xf35b2  1      OPC=nop            
  nop                                                                         #  62    0xf35b3  1      OPC=nop            
  nop                                                                         #  63    0xf35b4  1      OPC=nop            
  nop                                                                         #  64    0xf35b5  1      OPC=nop            
  nop                                                                         #  65    0xf35b6  1      OPC=nop            
  nop                                                                         #  66    0xf35b7  1      OPC=nop            
  nop                                                                         #  67    0xf35b8  1      OPC=nop            
  nop                                                                         #  68    0xf35b9  1      OPC=nop            
  nop                                                                         #  69    0xf35ba  1      OPC=nop            
  nop                                                                         #  70    0xf35bb  1      OPC=nop            
  nop                                                                         #  71    0xf35bc  1      OPC=nop            
  nop                                                                         #  72    0xf35bd  1      OPC=nop            
  nop                                                                         #  73    0xf35be  1      OPC=nop            
  nop                                                                         #  74    0xf35bf  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

