  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x6d400
#! rip-offset  0x2d400
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  Opcode                
.pthread_mutexattr_settype:  #        0x2d400  0      OPC=<label>           
  cmpl $0x2, %esi            #  1     0x2d400  3      OPC=cmpl_r32_imm8     
  movl %edi, %edi            #  2     0x2d403  2      OPC=movl_r32_r32      
  movl $0xffffffff, %eax     #  3     0x2d405  6      OPC=movl_r32_imm32_1  
  ja .L_2d420                #  4     0x2d40b  2      OPC=ja_label          
  movl %edi, %edi            #  5     0x2d40d  2      OPC=movl_r32_r32      
  movl %esi, (%r15,%rdi,1)   #  6     0x2d40f  4      OPC=movl_m32_r32      
  xorl %eax, %eax            #  7     0x2d413  2      OPC=xorl_r32_r32      
  nop                        #  8     0x2d415  1      OPC=nop               
  nop                        #  9     0x2d416  1      OPC=nop               
  nop                        #  10    0x2d417  1      OPC=nop               
  nop                        #  11    0x2d418  1      OPC=nop               
  nop                        #  12    0x2d419  1      OPC=nop               
  nop                        #  13    0x2d41a  1      OPC=nop               
  nop                        #  14    0x2d41b  1      OPC=nop               
  nop                        #  15    0x2d41c  1      OPC=nop               
  nop                        #  16    0x2d41d  1      OPC=nop               
  nop                        #  17    0x2d41e  1      OPC=nop               
  nop                        #  18    0x2d41f  1      OPC=nop               
  nop                        #  19    0x2d420  1      OPC=nop               
.L_2d420:                    #        0x2d421  0      OPC=<label>           
  popq %r11                  #  20    0x2d421  2      OPC=popq_r64_1        
  andl $0xffffffe0, %r11d    #  21    0x2d423  7      OPC=andl_r32_imm32    
  nop                        #  22    0x2d42a  1      OPC=nop               
  nop                        #  23    0x2d42b  1      OPC=nop               
  nop                        #  24    0x2d42c  1      OPC=nop               
  nop                        #  25    0x2d42d  1      OPC=nop               
  addq %r15, %r11            #  26    0x2d42e  3      OPC=addq_r64_r64      
  jmpq %r11                  #  27    0x2d431  3      OPC=jmpq_r64          
  nop                        #  28    0x2d434  1      OPC=nop               
  nop                        #  29    0x2d435  1      OPC=nop               
  nop                        #  30    0x2d436  1      OPC=nop               
  nop                        #  31    0x2d437  1      OPC=nop               
  nop                        #  32    0x2d438  1      OPC=nop               
  nop                        #  33    0x2d439  1      OPC=nop               
  nop                        #  34    0x2d43a  1      OPC=nop               
  nop                        #  35    0x2d43b  1      OPC=nop               
  nop                        #  36    0x2d43c  1      OPC=nop               
  nop                        #  37    0x2d43d  1      OPC=nop               
  nop                        #  38    0x2d43e  1      OPC=nop               
  nop                        #  39    0x2d43f  1      OPC=nop               
  nop                        #  40    0x2d440  1      OPC=nop               
  nop                        #  41    0x2d441  1      OPC=nop               
  nop                        #  42    0x2d442  1      OPC=nop               
  nop                        #  43    0x2d443  1      OPC=nop               
  nop                        #  44    0x2d444  1      OPC=nop               
  nop                        #  45    0x2d445  1      OPC=nop               
  nop                        #  46    0x2d446  1      OPC=nop               
  nop                        #  47    0x2d447  1      OPC=nop               
                                                                            
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype

