  .text
  .globl _ZNSs13_S_copy_charsEPcPKcS1_
  .type _ZNSs13_S_copy_charsEPcPKcS1_, @function

#! file-offset 0xec060
#! rip-offset  0xac060
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcPKcS1_:  #        0xac060  0      OPC=<label>         
  movl %esi, %esi                #  1     0xac060  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0xac062  2      OPC=movl_r32_r32    
  subl %esi, %edx                #  3     0xac064  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                #  4     0xac066  3      OPC=cmpl_r32_imm8   
  je .L_ac080                    #  5     0xac069  2      OPC=je_label        
  jmpq .memcpy                   #  6     0xac06b  5      OPC=jmpq_label_1    
  nop                            #  7     0xac070  1      OPC=nop             
  nop                            #  8     0xac071  1      OPC=nop             
  nop                            #  9     0xac072  1      OPC=nop             
  nop                            #  10    0xac073  1      OPC=nop             
  nop                            #  11    0xac074  1      OPC=nop             
  nop                            #  12    0xac075  1      OPC=nop             
  nop                            #  13    0xac076  1      OPC=nop             
  nop                            #  14    0xac077  1      OPC=nop             
  nop                            #  15    0xac078  1      OPC=nop             
  nop                            #  16    0xac079  1      OPC=nop             
  nop                            #  17    0xac07a  1      OPC=nop             
  nop                            #  18    0xac07b  1      OPC=nop             
  nop                            #  19    0xac07c  1      OPC=nop             
  nop                            #  20    0xac07d  1      OPC=nop             
  nop                            #  21    0xac07e  1      OPC=nop             
  nop                            #  22    0xac07f  1      OPC=nop             
.L_ac080:                        #        0xac080  0      OPC=<label>         
  movl %esi, %esi                #  23    0xac080  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax     #  24    0xac082  5      OPC=movzbl_r32_m8   
  popq %r11                      #  25    0xac087  2      OPC=popq_r64_1      
  movl %edi, %edi                #  26    0xac089  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)        #  27    0xac08b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d        #  28    0xac08f  7      OPC=andl_r32_imm32  
  nop                            #  29    0xac096  1      OPC=nop             
  nop                            #  30    0xac097  1      OPC=nop             
  nop                            #  31    0xac098  1      OPC=nop             
  nop                            #  32    0xac099  1      OPC=nop             
  addq %r15, %r11                #  33    0xac09a  3      OPC=addq_r64_r64    
  jmpq %r11                      #  34    0xac09d  3      OPC=jmpq_r64        
  nop                            #  35    0xac0a0  1      OPC=nop             
  nop                            #  36    0xac0a1  1      OPC=nop             
  nop                            #  37    0xac0a2  1      OPC=nop             
  nop                            #  38    0xac0a3  1      OPC=nop             
  nop                            #  39    0xac0a4  1      OPC=nop             
  nop                            #  40    0xac0a5  1      OPC=nop             
  nop                            #  41    0xac0a6  1      OPC=nop             
                                                                              
.size _ZNSs13_S_copy_charsEPcPKcS1_, .-_ZNSs13_S_copy_charsEPcPKcS1_

