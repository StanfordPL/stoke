  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12e060
#! rip-offset  0xee060
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:        #        0xee060  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xee060  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xee062  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xee063  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xee065  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xee067  4      OPC=movl_r32_m32   
  leal 0xc(%rbx), %edi                                                        #  6     0xee06b  3      OPC=leal_r32_m16   
  nop                                                                         #  7     0xee06e  1      OPC=nop            
  nop                                                                         #  8     0xee06f  1      OPC=nop            
  nop                                                                         #  9     0xee070  1      OPC=nop            
  nop                                                                         #  10    0xee071  1      OPC=nop            
  nop                                                                         #  11    0xee072  1      OPC=nop            
  nop                                                                         #  12    0xee073  1      OPC=nop            
  nop                                                                         #  13    0xee074  1      OPC=nop            
  nop                                                                         #  14    0xee075  1      OPC=nop            
  nop                                                                         #  15    0xee076  1      OPC=nop            
  nop                                                                         #  16    0xee077  1      OPC=nop            
  nop                                                                         #  17    0xee078  1      OPC=nop            
  nop                                                                         #  18    0xee079  1      OPC=nop            
  nop                                                                         #  19    0xee07a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  20    0xee07b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  21    0xee080  2      OPC=testl_r32_r32  
  je .L_ee0a0                                                                 #  22    0xee082  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  23    0xee084  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  24    0xee086  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  25    0xee08a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  26    0xee08c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  27    0xee08f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  28    0xee091  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  29    0xee095  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  30    0xee097  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  31    0xee098  5      OPC=jmpq_label_1   
  nop                                                                         #  32    0xee09d  1      OPC=nop            
  nop                                                                         #  33    0xee09e  1      OPC=nop            
  nop                                                                         #  34    0xee09f  1      OPC=nop            
.L_ee0a0:                                                                     #        0xee0a0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  35    0xee0a0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  36    0xee0a2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  37    0xee0a6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  38    0xee0a9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  39    0xee0ab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  40    0xee0af  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  41    0xee0b1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  42    0xee0b3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  43    0xee0b8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  44    0xee0b9  3      OPC=orl_r32_imm8   
  nop                                                                         #  45    0xee0bc  1      OPC=nop            
  nop                                                                         #  46    0xee0bd  1      OPC=nop            
  nop                                                                         #  47    0xee0be  1      OPC=nop            
  nop                                                                         #  48    0xee0bf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  49    0xee0c0  5      OPC=jmpq_label_1   
  nop                                                                         #  50    0xee0c5  1      OPC=nop            
  nop                                                                         #  51    0xee0c6  1      OPC=nop            
  nop                                                                         #  52    0xee0c7  1      OPC=nop            
  nop                                                                         #  53    0xee0c8  1      OPC=nop            
  nop                                                                         #  54    0xee0c9  1      OPC=nop            
  nop                                                                         #  55    0xee0ca  1      OPC=nop            
  nop                                                                         #  56    0xee0cb  1      OPC=nop            
  nop                                                                         #  57    0xee0cc  1      OPC=nop            
  nop                                                                         #  58    0xee0cd  1      OPC=nop            
  nop                                                                         #  59    0xee0ce  1      OPC=nop            
  nop                                                                         #  60    0xee0cf  1      OPC=nop            
  nop                                                                         #  61    0xee0d0  1      OPC=nop            
  nop                                                                         #  62    0xee0d1  1      OPC=nop            
  nop                                                                         #  63    0xee0d2  1      OPC=nop            
  nop                                                                         #  64    0xee0d3  1      OPC=nop            
  nop                                                                         #  65    0xee0d4  1      OPC=nop            
  nop                                                                         #  66    0xee0d5  1      OPC=nop            
  nop                                                                         #  67    0xee0d6  1      OPC=nop            
  nop                                                                         #  68    0xee0d7  1      OPC=nop            
  nop                                                                         #  69    0xee0d8  1      OPC=nop            
  nop                                                                         #  70    0xee0d9  1      OPC=nop            
  nop                                                                         #  71    0xee0da  1      OPC=nop            
  nop                                                                         #  72    0xee0db  1      OPC=nop            
  nop                                                                         #  73    0xee0dc  1      OPC=nop            
  nop                                                                         #  74    0xee0dd  1      OPC=nop            
  nop                                                                         #  75    0xee0de  1      OPC=nop            
  nop                                                                         #  76    0xee0df  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

