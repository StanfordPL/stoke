  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x1330a0
#! rip-offset  0xf30a0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf30a0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf30a0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf30a1  2      OPC=movl_r32_r32   
  orl $0x10, %edx                                                             #  3     0xf30a3  3      OPC=orl_r32_imm8   
  leal 0x4(%rbx), %edi                                                        #  4     0xf30a6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xf30a9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xf30ab  1      OPC=nop            
  nop                                                                         #  7     0xf30ac  1      OPC=nop            
  nop                                                                         #  8     0xf30ad  1      OPC=nop            
  nop                                                                         #  9     0xf30ae  1      OPC=nop            
  nop                                                                         #  10    0xf30af  1      OPC=nop            
  nop                                                                         #  11    0xf30b0  1      OPC=nop            
  nop                                                                         #  12    0xf30b1  1      OPC=nop            
  nop                                                                         #  13    0xf30b2  1      OPC=nop            
  nop                                                                         #  14    0xf30b3  1      OPC=nop            
  nop                                                                         #  15    0xf30b4  1      OPC=nop            
  nop                                                                         #  16    0xf30b5  1      OPC=nop            
  nop                                                                         #  17    0xf30b6  1      OPC=nop            
  nop                                                                         #  18    0xf30b7  1      OPC=nop            
  nop                                                                         #  19    0xf30b8  1      OPC=nop            
  nop                                                                         #  20    0xf30b9  1      OPC=nop            
  nop                                                                         #  21    0xf30ba  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf30bb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xf30c0  2      OPC=testl_r32_r32  
  je .L_f30e0                                                                 #  24    0xf30c2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xf30c4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf30c6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xf30ca  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xf30cc  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xf30cf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xf30d1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xf30d5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xf30d7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf30d8  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xf30dd  1      OPC=nop            
  nop                                                                         #  35    0xf30de  1      OPC=nop            
  nop                                                                         #  36    0xf30df  1      OPC=nop            
.L_f30e0:                                                                     #        0xf30e0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xf30e0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf30e2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xf30e6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xf30e9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xf30eb  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xf30ef  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xf30f1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf30f3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xf30f8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xf30f9  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xf30fc  1      OPC=nop            
  nop                                                                         #  48    0xf30fd  1      OPC=nop            
  nop                                                                         #  49    0xf30fe  1      OPC=nop            
  nop                                                                         #  50    0xf30ff  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf3100  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xf3105  1      OPC=nop            
  nop                                                                         #  53    0xf3106  1      OPC=nop            
  nop                                                                         #  54    0xf3107  1      OPC=nop            
  nop                                                                         #  55    0xf3108  1      OPC=nop            
  nop                                                                         #  56    0xf3109  1      OPC=nop            
  nop                                                                         #  57    0xf310a  1      OPC=nop            
  nop                                                                         #  58    0xf310b  1      OPC=nop            
  nop                                                                         #  59    0xf310c  1      OPC=nop            
  nop                                                                         #  60    0xf310d  1      OPC=nop            
  nop                                                                         #  61    0xf310e  1      OPC=nop            
  nop                                                                         #  62    0xf310f  1      OPC=nop            
  nop                                                                         #  63    0xf3110  1      OPC=nop            
  nop                                                                         #  64    0xf3111  1      OPC=nop            
  nop                                                                         #  65    0xf3112  1      OPC=nop            
  nop                                                                         #  66    0xf3113  1      OPC=nop            
  nop                                                                         #  67    0xf3114  1      OPC=nop            
  nop                                                                         #  68    0xf3115  1      OPC=nop            
  nop                                                                         #  69    0xf3116  1      OPC=nop            
  nop                                                                         #  70    0xf3117  1      OPC=nop            
  nop                                                                         #  71    0xf3118  1      OPC=nop            
  nop                                                                         #  72    0xf3119  1      OPC=nop            
  nop                                                                         #  73    0xf311a  1      OPC=nop            
  nop                                                                         #  74    0xf311b  1      OPC=nop            
  nop                                                                         #  75    0xf311c  1      OPC=nop            
  nop                                                                         #  76    0xf311d  1      OPC=nop            
  nop                                                                         #  77    0xf311e  1      OPC=nop            
  nop                                                                         #  78    0xf311f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

