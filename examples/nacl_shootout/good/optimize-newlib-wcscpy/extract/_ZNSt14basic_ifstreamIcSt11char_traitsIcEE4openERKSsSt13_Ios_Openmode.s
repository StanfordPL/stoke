  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12e260
#! rip-offset  0xee260
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xee260  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xee260  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xee262  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xee263  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xee265  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xee267  4      OPC=movl_r32_m32   
  leal 0x8(%rbx), %edi                                                        #  6     0xee26b  3      OPC=leal_r32_m16   
  orl $0x8, %edx                                                              #  7     0xee26e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xee271  1      OPC=nop            
  nop                                                                         #  9     0xee272  1      OPC=nop            
  nop                                                                         #  10    0xee273  1      OPC=nop            
  nop                                                                         #  11    0xee274  1      OPC=nop            
  nop                                                                         #  12    0xee275  1      OPC=nop            
  nop                                                                         #  13    0xee276  1      OPC=nop            
  nop                                                                         #  14    0xee277  1      OPC=nop            
  nop                                                                         #  15    0xee278  1      OPC=nop            
  nop                                                                         #  16    0xee279  1      OPC=nop            
  nop                                                                         #  17    0xee27a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xee27b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xee280  2      OPC=testl_r32_r32  
  je .L_ee2a0                                                                 #  20    0xee282  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xee284  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xee286  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xee28a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xee28c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xee28f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xee291  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xee295  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xee297  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  29    0xee298  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xee29d  1      OPC=nop            
  nop                                                                         #  31    0xee29e  1      OPC=nop            
  nop                                                                         #  32    0xee29f  1      OPC=nop            
.L_ee2a0:                                                                     #        0xee2a0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xee2a0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xee2a2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xee2a6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xee2a9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xee2ab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xee2af  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xee2b1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xee2b3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xee2b8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xee2b9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xee2bc  1      OPC=nop            
  nop                                                                         #  44    0xee2bd  1      OPC=nop            
  nop                                                                         #  45    0xee2be  1      OPC=nop            
  nop                                                                         #  46    0xee2bf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  47    0xee2c0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xee2c5  1      OPC=nop            
  nop                                                                         #  49    0xee2c6  1      OPC=nop            
  nop                                                                         #  50    0xee2c7  1      OPC=nop            
  nop                                                                         #  51    0xee2c8  1      OPC=nop            
  nop                                                                         #  52    0xee2c9  1      OPC=nop            
  nop                                                                         #  53    0xee2ca  1      OPC=nop            
  nop                                                                         #  54    0xee2cb  1      OPC=nop            
  nop                                                                         #  55    0xee2cc  1      OPC=nop            
  nop                                                                         #  56    0xee2cd  1      OPC=nop            
  nop                                                                         #  57    0xee2ce  1      OPC=nop            
  nop                                                                         #  58    0xee2cf  1      OPC=nop            
  nop                                                                         #  59    0xee2d0  1      OPC=nop            
  nop                                                                         #  60    0xee2d1  1      OPC=nop            
  nop                                                                         #  61    0xee2d2  1      OPC=nop            
  nop                                                                         #  62    0xee2d3  1      OPC=nop            
  nop                                                                         #  63    0xee2d4  1      OPC=nop            
  nop                                                                         #  64    0xee2d5  1      OPC=nop            
  nop                                                                         #  65    0xee2d6  1      OPC=nop            
  nop                                                                         #  66    0xee2d7  1      OPC=nop            
  nop                                                                         #  67    0xee2d8  1      OPC=nop            
  nop                                                                         #  68    0xee2d9  1      OPC=nop            
  nop                                                                         #  69    0xee2da  1      OPC=nop            
  nop                                                                         #  70    0xee2db  1      OPC=nop            
  nop                                                                         #  71    0xee2dc  1      OPC=nop            
  nop                                                                         #  72    0xee2dd  1      OPC=nop            
  nop                                                                         #  73    0xee2de  1      OPC=nop            
  nop                                                                         #  74    0xee2df  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

