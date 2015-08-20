  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x6db00
#! rip-offset  0x2db00
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_setdetachstate:  #        0x2db00  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2db00  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  2     0x2db02  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  3     0x2db07  3      OPC=testq_r64_r64   
  je .L_2db20                  #  4     0x2db0a  2      OPC=je_label        
  movl %edi, %edi              #  5     0x2db0c  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rdi,1)     #  6     0x2db0e  4      OPC=movl_m32_r32    
  xorb %al, %al                #  7     0x2db12  2      OPC=xorb_r8_r8      
  nop                          #  8     0x2db14  1      OPC=nop             
  nop                          #  9     0x2db15  1      OPC=nop             
  nop                          #  10    0x2db16  1      OPC=nop             
  nop                          #  11    0x2db17  1      OPC=nop             
  nop                          #  12    0x2db18  1      OPC=nop             
  nop                          #  13    0x2db19  1      OPC=nop             
  nop                          #  14    0x2db1a  1      OPC=nop             
  nop                          #  15    0x2db1b  1      OPC=nop             
  nop                          #  16    0x2db1c  1      OPC=nop             
  nop                          #  17    0x2db1d  1      OPC=nop             
  nop                          #  18    0x2db1e  1      OPC=nop             
  nop                          #  19    0x2db1f  1      OPC=nop             
.L_2db20:                      #        0x2db20  0      OPC=<label>         
  popq %r11                    #  20    0x2db20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  21    0x2db22  7      OPC=andl_r32_imm32  
  nop                          #  22    0x2db29  1      OPC=nop             
  nop                          #  23    0x2db2a  1      OPC=nop             
  nop                          #  24    0x2db2b  1      OPC=nop             
  nop                          #  25    0x2db2c  1      OPC=nop             
  addq %r15, %r11              #  26    0x2db2d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  27    0x2db30  3      OPC=jmpq_r64        
  nop                          #  28    0x2db33  1      OPC=nop             
  nop                          #  29    0x2db34  1      OPC=nop             
  nop                          #  30    0x2db35  1      OPC=nop             
  nop                          #  31    0x2db36  1      OPC=nop             
  nop                          #  32    0x2db37  1      OPC=nop             
  nop                          #  33    0x2db38  1      OPC=nop             
  nop                          #  34    0x2db39  1      OPC=nop             
  nop                          #  35    0x2db3a  1      OPC=nop             
  nop                          #  36    0x2db3b  1      OPC=nop             
  nop                          #  37    0x2db3c  1      OPC=nop             
  nop                          #  38    0x2db3d  1      OPC=nop             
  nop                          #  39    0x2db3e  1      OPC=nop             
  nop                          #  40    0x2db3f  1      OPC=nop             
  nop                          #  41    0x2db40  1      OPC=nop             
  nop                          #  42    0x2db41  1      OPC=nop             
  nop                          #  43    0x2db42  1      OPC=nop             
  nop                          #  44    0x2db43  1      OPC=nop             
  nop                          #  45    0x2db44  1      OPC=nop             
  nop                          #  46    0x2db45  1      OPC=nop             
  nop                          #  47    0x2db46  1      OPC=nop             
                                                                            
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate

