  .text
  .globl _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x1333a0
#! rip-offset  0xf33a0
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf33a0  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf33a0  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf33a1  2      OPC=movl_r32_r32   
  orl $0x10, %edx                                                             #  3     0xf33a3  3      OPC=orl_r32_imm8   
  leal 0x4(%rbx), %edi                                                        #  4     0xf33a6  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xf33a9  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xf33ab  1      OPC=nop            
  nop                                                                         #  7     0xf33ac  1      OPC=nop            
  nop                                                                         #  8     0xf33ad  1      OPC=nop            
  nop                                                                         #  9     0xf33ae  1      OPC=nop            
  nop                                                                         #  10    0xf33af  1      OPC=nop            
  nop                                                                         #  11    0xf33b0  1      OPC=nop            
  nop                                                                         #  12    0xf33b1  1      OPC=nop            
  nop                                                                         #  13    0xf33b2  1      OPC=nop            
  nop                                                                         #  14    0xf33b3  1      OPC=nop            
  nop                                                                         #  15    0xf33b4  1      OPC=nop            
  nop                                                                         #  16    0xf33b5  1      OPC=nop            
  nop                                                                         #  17    0xf33b6  1      OPC=nop            
  nop                                                                         #  18    0xf33b7  1      OPC=nop            
  nop                                                                         #  19    0xf33b8  1      OPC=nop            
  nop                                                                         #  20    0xf33b9  1      OPC=nop            
  nop                                                                         #  21    0xf33ba  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf33bb  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xf33c0  2      OPC=testl_r32_r32  
  je .L_f33e0                                                                 #  24    0xf33c2  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xf33c4  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf33c6  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xf33ca  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xf33cc  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xf33cf  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xf33d1  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xf33d5  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xf33d7  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf33d8  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xf33dd  1      OPC=nop            
  nop                                                                         #  35    0xf33de  1      OPC=nop            
  nop                                                                         #  36    0xf33df  1      OPC=nop            
.L_f33e0:                                                                     #        0xf33e0  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xf33e0  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf33e2  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xf33e6  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xf33e9  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xf33eb  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xf33ef  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xf33f1  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf33f3  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xf33f8  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xf33f9  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xf33fc  1      OPC=nop            
  nop                                                                         #  48    0xf33fd  1      OPC=nop            
  nop                                                                         #  49    0xf33fe  1      OPC=nop            
  nop                                                                         #  50    0xf33ff  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf3400  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xf3405  1      OPC=nop            
  nop                                                                         #  53    0xf3406  1      OPC=nop            
  nop                                                                         #  54    0xf3407  1      OPC=nop            
  nop                                                                         #  55    0xf3408  1      OPC=nop            
  nop                                                                         #  56    0xf3409  1      OPC=nop            
  nop                                                                         #  57    0xf340a  1      OPC=nop            
  nop                                                                         #  58    0xf340b  1      OPC=nop            
  nop                                                                         #  59    0xf340c  1      OPC=nop            
  nop                                                                         #  60    0xf340d  1      OPC=nop            
  nop                                                                         #  61    0xf340e  1      OPC=nop            
  nop                                                                         #  62    0xf340f  1      OPC=nop            
  nop                                                                         #  63    0xf3410  1      OPC=nop            
  nop                                                                         #  64    0xf3411  1      OPC=nop            
  nop                                                                         #  65    0xf3412  1      OPC=nop            
  nop                                                                         #  66    0xf3413  1      OPC=nop            
  nop                                                                         #  67    0xf3414  1      OPC=nop            
  nop                                                                         #  68    0xf3415  1      OPC=nop            
  nop                                                                         #  69    0xf3416  1      OPC=nop            
  nop                                                                         #  70    0xf3417  1      OPC=nop            
  nop                                                                         #  71    0xf3418  1      OPC=nop            
  nop                                                                         #  72    0xf3419  1      OPC=nop            
  nop                                                                         #  73    0xf341a  1      OPC=nop            
  nop                                                                         #  74    0xf341b  1      OPC=nop            
  nop                                                                         #  75    0xf341c  1      OPC=nop            
  nop                                                                         #  76    0xf341d  1      OPC=nop            
  nop                                                                         #  77    0xf341e  1      OPC=nop            
  nop                                                                         #  78    0xf341f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ofstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

