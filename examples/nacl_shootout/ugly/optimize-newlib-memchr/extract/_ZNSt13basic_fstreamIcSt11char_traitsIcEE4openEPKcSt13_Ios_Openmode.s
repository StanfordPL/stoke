  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12eb00
#! rip-offset  0xeeb00
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:         #        0xeeb00  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xeeb00  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xeeb01  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  3     0xeeb03  2      OPC=movl_r32_r32   
  leal 0xc(%rbx), %edi                                                        #  4     0xeeb05  3      OPC=leal_r32_m16   
  nop                                                                         #  5     0xeeb08  1      OPC=nop            
  nop                                                                         #  6     0xeeb09  1      OPC=nop            
  nop                                                                         #  7     0xeeb0a  1      OPC=nop            
  nop                                                                         #  8     0xeeb0b  1      OPC=nop            
  nop                                                                         #  9     0xeeb0c  1      OPC=nop            
  nop                                                                         #  10    0xeeb0d  1      OPC=nop            
  nop                                                                         #  11    0xeeb0e  1      OPC=nop            
  nop                                                                         #  12    0xeeb0f  1      OPC=nop            
  nop                                                                         #  13    0xeeb10  1      OPC=nop            
  nop                                                                         #  14    0xeeb11  1      OPC=nop            
  nop                                                                         #  15    0xeeb12  1      OPC=nop            
  nop                                                                         #  16    0xeeb13  1      OPC=nop            
  nop                                                                         #  17    0xeeb14  1      OPC=nop            
  nop                                                                         #  18    0xeeb15  1      OPC=nop            
  nop                                                                         #  19    0xeeb16  1      OPC=nop            
  nop                                                                         #  20    0xeeb17  1      OPC=nop            
  nop                                                                         #  21    0xeeb18  1      OPC=nop            
  nop                                                                         #  22    0xeeb19  1      OPC=nop            
  nop                                                                         #  23    0xeeb1a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  24    0xeeb1b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  25    0xeeb20  2      OPC=testl_r32_r32  
  je .L_eeb40                                                                 #  26    0xeeb22  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  27    0xeeb24  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  28    0xeeb26  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  29    0xeeb2a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  30    0xeeb2c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  31    0xeeb2f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  32    0xeeb31  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  33    0xeeb35  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  34    0xeeb37  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  35    0xeeb38  5      OPC=jmpq_label_1   
  nop                                                                         #  36    0xeeb3d  1      OPC=nop            
  nop                                                                         #  37    0xeeb3e  1      OPC=nop            
  nop                                                                         #  38    0xeeb3f  1      OPC=nop            
.L_eeb40:                                                                     #        0xeeb40  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  39    0xeeb40  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  40    0xeeb42  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  41    0xeeb46  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  42    0xeeb49  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  43    0xeeb4b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  44    0xeeb4f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  45    0xeeb51  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xeeb53  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  47    0xeeb58  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  48    0xeeb59  3      OPC=orl_r32_imm8   
  nop                                                                         #  49    0xeeb5c  1      OPC=nop            
  nop                                                                         #  50    0xeeb5d  1      OPC=nop            
  nop                                                                         #  51    0xeeb5e  1      OPC=nop            
  nop                                                                         #  52    0xeeb5f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  53    0xeeb60  5      OPC=jmpq_label_1   
  nop                                                                         #  54    0xeeb65  1      OPC=nop            
  nop                                                                         #  55    0xeeb66  1      OPC=nop            
  nop                                                                         #  56    0xeeb67  1      OPC=nop            
  nop                                                                         #  57    0xeeb68  1      OPC=nop            
  nop                                                                         #  58    0xeeb69  1      OPC=nop            
  nop                                                                         #  59    0xeeb6a  1      OPC=nop            
  nop                                                                         #  60    0xeeb6b  1      OPC=nop            
  nop                                                                         #  61    0xeeb6c  1      OPC=nop            
  nop                                                                         #  62    0xeeb6d  1      OPC=nop            
  nop                                                                         #  63    0xeeb6e  1      OPC=nop            
  nop                                                                         #  64    0xeeb6f  1      OPC=nop            
  nop                                                                         #  65    0xeeb70  1      OPC=nop            
  nop                                                                         #  66    0xeeb71  1      OPC=nop            
  nop                                                                         #  67    0xeeb72  1      OPC=nop            
  nop                                                                         #  68    0xeeb73  1      OPC=nop            
  nop                                                                         #  69    0xeeb74  1      OPC=nop            
  nop                                                                         #  70    0xeeb75  1      OPC=nop            
  nop                                                                         #  71    0xeeb76  1      OPC=nop            
  nop                                                                         #  72    0xeeb77  1      OPC=nop            
  nop                                                                         #  73    0xeeb78  1      OPC=nop            
  nop                                                                         #  74    0xeeb79  1      OPC=nop            
  nop                                                                         #  75    0xeeb7a  1      OPC=nop            
  nop                                                                         #  76    0xeeb7b  1      OPC=nop            
  nop                                                                         #  77    0xeeb7c  1      OPC=nop            
  nop                                                                         #  78    0xeeb7d  1      OPC=nop            
  nop                                                                         #  79    0xeeb7e  1      OPC=nop            
  nop                                                                         #  80    0xeeb7f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

