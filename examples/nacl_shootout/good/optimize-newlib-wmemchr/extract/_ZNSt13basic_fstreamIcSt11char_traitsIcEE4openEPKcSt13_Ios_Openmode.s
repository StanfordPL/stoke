  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12e3e0
#! rip-offset  0xee3e0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:         #        0xee3e0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xee3e0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xee3e1  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  3     0xee3e3  2      OPC=movl_r32_r32   
  leal 0xc(%rbx), %edi                                                        #  4     0xee3e5  3      OPC=leal_r32_m16   
  nop                                                                         #  5     0xee3e8  1      OPC=nop            
  nop                                                                         #  6     0xee3e9  1      OPC=nop            
  nop                                                                         #  7     0xee3ea  1      OPC=nop            
  nop                                                                         #  8     0xee3eb  1      OPC=nop            
  nop                                                                         #  9     0xee3ec  1      OPC=nop            
  nop                                                                         #  10    0xee3ed  1      OPC=nop            
  nop                                                                         #  11    0xee3ee  1      OPC=nop            
  nop                                                                         #  12    0xee3ef  1      OPC=nop            
  nop                                                                         #  13    0xee3f0  1      OPC=nop            
  nop                                                                         #  14    0xee3f1  1      OPC=nop            
  nop                                                                         #  15    0xee3f2  1      OPC=nop            
  nop                                                                         #  16    0xee3f3  1      OPC=nop            
  nop                                                                         #  17    0xee3f4  1      OPC=nop            
  nop                                                                         #  18    0xee3f5  1      OPC=nop            
  nop                                                                         #  19    0xee3f6  1      OPC=nop            
  nop                                                                         #  20    0xee3f7  1      OPC=nop            
  nop                                                                         #  21    0xee3f8  1      OPC=nop            
  nop                                                                         #  22    0xee3f9  1      OPC=nop            
  nop                                                                         #  23    0xee3fa  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  24    0xee3fb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  25    0xee400  2      OPC=testl_r32_r32  
  je .L_ee420                                                                 #  26    0xee402  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  27    0xee404  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  28    0xee406  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  29    0xee40a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  30    0xee40c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  31    0xee40f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  32    0xee411  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  33    0xee415  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  34    0xee417  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  35    0xee418  5      OPC=jmpq_label_1   
  nop                                                                         #  36    0xee41d  1      OPC=nop            
  nop                                                                         #  37    0xee41e  1      OPC=nop            
  nop                                                                         #  38    0xee41f  1      OPC=nop            
.L_ee420:                                                                     #        0xee420  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  39    0xee420  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  40    0xee422  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  41    0xee426  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  42    0xee429  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  43    0xee42b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  44    0xee42f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  45    0xee431  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xee433  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  47    0xee438  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  48    0xee439  3      OPC=orl_r32_imm8   
  nop                                                                         #  49    0xee43c  1      OPC=nop            
  nop                                                                         #  50    0xee43d  1      OPC=nop            
  nop                                                                         #  51    0xee43e  1      OPC=nop            
  nop                                                                         #  52    0xee43f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  53    0xee440  5      OPC=jmpq_label_1   
  nop                                                                         #  54    0xee445  1      OPC=nop            
  nop                                                                         #  55    0xee446  1      OPC=nop            
  nop                                                                         #  56    0xee447  1      OPC=nop            
  nop                                                                         #  57    0xee448  1      OPC=nop            
  nop                                                                         #  58    0xee449  1      OPC=nop            
  nop                                                                         #  59    0xee44a  1      OPC=nop            
  nop                                                                         #  60    0xee44b  1      OPC=nop            
  nop                                                                         #  61    0xee44c  1      OPC=nop            
  nop                                                                         #  62    0xee44d  1      OPC=nop            
  nop                                                                         #  63    0xee44e  1      OPC=nop            
  nop                                                                         #  64    0xee44f  1      OPC=nop            
  nop                                                                         #  65    0xee450  1      OPC=nop            
  nop                                                                         #  66    0xee451  1      OPC=nop            
  nop                                                                         #  67    0xee452  1      OPC=nop            
  nop                                                                         #  68    0xee453  1      OPC=nop            
  nop                                                                         #  69    0xee454  1      OPC=nop            
  nop                                                                         #  70    0xee455  1      OPC=nop            
  nop                                                                         #  71    0xee456  1      OPC=nop            
  nop                                                                         #  72    0xee457  1      OPC=nop            
  nop                                                                         #  73    0xee458  1      OPC=nop            
  nop                                                                         #  74    0xee459  1      OPC=nop            
  nop                                                                         #  75    0xee45a  1      OPC=nop            
  nop                                                                         #  76    0xee45b  1      OPC=nop            
  nop                                                                         #  77    0xee45c  1      OPC=nop            
  nop                                                                         #  78    0xee45d  1      OPC=nop            
  nop                                                                         #  79    0xee45e  1      OPC=nop            
  nop                                                                         #  80    0xee45f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

