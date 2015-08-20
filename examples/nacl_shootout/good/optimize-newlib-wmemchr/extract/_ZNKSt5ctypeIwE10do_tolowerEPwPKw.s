  .text
  .globl _ZNKSt5ctypeIwE10do_tolowerEPwPKw
  .type _ZNKSt5ctypeIwE10do_tolowerEPwPKw, @function

#! file-offset 0x13d140
#! rip-offset  0xfd140
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE10do_tolowerEPwPKw:  #        0xfd140  0      OPC=<label>         
  pushq %r12                         #  1     0xfd140  2      OPC=pushq_r64_1     
  movl %edx, %r12d                   #  2     0xfd142  3      OPC=movl_r32_r32    
  pushq %rbx                         #  3     0xfd145  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  4     0xfd146  2      OPC=movl_r32_r32    
  subl $0x8, %esp                    #  5     0xfd148  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xfd14b  3      OPC=addq_r64_r64    
  cmpl %r12d, %ebx                   #  7     0xfd14e  3      OPC=cmpl_r32_r32    
  jae .L_fd1a0                       #  8     0xfd151  2      OPC=jae_label       
  nop                                #  9     0xfd153  1      OPC=nop             
  nop                                #  10    0xfd154  1      OPC=nop             
  nop                                #  11    0xfd155  1      OPC=nop             
  nop                                #  12    0xfd156  1      OPC=nop             
  nop                                #  13    0xfd157  1      OPC=nop             
  nop                                #  14    0xfd158  1      OPC=nop             
  nop                                #  15    0xfd159  1      OPC=nop             
  nop                                #  16    0xfd15a  1      OPC=nop             
  nop                                #  17    0xfd15b  1      OPC=nop             
  nop                                #  18    0xfd15c  1      OPC=nop             
  nop                                #  19    0xfd15d  1      OPC=nop             
  nop                                #  20    0xfd15e  1      OPC=nop             
  nop                                #  21    0xfd15f  1      OPC=nop             
.L_fd160:                            #        0xfd160  0      OPC=<label>         
  movl %ebx, %ebx                    #  22    0xfd160  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi           #  23    0xfd162  4      OPC=movl_r32_m32    
  nop                                #  24    0xfd166  1      OPC=nop             
  nop                                #  25    0xfd167  1      OPC=nop             
  nop                                #  26    0xfd168  1      OPC=nop             
  nop                                #  27    0xfd169  1      OPC=nop             
  nop                                #  28    0xfd16a  1      OPC=nop             
  nop                                #  29    0xfd16b  1      OPC=nop             
  nop                                #  30    0xfd16c  1      OPC=nop             
  nop                                #  31    0xfd16d  1      OPC=nop             
  nop                                #  32    0xfd16e  1      OPC=nop             
  nop                                #  33    0xfd16f  1      OPC=nop             
  nop                                #  34    0xfd170  1      OPC=nop             
  nop                                #  35    0xfd171  1      OPC=nop             
  nop                                #  36    0xfd172  1      OPC=nop             
  nop                                #  37    0xfd173  1      OPC=nop             
  nop                                #  38    0xfd174  1      OPC=nop             
  nop                                #  39    0xfd175  1      OPC=nop             
  nop                                #  40    0xfd176  1      OPC=nop             
  nop                                #  41    0xfd177  1      OPC=nop             
  nop                                #  42    0xfd178  1      OPC=nop             
  nop                                #  43    0xfd179  1      OPC=nop             
  nop                                #  44    0xfd17a  1      OPC=nop             
  callq .towlower                    #  45    0xfd17b  5      OPC=callq_label     
  movl %ebx, %ebx                    #  46    0xfd180  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)           #  47    0xfd182  4      OPC=movl_m32_r32    
  addl $0x4, %ebx                    #  48    0xfd186  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r12d                   #  49    0xfd189  3      OPC=cmpl_r32_r32    
  ja .L_fd160                        #  50    0xfd18c  2      OPC=ja_label        
  nop                                #  51    0xfd18e  1      OPC=nop             
  nop                                #  52    0xfd18f  1      OPC=nop             
  nop                                #  53    0xfd190  1      OPC=nop             
  nop                                #  54    0xfd191  1      OPC=nop             
  nop                                #  55    0xfd192  1      OPC=nop             
  nop                                #  56    0xfd193  1      OPC=nop             
  nop                                #  57    0xfd194  1      OPC=nop             
  nop                                #  58    0xfd195  1      OPC=nop             
  nop                                #  59    0xfd196  1      OPC=nop             
  nop                                #  60    0xfd197  1      OPC=nop             
  nop                                #  61    0xfd198  1      OPC=nop             
  nop                                #  62    0xfd199  1      OPC=nop             
  nop                                #  63    0xfd19a  1      OPC=nop             
  nop                                #  64    0xfd19b  1      OPC=nop             
  nop                                #  65    0xfd19c  1      OPC=nop             
  nop                                #  66    0xfd19d  1      OPC=nop             
  nop                                #  67    0xfd19e  1      OPC=nop             
  nop                                #  68    0xfd19f  1      OPC=nop             
.L_fd1a0:                            #        0xfd1a0  0      OPC=<label>         
  addl $0x8, %esp                    #  69    0xfd1a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  70    0xfd1a3  3      OPC=addq_r64_r64    
  movl %r12d, %eax                   #  71    0xfd1a6  3      OPC=movl_r32_r32    
  popq %rbx                          #  72    0xfd1a9  1      OPC=popq_r64_1      
  popq %r12                          #  73    0xfd1aa  2      OPC=popq_r64_1      
  popq %r11                          #  74    0xfd1ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  75    0xfd1ae  7      OPC=andl_r32_imm32  
  nop                                #  76    0xfd1b5  1      OPC=nop             
  nop                                #  77    0xfd1b6  1      OPC=nop             
  nop                                #  78    0xfd1b7  1      OPC=nop             
  nop                                #  79    0xfd1b8  1      OPC=nop             
  addq %r15, %r11                    #  80    0xfd1b9  3      OPC=addq_r64_r64    
  jmpq %r11                          #  81    0xfd1bc  3      OPC=jmpq_r64        
  nop                                #  82    0xfd1bf  1      OPC=nop             
  nop                                #  83    0xfd1c0  1      OPC=nop             
  nop                                #  84    0xfd1c1  1      OPC=nop             
  nop                                #  85    0xfd1c2  1      OPC=nop             
  nop                                #  86    0xfd1c3  1      OPC=nop             
  nop                                #  87    0xfd1c4  1      OPC=nop             
  nop                                #  88    0xfd1c5  1      OPC=nop             
  nop                                #  89    0xfd1c6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE10do_tolowerEPwPKw, .-_ZNKSt5ctypeIwE10do_tolowerEPwPKw

