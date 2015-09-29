  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12ec00
#! rip-offset  0xeec00
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xeec00  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xeec00  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xeec01  2      OPC=movl_r32_r32   
  orl $0x10, %edx                                                             #  3     0xeec03  3      OPC=orl_r32_imm8   
  leal 0x4(%rbx), %edi                                                        #  4     0xeec06  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xeec09  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xeec0b  1      OPC=nop            
  nop                                                                         #  7     0xeec0c  1      OPC=nop            
  nop                                                                         #  8     0xeec0d  1      OPC=nop            
  nop                                                                         #  9     0xeec0e  1      OPC=nop            
  nop                                                                         #  10    0xeec0f  1      OPC=nop            
  nop                                                                         #  11    0xeec10  1      OPC=nop            
  nop                                                                         #  12    0xeec11  1      OPC=nop            
  nop                                                                         #  13    0xeec12  1      OPC=nop            
  nop                                                                         #  14    0xeec13  1      OPC=nop            
  nop                                                                         #  15    0xeec14  1      OPC=nop            
  nop                                                                         #  16    0xeec15  1      OPC=nop            
  nop                                                                         #  17    0xeec16  1      OPC=nop            
  nop                                                                         #  18    0xeec17  1      OPC=nop            
  nop                                                                         #  19    0xeec18  1      OPC=nop            
  nop                                                                         #  20    0xeec19  1      OPC=nop            
  nop                                                                         #  21    0xeec1a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xeec1b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xeec20  2      OPC=testl_r32_r32  
  je .L_eec40                                                                 #  24    0xeec22  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xeec24  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xeec26  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xeec2a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xeec2c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xeec2f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xeec31  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xeec35  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xeec37  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xeec38  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xeec3d  1      OPC=nop            
  nop                                                                         #  35    0xeec3e  1      OPC=nop            
  nop                                                                         #  36    0xeec3f  1      OPC=nop            
.L_eec40:                                                                     #        0xeec40  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xeec40  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xeec42  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xeec46  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xeec49  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xeec4b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xeec4f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xeec51  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xeec53  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xeec58  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xeec59  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xeec5c  1      OPC=nop            
  nop                                                                         #  48    0xeec5d  1      OPC=nop            
  nop                                                                         #  49    0xeec5e  1      OPC=nop            
  nop                                                                         #  50    0xeec5f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xeec60  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xeec65  1      OPC=nop            
  nop                                                                         #  53    0xeec66  1      OPC=nop            
  nop                                                                         #  54    0xeec67  1      OPC=nop            
  nop                                                                         #  55    0xeec68  1      OPC=nop            
  nop                                                                         #  56    0xeec69  1      OPC=nop            
  nop                                                                         #  57    0xeec6a  1      OPC=nop            
  nop                                                                         #  58    0xeec6b  1      OPC=nop            
  nop                                                                         #  59    0xeec6c  1      OPC=nop            
  nop                                                                         #  60    0xeec6d  1      OPC=nop            
  nop                                                                         #  61    0xeec6e  1      OPC=nop            
  nop                                                                         #  62    0xeec6f  1      OPC=nop            
  nop                                                                         #  63    0xeec70  1      OPC=nop            
  nop                                                                         #  64    0xeec71  1      OPC=nop            
  nop                                                                         #  65    0xeec72  1      OPC=nop            
  nop                                                                         #  66    0xeec73  1      OPC=nop            
  nop                                                                         #  67    0xeec74  1      OPC=nop            
  nop                                                                         #  68    0xeec75  1      OPC=nop            
  nop                                                                         #  69    0xeec76  1      OPC=nop            
  nop                                                                         #  70    0xeec77  1      OPC=nop            
  nop                                                                         #  71    0xeec78  1      OPC=nop            
  nop                                                                         #  72    0xeec79  1      OPC=nop            
  nop                                                                         #  73    0xeec7a  1      OPC=nop            
  nop                                                                         #  74    0xeec7b  1      OPC=nop            
  nop                                                                         #  75    0xeec7c  1      OPC=nop            
  nop                                                                         #  76    0xeec7d  1      OPC=nop            
  nop                                                                         #  77    0xeec7e  1      OPC=nop            
  nop                                                                         #  78    0xeec7f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

