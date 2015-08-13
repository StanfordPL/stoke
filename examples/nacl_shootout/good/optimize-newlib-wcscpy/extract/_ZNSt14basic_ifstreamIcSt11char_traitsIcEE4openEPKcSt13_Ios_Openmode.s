  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12e2e0
#! rip-offset  0xee2e0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xee2e0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xee2e0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xee2e1  2      OPC=movl_r32_r32   
  orl $0x8, %edx                                                              #  3     0xee2e3  3      OPC=orl_r32_imm8   
  leal 0x8(%rbx), %edi                                                        #  4     0xee2e6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xee2e9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xee2eb  1      OPC=nop            
  nop                                                                         #  7     0xee2ec  1      OPC=nop            
  nop                                                                         #  8     0xee2ed  1      OPC=nop            
  nop                                                                         #  9     0xee2ee  1      OPC=nop            
  nop                                                                         #  10    0xee2ef  1      OPC=nop            
  nop                                                                         #  11    0xee2f0  1      OPC=nop            
  nop                                                                         #  12    0xee2f1  1      OPC=nop            
  nop                                                                         #  13    0xee2f2  1      OPC=nop            
  nop                                                                         #  14    0xee2f3  1      OPC=nop            
  nop                                                                         #  15    0xee2f4  1      OPC=nop            
  nop                                                                         #  16    0xee2f5  1      OPC=nop            
  nop                                                                         #  17    0xee2f6  1      OPC=nop            
  nop                                                                         #  18    0xee2f7  1      OPC=nop            
  nop                                                                         #  19    0xee2f8  1      OPC=nop            
  nop                                                                         #  20    0xee2f9  1      OPC=nop            
  nop                                                                         #  21    0xee2fa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xee2fb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xee300  2      OPC=testl_r32_r32  
  je .L_ee320                                                                 #  24    0xee302  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xee304  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xee306  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xee30a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xee30c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xee30f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xee311  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xee315  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xee317  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xee318  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xee31d  1      OPC=nop            
  nop                                                                         #  35    0xee31e  1      OPC=nop            
  nop                                                                         #  36    0xee31f  1      OPC=nop            
.L_ee320:                                                                     #        0xee320  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xee320  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xee322  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xee326  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xee329  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xee32b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xee32f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xee331  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xee333  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xee338  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xee339  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xee33c  1      OPC=nop            
  nop                                                                         #  48    0xee33d  1      OPC=nop            
  nop                                                                         #  49    0xee33e  1      OPC=nop            
  nop                                                                         #  50    0xee33f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xee340  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xee345  1      OPC=nop            
  nop                                                                         #  53    0xee346  1      OPC=nop            
  nop                                                                         #  54    0xee347  1      OPC=nop            
  nop                                                                         #  55    0xee348  1      OPC=nop            
  nop                                                                         #  56    0xee349  1      OPC=nop            
  nop                                                                         #  57    0xee34a  1      OPC=nop            
  nop                                                                         #  58    0xee34b  1      OPC=nop            
  nop                                                                         #  59    0xee34c  1      OPC=nop            
  nop                                                                         #  60    0xee34d  1      OPC=nop            
  nop                                                                         #  61    0xee34e  1      OPC=nop            
  nop                                                                         #  62    0xee34f  1      OPC=nop            
  nop                                                                         #  63    0xee350  1      OPC=nop            
  nop                                                                         #  64    0xee351  1      OPC=nop            
  nop                                                                         #  65    0xee352  1      OPC=nop            
  nop                                                                         #  66    0xee353  1      OPC=nop            
  nop                                                                         #  67    0xee354  1      OPC=nop            
  nop                                                                         #  68    0xee355  1      OPC=nop            
  nop                                                                         #  69    0xee356  1      OPC=nop            
  nop                                                                         #  70    0xee357  1      OPC=nop            
  nop                                                                         #  71    0xee358  1      OPC=nop            
  nop                                                                         #  72    0xee359  1      OPC=nop            
  nop                                                                         #  73    0xee35a  1      OPC=nop            
  nop                                                                         #  74    0xee35b  1      OPC=nop            
  nop                                                                         #  75    0xee35c  1      OPC=nop            
  nop                                                                         #  76    0xee35d  1      OPC=nop            
  nop                                                                         #  77    0xee35e  1      OPC=nop            
  nop                                                                         #  78    0xee35f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

