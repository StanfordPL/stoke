  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x1334c0
#! rip-offset  0xf34c0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:        #        0xf34c0  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf34c0  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf34c2  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf34c3  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf34c5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf34c7  4      OPC=movl_r32_m32   
  leal 0xc(%rbx), %edi                                                        #  6     0xf34cb  3      OPC=leal_r32_m16   
  nop                                                                         #  7     0xf34ce  1      OPC=nop            
  nop                                                                         #  8     0xf34cf  1      OPC=nop            
  nop                                                                         #  9     0xf34d0  1      OPC=nop            
  nop                                                                         #  10    0xf34d1  1      OPC=nop            
  nop                                                                         #  11    0xf34d2  1      OPC=nop            
  nop                                                                         #  12    0xf34d3  1      OPC=nop            
  nop                                                                         #  13    0xf34d4  1      OPC=nop            
  nop                                                                         #  14    0xf34d5  1      OPC=nop            
  nop                                                                         #  15    0xf34d6  1      OPC=nop            
  nop                                                                         #  16    0xf34d7  1      OPC=nop            
  nop                                                                         #  17    0xf34d8  1      OPC=nop            
  nop                                                                         #  18    0xf34d9  1      OPC=nop            
  nop                                                                         #  19    0xf34da  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  20    0xf34db  5      OPC=callq_label    
  testl %eax, %eax                                                            #  21    0xf34e0  2      OPC=testl_r32_r32  
  je .L_f3500                                                                 #  22    0xf34e2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  23    0xf34e4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  24    0xf34e6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  25    0xf34ea  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  26    0xf34ec  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  27    0xf34ef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  28    0xf34f1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  29    0xf34f5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  30    0xf34f7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  31    0xf34f8  5      OPC=jmpq_label_1   
  nop                                                                         #  32    0xf34fd  1      OPC=nop            
  nop                                                                         #  33    0xf34fe  1      OPC=nop            
  nop                                                                         #  34    0xf34ff  1      OPC=nop            
.L_f3500:                                                                     #        0xf3500  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  35    0xf3500  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  36    0xf3502  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  37    0xf3506  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  38    0xf3509  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  39    0xf350b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  40    0xf350f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  41    0xf3511  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xf3513  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  43    0xf3518  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  44    0xf3519  3      OPC=orl_r32_imm8   
  nop                                                                         #  45    0xf351c  1      OPC=nop            
  nop                                                                         #  46    0xf351d  1      OPC=nop            
  nop                                                                         #  47    0xf351e  1      OPC=nop            
  nop                                                                         #  48    0xf351f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  49    0xf3520  5      OPC=jmpq_label_1   
  nop                                                                         #  50    0xf3525  1      OPC=nop            
  nop                                                                         #  51    0xf3526  1      OPC=nop            
  nop                                                                         #  52    0xf3527  1      OPC=nop            
  nop                                                                         #  53    0xf3528  1      OPC=nop            
  nop                                                                         #  54    0xf3529  1      OPC=nop            
  nop                                                                         #  55    0xf352a  1      OPC=nop            
  nop                                                                         #  56    0xf352b  1      OPC=nop            
  nop                                                                         #  57    0xf352c  1      OPC=nop            
  nop                                                                         #  58    0xf352d  1      OPC=nop            
  nop                                                                         #  59    0xf352e  1      OPC=nop            
  nop                                                                         #  60    0xf352f  1      OPC=nop            
  nop                                                                         #  61    0xf3530  1      OPC=nop            
  nop                                                                         #  62    0xf3531  1      OPC=nop            
  nop                                                                         #  63    0xf3532  1      OPC=nop            
  nop                                                                         #  64    0xf3533  1      OPC=nop            
  nop                                                                         #  65    0xf3534  1      OPC=nop            
  nop                                                                         #  66    0xf3535  1      OPC=nop            
  nop                                                                         #  67    0xf3536  1      OPC=nop            
  nop                                                                         #  68    0xf3537  1      OPC=nop            
  nop                                                                         #  69    0xf3538  1      OPC=nop            
  nop                                                                         #  70    0xf3539  1      OPC=nop            
  nop                                                                         #  71    0xf353a  1      OPC=nop            
  nop                                                                         #  72    0xf353b  1      OPC=nop            
  nop                                                                         #  73    0xf353c  1      OPC=nop            
  nop                                                                         #  74    0xf353d  1      OPC=nop            
  nop                                                                         #  75    0xf353e  1      OPC=nop            
  nop                                                                         #  76    0xf353f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

