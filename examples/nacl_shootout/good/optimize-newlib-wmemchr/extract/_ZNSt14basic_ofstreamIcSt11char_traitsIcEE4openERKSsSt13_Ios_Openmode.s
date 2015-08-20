  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12e460
#! rip-offset  0xee460
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xee460  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xee460  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xee462  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xee463  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xee465  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xee467  4      OPC=movl_r32_m32   
  leal 0x4(%rbx), %edi                                                        #  6     0xee46b  3      OPC=leal_r32_m16   
  orl $0x10, %edx                                                             #  7     0xee46e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xee471  1      OPC=nop            
  nop                                                                         #  9     0xee472  1      OPC=nop            
  nop                                                                         #  10    0xee473  1      OPC=nop            
  nop                                                                         #  11    0xee474  1      OPC=nop            
  nop                                                                         #  12    0xee475  1      OPC=nop            
  nop                                                                         #  13    0xee476  1      OPC=nop            
  nop                                                                         #  14    0xee477  1      OPC=nop            
  nop                                                                         #  15    0xee478  1      OPC=nop            
  nop                                                                         #  16    0xee479  1      OPC=nop            
  nop                                                                         #  17    0xee47a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xee47b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xee480  2      OPC=testl_r32_r32  
  je .L_ee4a0                                                                 #  20    0xee482  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xee484  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xee486  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xee48a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xee48c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xee48f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xee491  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xee495  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xee497  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  29    0xee498  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xee49d  1      OPC=nop            
  nop                                                                         #  31    0xee49e  1      OPC=nop            
  nop                                                                         #  32    0xee49f  1      OPC=nop            
.L_ee4a0:                                                                     #        0xee4a0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xee4a0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xee4a2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xee4a6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xee4a9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xee4ab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xee4af  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xee4b1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xee4b3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xee4b8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xee4b9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xee4bc  1      OPC=nop            
  nop                                                                         #  44    0xee4bd  1      OPC=nop            
  nop                                                                         #  45    0xee4be  1      OPC=nop            
  nop                                                                         #  46    0xee4bf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  47    0xee4c0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xee4c5  1      OPC=nop            
  nop                                                                         #  49    0xee4c6  1      OPC=nop            
  nop                                                                         #  50    0xee4c7  1      OPC=nop            
  nop                                                                         #  51    0xee4c8  1      OPC=nop            
  nop                                                                         #  52    0xee4c9  1      OPC=nop            
  nop                                                                         #  53    0xee4ca  1      OPC=nop            
  nop                                                                         #  54    0xee4cb  1      OPC=nop            
  nop                                                                         #  55    0xee4cc  1      OPC=nop            
  nop                                                                         #  56    0xee4cd  1      OPC=nop            
  nop                                                                         #  57    0xee4ce  1      OPC=nop            
  nop                                                                         #  58    0xee4cf  1      OPC=nop            
  nop                                                                         #  59    0xee4d0  1      OPC=nop            
  nop                                                                         #  60    0xee4d1  1      OPC=nop            
  nop                                                                         #  61    0xee4d2  1      OPC=nop            
  nop                                                                         #  62    0xee4d3  1      OPC=nop            
  nop                                                                         #  63    0xee4d4  1      OPC=nop            
  nop                                                                         #  64    0xee4d5  1      OPC=nop            
  nop                                                                         #  65    0xee4d6  1      OPC=nop            
  nop                                                                         #  66    0xee4d7  1      OPC=nop            
  nop                                                                         #  67    0xee4d8  1      OPC=nop            
  nop                                                                         #  68    0xee4d9  1      OPC=nop            
  nop                                                                         #  69    0xee4da  1      OPC=nop            
  nop                                                                         #  70    0xee4db  1      OPC=nop            
  nop                                                                         #  71    0xee4dc  1      OPC=nop            
  nop                                                                         #  72    0xee4dd  1      OPC=nop            
  nop                                                                         #  73    0xee4de  1      OPC=nop            
  nop                                                                         #  74    0xee4df  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

