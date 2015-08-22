  .text
  .globl _ZNSo8_M_writeEPKci
  .type _ZNSo8_M_writeEPKci, @function

#! file-offset 0xde020
#! rip-offset  0x9e020
#! capacity    160 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSo8_M_writeEPKci:                                                #        0x9e020  0      OPC=<label>         
  pushq %r12                                                         #  1     0x9e020  2      OPC=pushq_r64_1     
  movl %edx, %r12d                                                   #  2     0x9e022  3      OPC=movl_r32_r32    
  movl %esi, %esi                                                    #  3     0x9e025  2      OPC=movl_r32_r32    
  pushq %rbx                                                         #  4     0x9e027  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  5     0x9e028  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                    #  6     0x9e02a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                    #  7     0x9e02d  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                                    #  8     0x9e030  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  9     0x9e032  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  10    0x9e036  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  11    0x9e039  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                                           #  12    0x9e03b  4      OPC=movl_r32_m32    
  nop                                                                #  13    0x9e03f  1      OPC=nop             
  addl %ebx, %eax                                                    #  14    0x9e040  2      OPC=addl_r32_r32    
  movl %eax, %eax                                                    #  15    0x9e042  2      OPC=movl_r32_r32    
  movl 0x78(%r15,%rax,1), %edi                                       #  16    0x9e044  5      OPC=movl_r32_m32    
  movl %edi, %edi                                                    #  17    0x9e049  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                           #  18    0x9e04b  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                    #  19    0x9e04f  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                       #  20    0x9e051  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                     #  21    0x9e056  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %eax                                             #  22    0x9e058  6      OPC=andl_r32_imm32  
  nop                                                                #  23    0x9e05e  1      OPC=nop             
  nop                                                                #  24    0x9e05f  1      OPC=nop             
  nop                                                                #  25    0x9e060  1      OPC=nop             
  addq %r15, %rax                                                    #  26    0x9e061  3      OPC=addq_r64_r64    
  callq %rax                                                         #  27    0x9e064  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                   #  28    0x9e066  3      OPC=cmpl_r32_r32    
  je .L_9e0a0                                                        #  29    0x9e069  2      OPC=je_label        
  movl %ebx, %ebx                                                    #  30    0x9e06b  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  31    0x9e06d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  32    0x9e071  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  33    0x9e074  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  34    0x9e076  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  35    0x9e07a  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  36    0x9e07c  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  37    0x9e07e  5      OPC=movl_r32_m32    
  nop                                                                #  38    0x9e083  1      OPC=nop             
  nop                                                                #  39    0x9e084  1      OPC=nop             
  nop                                                                #  40    0x9e085  1      OPC=nop             
  addl $0x8, %esp                                                    #  41    0x9e086  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  42    0x9e089  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  43    0x9e08c  1      OPC=popq_r64_1      
  popq %r12                                                          #  44    0x9e08d  2      OPC=popq_r64_1      
  orl $0x1, %esi                                                     #  45    0x9e08f  3      OPC=orl_r32_imm8    
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  46    0x9e092  5      OPC=jmpq_label_1    
  nop                                                                #  47    0x9e097  1      OPC=nop             
  nop                                                                #  48    0x9e098  1      OPC=nop             
  nop                                                                #  49    0x9e099  1      OPC=nop             
  nop                                                                #  50    0x9e09a  1      OPC=nop             
  nop                                                                #  51    0x9e09b  1      OPC=nop             
  nop                                                                #  52    0x9e09c  1      OPC=nop             
  nop                                                                #  53    0x9e09d  1      OPC=nop             
  nop                                                                #  54    0x9e09e  1      OPC=nop             
  nop                                                                #  55    0x9e09f  1      OPC=nop             
  nop                                                                #  56    0x9e0a0  1      OPC=nop             
  nop                                                                #  57    0x9e0a1  1      OPC=nop             
  nop                                                                #  58    0x9e0a2  1      OPC=nop             
  nop                                                                #  59    0x9e0a3  1      OPC=nop             
  nop                                                                #  60    0x9e0a4  1      OPC=nop             
  nop                                                                #  61    0x9e0a5  1      OPC=nop             
.L_9e0a0:                                                            #        0x9e0a6  0      OPC=<label>         
  addl $0x8, %esp                                                    #  62    0x9e0a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                    #  63    0x9e0a9  3      OPC=addq_r64_r64    
  popq %rbx                                                          #  64    0x9e0ac  1      OPC=popq_r64_1      
  popq %r12                                                          #  65    0x9e0ad  2      OPC=popq_r64_1      
  popq %r11                                                          #  66    0x9e0af  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  67    0x9e0b1  7      OPC=andl_r32_imm32  
  nop                                                                #  68    0x9e0b8  1      OPC=nop             
  nop                                                                #  69    0x9e0b9  1      OPC=nop             
  nop                                                                #  70    0x9e0ba  1      OPC=nop             
  nop                                                                #  71    0x9e0bb  1      OPC=nop             
  addq %r15, %r11                                                    #  72    0x9e0bc  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  73    0x9e0bf  3      OPC=jmpq_r64        
  nop                                                                #  74    0x9e0c2  1      OPC=nop             
  nop                                                                #  75    0x9e0c3  1      OPC=nop             
  nop                                                                #  76    0x9e0c4  1      OPC=nop             
  nop                                                                #  77    0x9e0c5  1      OPC=nop             
  nop                                                                #  78    0x9e0c6  1      OPC=nop             
  nop                                                                #  79    0x9e0c7  1      OPC=nop             
  nop                                                                #  80    0x9e0c8  1      OPC=nop             
  nop                                                                #  81    0x9e0c9  1      OPC=nop             
  nop                                                                #  82    0x9e0ca  1      OPC=nop             
  nop                                                                #  83    0x9e0cb  1      OPC=nop             
  nop                                                                #  84    0x9e0cc  1      OPC=nop             
                                                                                                                  
.size _ZNSo8_M_writeEPKci, .-_ZNSo8_M_writeEPKci

