  .text
  .globl _ZNSs13_S_copy_charsEPcPKcS1_
  .type _ZNSs13_S_copy_charsEPcPKcS1_, @function

#! file-offset 0xebd60
#! rip-offset  0xabd60
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcPKcS1_:  #        0xabd60  0      OPC=<label>         
  movl %esi, %esi                #  1     0xabd60  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0xabd62  2      OPC=movl_r32_r32    
  subl %esi, %edx                #  3     0xabd64  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                #  4     0xabd66  3      OPC=cmpl_r32_imm8   
  je .L_abd80                    #  5     0xabd69  2      OPC=je_label        
  jmpq .memcpy                   #  6     0xabd6b  5      OPC=jmpq_label_1    
  nop                            #  7     0xabd70  1      OPC=nop             
  nop                            #  8     0xabd71  1      OPC=nop             
  nop                            #  9     0xabd72  1      OPC=nop             
  nop                            #  10    0xabd73  1      OPC=nop             
  nop                            #  11    0xabd74  1      OPC=nop             
  nop                            #  12    0xabd75  1      OPC=nop             
  nop                            #  13    0xabd76  1      OPC=nop             
  nop                            #  14    0xabd77  1      OPC=nop             
  nop                            #  15    0xabd78  1      OPC=nop             
  nop                            #  16    0xabd79  1      OPC=nop             
  nop                            #  17    0xabd7a  1      OPC=nop             
  nop                            #  18    0xabd7b  1      OPC=nop             
  nop                            #  19    0xabd7c  1      OPC=nop             
  nop                            #  20    0xabd7d  1      OPC=nop             
  nop                            #  21    0xabd7e  1      OPC=nop             
  nop                            #  22    0xabd7f  1      OPC=nop             
.L_abd80:                        #        0xabd80  0      OPC=<label>         
  movl %esi, %esi                #  23    0xabd80  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax     #  24    0xabd82  5      OPC=movzbl_r32_m8   
  popq %r11                      #  25    0xabd87  2      OPC=popq_r64_1      
  movl %edi, %edi                #  26    0xabd89  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)        #  27    0xabd8b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d        #  28    0xabd8f  7      OPC=andl_r32_imm32  
  nop                            #  29    0xabd96  1      OPC=nop             
  nop                            #  30    0xabd97  1      OPC=nop             
  nop                            #  31    0xabd98  1      OPC=nop             
  nop                            #  32    0xabd99  1      OPC=nop             
  addq %r15, %r11                #  33    0xabd9a  3      OPC=addq_r64_r64    
  jmpq %r11                      #  34    0xabd9d  3      OPC=jmpq_r64        
  nop                            #  35    0xabda0  1      OPC=nop             
  nop                            #  36    0xabda1  1      OPC=nop             
  nop                            #  37    0xabda2  1      OPC=nop             
  nop                            #  38    0xabda3  1      OPC=nop             
  nop                            #  39    0xabda4  1      OPC=nop             
  nop                            #  40    0xabda5  1      OPC=nop             
  nop                            #  41    0xabda6  1      OPC=nop             
                                                                              
.size _ZNSs13_S_copy_charsEPcPKcS1_, .-_ZNSs13_S_copy_charsEPcPKcS1_

