  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12e5e0
#! rip-offset  0xee5e0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xee5e0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xee5e0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xee5e1  2      OPC=movl_r32_r32   
  orl $0x8, %edx                                                              #  3     0xee5e3  3      OPC=orl_r32_imm8   
  leal 0x8(%rbx), %edi                                                        #  4     0xee5e6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xee5e9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xee5eb  1      OPC=nop            
  nop                                                                         #  7     0xee5ec  1      OPC=nop            
  nop                                                                         #  8     0xee5ed  1      OPC=nop            
  nop                                                                         #  9     0xee5ee  1      OPC=nop            
  nop                                                                         #  10    0xee5ef  1      OPC=nop            
  nop                                                                         #  11    0xee5f0  1      OPC=nop            
  nop                                                                         #  12    0xee5f1  1      OPC=nop            
  nop                                                                         #  13    0xee5f2  1      OPC=nop            
  nop                                                                         #  14    0xee5f3  1      OPC=nop            
  nop                                                                         #  15    0xee5f4  1      OPC=nop            
  nop                                                                         #  16    0xee5f5  1      OPC=nop            
  nop                                                                         #  17    0xee5f6  1      OPC=nop            
  nop                                                                         #  18    0xee5f7  1      OPC=nop            
  nop                                                                         #  19    0xee5f8  1      OPC=nop            
  nop                                                                         #  20    0xee5f9  1      OPC=nop            
  nop                                                                         #  21    0xee5fa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xee5fb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xee600  2      OPC=testl_r32_r32  
  je .L_ee620                                                                 #  24    0xee602  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xee604  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xee606  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xee60a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xee60c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xee60f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xee611  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xee615  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xee617  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xee618  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xee61d  1      OPC=nop            
  nop                                                                         #  35    0xee61e  1      OPC=nop            
  nop                                                                         #  36    0xee61f  1      OPC=nop            
.L_ee620:                                                                     #        0xee620  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xee620  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xee622  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xee626  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xee629  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xee62b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xee62f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xee631  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xee633  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xee638  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xee639  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xee63c  1      OPC=nop            
  nop                                                                         #  48    0xee63d  1      OPC=nop            
  nop                                                                         #  49    0xee63e  1      OPC=nop            
  nop                                                                         #  50    0xee63f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xee640  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xee645  1      OPC=nop            
  nop                                                                         #  53    0xee646  1      OPC=nop            
  nop                                                                         #  54    0xee647  1      OPC=nop            
  nop                                                                         #  55    0xee648  1      OPC=nop            
  nop                                                                         #  56    0xee649  1      OPC=nop            
  nop                                                                         #  57    0xee64a  1      OPC=nop            
  nop                                                                         #  58    0xee64b  1      OPC=nop            
  nop                                                                         #  59    0xee64c  1      OPC=nop            
  nop                                                                         #  60    0xee64d  1      OPC=nop            
  nop                                                                         #  61    0xee64e  1      OPC=nop            
  nop                                                                         #  62    0xee64f  1      OPC=nop            
  nop                                                                         #  63    0xee650  1      OPC=nop            
  nop                                                                         #  64    0xee651  1      OPC=nop            
  nop                                                                         #  65    0xee652  1      OPC=nop            
  nop                                                                         #  66    0xee653  1      OPC=nop            
  nop                                                                         #  67    0xee654  1      OPC=nop            
  nop                                                                         #  68    0xee655  1      OPC=nop            
  nop                                                                         #  69    0xee656  1      OPC=nop            
  nop                                                                         #  70    0xee657  1      OPC=nop            
  nop                                                                         #  71    0xee658  1      OPC=nop            
  nop                                                                         #  72    0xee659  1      OPC=nop            
  nop                                                                         #  73    0xee65a  1      OPC=nop            
  nop                                                                         #  74    0xee65b  1      OPC=nop            
  nop                                                                         #  75    0xee65c  1      OPC=nop            
  nop                                                                         #  76    0xee65d  1      OPC=nop            
  nop                                                                         #  77    0xee65e  1      OPC=nop            
  nop                                                                         #  78    0xee65f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

