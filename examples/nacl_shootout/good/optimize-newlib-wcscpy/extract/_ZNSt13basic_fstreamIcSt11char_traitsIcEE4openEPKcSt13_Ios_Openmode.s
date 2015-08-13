  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12e0e0
#! rip-offset  0xee0e0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:         #        0xee0e0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xee0e0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xee0e1  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  3     0xee0e3  2      OPC=movl_r32_r32   
  leal 0xc(%rbx), %edi                                                        #  4     0xee0e5  3      OPC=leal_r32_m16   
  nop                                                                         #  5     0xee0e8  1      OPC=nop            
  nop                                                                         #  6     0xee0e9  1      OPC=nop            
  nop                                                                         #  7     0xee0ea  1      OPC=nop            
  nop                                                                         #  8     0xee0eb  1      OPC=nop            
  nop                                                                         #  9     0xee0ec  1      OPC=nop            
  nop                                                                         #  10    0xee0ed  1      OPC=nop            
  nop                                                                         #  11    0xee0ee  1      OPC=nop            
  nop                                                                         #  12    0xee0ef  1      OPC=nop            
  nop                                                                         #  13    0xee0f0  1      OPC=nop            
  nop                                                                         #  14    0xee0f1  1      OPC=nop            
  nop                                                                         #  15    0xee0f2  1      OPC=nop            
  nop                                                                         #  16    0xee0f3  1      OPC=nop            
  nop                                                                         #  17    0xee0f4  1      OPC=nop            
  nop                                                                         #  18    0xee0f5  1      OPC=nop            
  nop                                                                         #  19    0xee0f6  1      OPC=nop            
  nop                                                                         #  20    0xee0f7  1      OPC=nop            
  nop                                                                         #  21    0xee0f8  1      OPC=nop            
  nop                                                                         #  22    0xee0f9  1      OPC=nop            
  nop                                                                         #  23    0xee0fa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  24    0xee0fb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  25    0xee100  2      OPC=testl_r32_r32  
  je .L_ee120                                                                 #  26    0xee102  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  27    0xee104  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  28    0xee106  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  29    0xee10a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  30    0xee10c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  31    0xee10f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  32    0xee111  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  33    0xee115  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  34    0xee117  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  35    0xee118  5      OPC=jmpq_label_1   
  nop                                                                         #  36    0xee11d  1      OPC=nop            
  nop                                                                         #  37    0xee11e  1      OPC=nop            
  nop                                                                         #  38    0xee11f  1      OPC=nop            
.L_ee120:                                                                     #        0xee120  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  39    0xee120  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  40    0xee122  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  41    0xee126  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  42    0xee129  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  43    0xee12b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  44    0xee12f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  45    0xee131  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xee133  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  47    0xee138  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  48    0xee139  3      OPC=orl_r32_imm8   
  nop                                                                         #  49    0xee13c  1      OPC=nop            
  nop                                                                         #  50    0xee13d  1      OPC=nop            
  nop                                                                         #  51    0xee13e  1      OPC=nop            
  nop                                                                         #  52    0xee13f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  53    0xee140  5      OPC=jmpq_label_1   
  nop                                                                         #  54    0xee145  1      OPC=nop            
  nop                                                                         #  55    0xee146  1      OPC=nop            
  nop                                                                         #  56    0xee147  1      OPC=nop            
  nop                                                                         #  57    0xee148  1      OPC=nop            
  nop                                                                         #  58    0xee149  1      OPC=nop            
  nop                                                                         #  59    0xee14a  1      OPC=nop            
  nop                                                                         #  60    0xee14b  1      OPC=nop            
  nop                                                                         #  61    0xee14c  1      OPC=nop            
  nop                                                                         #  62    0xee14d  1      OPC=nop            
  nop                                                                         #  63    0xee14e  1      OPC=nop            
  nop                                                                         #  64    0xee14f  1      OPC=nop            
  nop                                                                         #  65    0xee150  1      OPC=nop            
  nop                                                                         #  66    0xee151  1      OPC=nop            
  nop                                                                         #  67    0xee152  1      OPC=nop            
  nop                                                                         #  68    0xee153  1      OPC=nop            
  nop                                                                         #  69    0xee154  1      OPC=nop            
  nop                                                                         #  70    0xee155  1      OPC=nop            
  nop                                                                         #  71    0xee156  1      OPC=nop            
  nop                                                                         #  72    0xee157  1      OPC=nop            
  nop                                                                         #  73    0xee158  1      OPC=nop            
  nop                                                                         #  74    0xee159  1      OPC=nop            
  nop                                                                         #  75    0xee15a  1      OPC=nop            
  nop                                                                         #  76    0xee15b  1      OPC=nop            
  nop                                                                         #  77    0xee15c  1      OPC=nop            
  nop                                                                         #  78    0xee15d  1      OPC=nop            
  nop                                                                         #  79    0xee15e  1      OPC=nop            
  nop                                                                         #  80    0xee15f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

