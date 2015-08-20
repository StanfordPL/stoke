  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x1335c0
#! rip-offset  0xf35c0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode:       #        0xf35c0  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xf35c0  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xf35c2  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xf35c3  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xf35c5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xf35c7  4      OPC=movl_r32_m32   
  leal 0x8(%rbx), %edi                                                        #  6     0xf35cb  3      OPC=leal_r32_m16   
  orl $0x8, %edx                                                              #  7     0xf35ce  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xf35d1  1      OPC=nop            
  nop                                                                         #  9     0xf35d2  1      OPC=nop            
  nop                                                                         #  10    0xf35d3  1      OPC=nop            
  nop                                                                         #  11    0xf35d4  1      OPC=nop            
  nop                                                                         #  12    0xf35d5  1      OPC=nop            
  nop                                                                         #  13    0xf35d6  1      OPC=nop            
  nop                                                                         #  14    0xf35d7  1      OPC=nop            
  nop                                                                         #  15    0xf35d8  1      OPC=nop            
  nop                                                                         #  16    0xf35d9  1      OPC=nop            
  nop                                                                         #  17    0xf35da  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  18    0xf35db  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xf35e0  2      OPC=testl_r32_r32  
  je .L_f3600                                                                 #  20    0xf35e2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xf35e4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xf35e6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xf35ea  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xf35ec  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xf35ef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xf35f1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xf35f5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xf35f7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  29    0xf35f8  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xf35fd  1      OPC=nop            
  nop                                                                         #  31    0xf35fe  1      OPC=nop            
  nop                                                                         #  32    0xf35ff  1      OPC=nop            
.L_f3600:                                                                     #        0xf3600  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xf3600  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xf3602  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xf3606  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xf3609  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xf360b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xf360f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xf3611  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xf3613  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xf3618  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xf3619  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xf361c  1      OPC=nop            
  nop                                                                         #  44    0xf361d  1      OPC=nop            
  nop                                                                         #  45    0xf361e  1      OPC=nop            
  nop                                                                         #  46    0xf361f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  47    0xf3620  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xf3625  1      OPC=nop            
  nop                                                                         #  49    0xf3626  1      OPC=nop            
  nop                                                                         #  50    0xf3627  1      OPC=nop            
  nop                                                                         #  51    0xf3628  1      OPC=nop            
  nop                                                                         #  52    0xf3629  1      OPC=nop            
  nop                                                                         #  53    0xf362a  1      OPC=nop            
  nop                                                                         #  54    0xf362b  1      OPC=nop            
  nop                                                                         #  55    0xf362c  1      OPC=nop            
  nop                                                                         #  56    0xf362d  1      OPC=nop            
  nop                                                                         #  57    0xf362e  1      OPC=nop            
  nop                                                                         #  58    0xf362f  1      OPC=nop            
  nop                                                                         #  59    0xf3630  1      OPC=nop            
  nop                                                                         #  60    0xf3631  1      OPC=nop            
  nop                                                                         #  61    0xf3632  1      OPC=nop            
  nop                                                                         #  62    0xf3633  1      OPC=nop            
  nop                                                                         #  63    0xf3634  1      OPC=nop            
  nop                                                                         #  64    0xf3635  1      OPC=nop            
  nop                                                                         #  65    0xf3636  1      OPC=nop            
  nop                                                                         #  66    0xf3637  1      OPC=nop            
  nop                                                                         #  67    0xf3638  1      OPC=nop            
  nop                                                                         #  68    0xf3639  1      OPC=nop            
  nop                                                                         #  69    0xf363a  1      OPC=nop            
  nop                                                                         #  70    0xf363b  1      OPC=nop            
  nop                                                                         #  71    0xf363c  1      OPC=nop            
  nop                                                                         #  72    0xf363d  1      OPC=nop            
  nop                                                                         #  73    0xf363e  1      OPC=nop            
  nop                                                                         #  74    0xf363f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openERKSsSt13_Ios_Openmode

