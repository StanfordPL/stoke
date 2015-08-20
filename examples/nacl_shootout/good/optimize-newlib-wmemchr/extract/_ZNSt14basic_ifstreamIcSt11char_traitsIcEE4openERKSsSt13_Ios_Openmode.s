  .text
  .globl _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12e560
#! rip-offset  0xee560
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xee560  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xee560  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xee562  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xee563  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xee565  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xee567  4      OPC=movl_r32_m32   
  leal 0x8(%rbx), %edi                                                        #  6     0xee56b  3      OPC=leal_r32_m16   
  orl $0x8, %edx                                                              #  7     0xee56e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xee571  1      OPC=nop            
  nop                                                                         #  9     0xee572  1      OPC=nop            
  nop                                                                         #  10    0xee573  1      OPC=nop            
  nop                                                                         #  11    0xee574  1      OPC=nop            
  nop                                                                         #  12    0xee575  1      OPC=nop            
  nop                                                                         #  13    0xee576  1      OPC=nop            
  nop                                                                         #  14    0xee577  1      OPC=nop            
  nop                                                                         #  15    0xee578  1      OPC=nop            
  nop                                                                         #  16    0xee579  1      OPC=nop            
  nop                                                                         #  17    0xee57a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xee57b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xee580  2      OPC=testl_r32_r32  
  je .L_ee5a0                                                                 #  20    0xee582  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xee584  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xee586  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xee58a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xee58c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xee58f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xee591  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xee595  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xee597  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  29    0xee598  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xee59d  1      OPC=nop            
  nop                                                                         #  31    0xee59e  1      OPC=nop            
  nop                                                                         #  32    0xee59f  1      OPC=nop            
.L_ee5a0:                                                                     #        0xee5a0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xee5a0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xee5a2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xee5a6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xee5a9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xee5ab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xee5af  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xee5b1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xee5b3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xee5b8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xee5b9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xee5bc  1      OPC=nop            
  nop                                                                         #  44    0xee5bd  1      OPC=nop            
  nop                                                                         #  45    0xee5be  1      OPC=nop            
  nop                                                                         #  46    0xee5bf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  47    0xee5c0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xee5c5  1      OPC=nop            
  nop                                                                         #  49    0xee5c6  1      OPC=nop            
  nop                                                                         #  50    0xee5c7  1      OPC=nop            
  nop                                                                         #  51    0xee5c8  1      OPC=nop            
  nop                                                                         #  52    0xee5c9  1      OPC=nop            
  nop                                                                         #  53    0xee5ca  1      OPC=nop            
  nop                                                                         #  54    0xee5cb  1      OPC=nop            
  nop                                                                         #  55    0xee5cc  1      OPC=nop            
  nop                                                                         #  56    0xee5cd  1      OPC=nop            
  nop                                                                         #  57    0xee5ce  1      OPC=nop            
  nop                                                                         #  58    0xee5cf  1      OPC=nop            
  nop                                                                         #  59    0xee5d0  1      OPC=nop            
  nop                                                                         #  60    0xee5d1  1      OPC=nop            
  nop                                                                         #  61    0xee5d2  1      OPC=nop            
  nop                                                                         #  62    0xee5d3  1      OPC=nop            
  nop                                                                         #  63    0xee5d4  1      OPC=nop            
  nop                                                                         #  64    0xee5d5  1      OPC=nop            
  nop                                                                         #  65    0xee5d6  1      OPC=nop            
  nop                                                                         #  66    0xee5d7  1      OPC=nop            
  nop                                                                         #  67    0xee5d8  1      OPC=nop            
  nop                                                                         #  68    0xee5d9  1      OPC=nop            
  nop                                                                         #  69    0xee5da  1      OPC=nop            
  nop                                                                         #  70    0xee5db  1      OPC=nop            
  nop                                                                         #  71    0xee5dc  1      OPC=nop            
  nop                                                                         #  72    0xee5dd  1      OPC=nop            
  nop                                                                         #  73    0xee5de  1      OPC=nop            
  nop                                                                         #  74    0xee5df  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

