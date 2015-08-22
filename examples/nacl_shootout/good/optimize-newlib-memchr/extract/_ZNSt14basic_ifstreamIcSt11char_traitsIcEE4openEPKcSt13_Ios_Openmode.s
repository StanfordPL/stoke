  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x12ed00
#! rip-offset  0xeed00
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode:        #        0xeed00  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xeed00  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xeed01  2      OPC=movl_r32_r32   
  orl $0x8, %edx                                                              #  3     0xeed03  3      OPC=orl_r32_imm8   
  leal 0x8(%rbx), %edi                                                        #  4     0xeed06  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xeed09  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xeed0b  1      OPC=nop            
  nop                                                                         #  7     0xeed0c  1      OPC=nop            
  nop                                                                         #  8     0xeed0d  1      OPC=nop            
  nop                                                                         #  9     0xeed0e  1      OPC=nop            
  nop                                                                         #  10    0xeed0f  1      OPC=nop            
  nop                                                                         #  11    0xeed10  1      OPC=nop            
  nop                                                                         #  12    0xeed11  1      OPC=nop            
  nop                                                                         #  13    0xeed12  1      OPC=nop            
  nop                                                                         #  14    0xeed13  1      OPC=nop            
  nop                                                                         #  15    0xeed14  1      OPC=nop            
  nop                                                                         #  16    0xeed15  1      OPC=nop            
  nop                                                                         #  17    0xeed16  1      OPC=nop            
  nop                                                                         #  18    0xeed17  1      OPC=nop            
  nop                                                                         #  19    0xeed18  1      OPC=nop            
  nop                                                                         #  20    0xeed19  1      OPC=nop            
  nop                                                                         #  21    0xeed1a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  22    0xeed1b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xeed20  2      OPC=testl_r32_r32  
  je .L_eed40                                                                 #  24    0xeed22  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xeed24  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xeed26  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xeed2a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xeed2c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xeed2f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xeed31  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xeed35  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xeed37  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  33    0xeed38  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xeed3d  1      OPC=nop            
  nop                                                                         #  35    0xeed3e  1      OPC=nop            
  nop                                                                         #  36    0xeed3f  1      OPC=nop            
.L_eed40:                                                                     #        0xeed40  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xeed40  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xeed42  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xeed46  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xeed49  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xeed4b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xeed4f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xeed51  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xeed53  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xeed58  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xeed59  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xeed5c  1      OPC=nop            
  nop                                                                         #  48    0xeed5d  1      OPC=nop            
  nop                                                                         #  49    0xeed5e  1      OPC=nop            
  nop                                                                         #  50    0xeed5f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  51    0xeed60  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xeed65  1      OPC=nop            
  nop                                                                         #  53    0xeed66  1      OPC=nop            
  nop                                                                         #  54    0xeed67  1      OPC=nop            
  nop                                                                         #  55    0xeed68  1      OPC=nop            
  nop                                                                         #  56    0xeed69  1      OPC=nop            
  nop                                                                         #  57    0xeed6a  1      OPC=nop            
  nop                                                                         #  58    0xeed6b  1      OPC=nop            
  nop                                                                         #  59    0xeed6c  1      OPC=nop            
  nop                                                                         #  60    0xeed6d  1      OPC=nop            
  nop                                                                         #  61    0xeed6e  1      OPC=nop            
  nop                                                                         #  62    0xeed6f  1      OPC=nop            
  nop                                                                         #  63    0xeed70  1      OPC=nop            
  nop                                                                         #  64    0xeed71  1      OPC=nop            
  nop                                                                         #  65    0xeed72  1      OPC=nop            
  nop                                                                         #  66    0xeed73  1      OPC=nop            
  nop                                                                         #  67    0xeed74  1      OPC=nop            
  nop                                                                         #  68    0xeed75  1      OPC=nop            
  nop                                                                         #  69    0xeed76  1      OPC=nop            
  nop                                                                         #  70    0xeed77  1      OPC=nop            
  nop                                                                         #  71    0xeed78  1      OPC=nop            
  nop                                                                         #  72    0xeed79  1      OPC=nop            
  nop                                                                         #  73    0xeed7a  1      OPC=nop            
  nop                                                                         #  74    0xeed7b  1      OPC=nop            
  nop                                                                         #  75    0xeed7c  1      OPC=nop            
  nop                                                                         #  76    0xeed7d  1      OPC=nop            
  nop                                                                         #  77    0xeed7e  1      OPC=nop            
  nop                                                                         #  78    0xeed7f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode

