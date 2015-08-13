  .text
  .globl _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, @function

#! file-offset 0x12e160
#! rip-offset  0xee160
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode:       #        0xee160  0      OPC=<label>        
  movl %esi, %esi                                                             #  1     0xee160  2      OPC=movl_r32_r32   
  pushq %rbx                                                                  #  2     0xee162  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  3     0xee163  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  4     0xee165  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %esi                                                    #  5     0xee167  4      OPC=movl_r32_m32   
  leal 0x4(%rbx), %edi                                                        #  6     0xee16b  3      OPC=leal_r32_m16   
  orl $0x10, %edx                                                             #  7     0xee16e  3      OPC=orl_r32_imm8   
  nop                                                                         #  8     0xee171  1      OPC=nop            
  nop                                                                         #  9     0xee172  1      OPC=nop            
  nop                                                                         #  10    0xee173  1      OPC=nop            
  nop                                                                         #  11    0xee174  1      OPC=nop            
  nop                                                                         #  12    0xee175  1      OPC=nop            
  nop                                                                         #  13    0xee176  1      OPC=nop            
  nop                                                                         #  14    0xee177  1      OPC=nop            
  nop                                                                         #  15    0xee178  1      OPC=nop            
  nop                                                                         #  16    0xee179  1      OPC=nop            
  nop                                                                         #  17    0xee17a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode  #  18    0xee17b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  19    0xee180  2      OPC=testl_r32_r32  
  je .L_ee1a0                                                                 #  20    0xee182  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  21    0xee184  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  22    0xee186  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  23    0xee18a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  24    0xee18c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  25    0xee18f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  26    0xee191  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  27    0xee195  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  28    0xee197  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  29    0xee198  5      OPC=jmpq_label_1   
  nop                                                                         #  30    0xee19d  1      OPC=nop            
  nop                                                                         #  31    0xee19e  1      OPC=nop            
  nop                                                                         #  32    0xee19f  1      OPC=nop            
.L_ee1a0:                                                                     #        0xee1a0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  33    0xee1a0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  34    0xee1a2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  35    0xee1a6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  36    0xee1a9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  37    0xee1ab  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  38    0xee1af  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  39    0xee1b1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  40    0xee1b3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  41    0xee1b8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  42    0xee1b9  3      OPC=orl_r32_imm8   
  nop                                                                         #  43    0xee1bc  1      OPC=nop            
  nop                                                                         #  44    0xee1bd  1      OPC=nop            
  nop                                                                         #  45    0xee1be  1      OPC=nop            
  nop                                                                         #  46    0xee1bf  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate           #  47    0xee1c0  5      OPC=jmpq_label_1   
  nop                                                                         #  48    0xee1c5  1      OPC=nop            
  nop                                                                         #  49    0xee1c6  1      OPC=nop            
  nop                                                                         #  50    0xee1c7  1      OPC=nop            
  nop                                                                         #  51    0xee1c8  1      OPC=nop            
  nop                                                                         #  52    0xee1c9  1      OPC=nop            
  nop                                                                         #  53    0xee1ca  1      OPC=nop            
  nop                                                                         #  54    0xee1cb  1      OPC=nop            
  nop                                                                         #  55    0xee1cc  1      OPC=nop            
  nop                                                                         #  56    0xee1cd  1      OPC=nop            
  nop                                                                         #  57    0xee1ce  1      OPC=nop            
  nop                                                                         #  58    0xee1cf  1      OPC=nop            
  nop                                                                         #  59    0xee1d0  1      OPC=nop            
  nop                                                                         #  60    0xee1d1  1      OPC=nop            
  nop                                                                         #  61    0xee1d2  1      OPC=nop            
  nop                                                                         #  62    0xee1d3  1      OPC=nop            
  nop                                                                         #  63    0xee1d4  1      OPC=nop            
  nop                                                                         #  64    0xee1d5  1      OPC=nop            
  nop                                                                         #  65    0xee1d6  1      OPC=nop            
  nop                                                                         #  66    0xee1d7  1      OPC=nop            
  nop                                                                         #  67    0xee1d8  1      OPC=nop            
  nop                                                                         #  68    0xee1d9  1      OPC=nop            
  nop                                                                         #  69    0xee1da  1      OPC=nop            
  nop                                                                         #  70    0xee1db  1      OPC=nop            
  nop                                                                         #  71    0xee1dc  1      OPC=nop            
  nop                                                                         #  72    0xee1dd  1      OPC=nop            
  nop                                                                         #  73    0xee1de  1      OPC=nop            
  nop                                                                         #  74    0xee1df  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKSsSt13_Ios_Openmode

