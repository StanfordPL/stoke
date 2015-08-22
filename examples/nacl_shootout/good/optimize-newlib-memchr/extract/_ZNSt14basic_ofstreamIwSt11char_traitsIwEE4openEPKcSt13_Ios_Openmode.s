  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133ac0
#! rip-offset  0xf3ac0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf3ac0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3ac0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3ac1  2      OPC=movl_r32_r32   
  orl $0x10, %edx                                                             #  3     0xf3ac3  3      OPC=orl_r32_imm8   
  leal 0x4(%rbx), %edi                                                        #  4     0xf3ac6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xf3ac9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xf3acb  1      OPC=nop            
  nop                                                                         #  7     0xf3acc  1      OPC=nop            
  nop                                                                         #  8     0xf3acd  1      OPC=nop            
  nop                                                                         #  9     0xf3ace  1      OPC=nop            
  nop                                                                         #  10    0xf3acf  1      OPC=nop            
  nop                                                                         #  11    0xf3ad0  1      OPC=nop            
  nop                                                                         #  12    0xf3ad1  1      OPC=nop            
  nop                                                                         #  13    0xf3ad2  1      OPC=nop            
  nop                                                                         #  14    0xf3ad3  1      OPC=nop            
  nop                                                                         #  15    0xf3ad4  1      OPC=nop            
  nop                                                                         #  16    0xf3ad5  1      OPC=nop            
  nop                                                                         #  17    0xf3ad6  1      OPC=nop            
  nop                                                                         #  18    0xf3ad7  1      OPC=nop            
  nop                                                                         #  19    0xf3ad8  1      OPC=nop            
  nop                                                                         #  20    0xf3ad9  1      OPC=nop            
  nop                                                                         #  21    0xf3ada  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf3adb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xf3ae0  2      OPC=testl_r32_r32  
  je .L_f3b00                                                                 #  24    0xf3ae2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xf3ae4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf3ae6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xf3aea  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xf3aec  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xf3aef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xf3af1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xf3af5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xf3af7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf3af8  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xf3afd  1      OPC=nop            
  nop                                                                         #  35    0xf3afe  1      OPC=nop            
  nop                                                                         #  36    0xf3aff  1      OPC=nop            
.L_f3b00:                                                                     #        0xf3b00  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xf3b00  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf3b02  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xf3b06  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xf3b09  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xf3b0b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xf3b0f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xf3b11  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf3b13  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xf3b18  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xf3b19  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xf3b1c  1      OPC=nop            
  nop                                                                         #  48    0xf3b1d  1      OPC=nop            
  nop                                                                         #  49    0xf3b1e  1      OPC=nop            
  nop                                                                         #  50    0xf3b1f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf3b20  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xf3b25  1      OPC=nop            
  nop                                                                         #  53    0xf3b26  1      OPC=nop            
  nop                                                                         #  54    0xf3b27  1      OPC=nop            
  nop                                                                         #  55    0xf3b28  1      OPC=nop            
  nop                                                                         #  56    0xf3b29  1      OPC=nop            
  nop                                                                         #  57    0xf3b2a  1      OPC=nop            
  nop                                                                         #  58    0xf3b2b  1      OPC=nop            
  nop                                                                         #  59    0xf3b2c  1      OPC=nop            
  nop                                                                         #  60    0xf3b2d  1      OPC=nop            
  nop                                                                         #  61    0xf3b2e  1      OPC=nop            
  nop                                                                         #  62    0xf3b2f  1      OPC=nop            
  nop                                                                         #  63    0xf3b30  1      OPC=nop            
  nop                                                                         #  64    0xf3b31  1      OPC=nop            
  nop                                                                         #  65    0xf3b32  1      OPC=nop            
  nop                                                                         #  66    0xf3b33  1      OPC=nop            
  nop                                                                         #  67    0xf3b34  1      OPC=nop            
  nop                                                                         #  68    0xf3b35  1      OPC=nop            
  nop                                                                         #  69    0xf3b36  1      OPC=nop            
  nop                                                                         #  70    0xf3b37  1      OPC=nop            
  nop                                                                         #  71    0xf3b38  1      OPC=nop            
  nop                                                                         #  72    0xf3b39  1      OPC=nop            
  nop                                                                         #  73    0xf3b3a  1      OPC=nop            
  nop                                                                         #  74    0xf3b3b  1      OPC=nop            
  nop                                                                         #  75    0xf3b3c  1      OPC=nop            
  nop                                                                         #  76    0xf3b3d  1      OPC=nop            
  nop                                                                         #  77    0xf3b3e  1      OPC=nop            
  nop                                                                         #  78    0xf3b3f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

