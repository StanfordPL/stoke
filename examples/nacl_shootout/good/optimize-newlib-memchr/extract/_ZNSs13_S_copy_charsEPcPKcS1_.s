  .text
  .globl _ZNSs13_S_copy_charsEPcPKcS1_
  .type _ZNSs13_S_copy_charsEPcPKcS1_, @function

#! file-offset 0xec780
#! rip-offset  0xac780
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcPKcS1_:  #        0xac780  0      OPC=<label>         
  movl %esi, %esi                #  1     0xac780  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  2     0xac782  2      OPC=movl_r32_r32    
  subl %esi, %edx                #  3     0xac784  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                #  4     0xac786  3      OPC=cmpl_r32_imm8   
  je .L_ac7a0                    #  5     0xac789  2      OPC=je_label        
  jmpq .memcpy                   #  6     0xac78b  5      OPC=jmpq_label_1    
  nop                            #  7     0xac790  1      OPC=nop             
  nop                            #  8     0xac791  1      OPC=nop             
  nop                            #  9     0xac792  1      OPC=nop             
  nop                            #  10    0xac793  1      OPC=nop             
  nop                            #  11    0xac794  1      OPC=nop             
  nop                            #  12    0xac795  1      OPC=nop             
  nop                            #  13    0xac796  1      OPC=nop             
  nop                            #  14    0xac797  1      OPC=nop             
  nop                            #  15    0xac798  1      OPC=nop             
  nop                            #  16    0xac799  1      OPC=nop             
  nop                            #  17    0xac79a  1      OPC=nop             
  nop                            #  18    0xac79b  1      OPC=nop             
  nop                            #  19    0xac79c  1      OPC=nop             
  nop                            #  20    0xac79d  1      OPC=nop             
  nop                            #  21    0xac79e  1      OPC=nop             
  nop                            #  22    0xac79f  1      OPC=nop             
.L_ac7a0:                        #        0xac7a0  0      OPC=<label>         
  movl %esi, %esi                #  23    0xac7a0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax     #  24    0xac7a2  5      OPC=movzbl_r32_m8   
  popq %r11                      #  25    0xac7a7  2      OPC=popq_r64_1      
  movl %edi, %edi                #  26    0xac7a9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)        #  27    0xac7ab  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d        #  28    0xac7af  7      OPC=andl_r32_imm32  
  nop                            #  29    0xac7b6  1      OPC=nop             
  nop                            #  30    0xac7b7  1      OPC=nop             
  nop                            #  31    0xac7b8  1      OPC=nop             
  nop                            #  32    0xac7b9  1      OPC=nop             
  addq %r15, %r11                #  33    0xac7ba  3      OPC=addq_r64_r64    
  jmpq %r11                      #  34    0xac7bd  3      OPC=jmpq_r64        
  nop                            #  35    0xac7c0  1      OPC=nop             
  nop                            #  36    0xac7c1  1      OPC=nop             
  nop                            #  37    0xac7c2  1      OPC=nop             
  nop                            #  38    0xac7c3  1      OPC=nop             
  nop                            #  39    0xac7c4  1      OPC=nop             
  nop                            #  40    0xac7c5  1      OPC=nop             
  nop                            #  41    0xac7c6  1      OPC=nop             
                                                                              
.size _ZNSs13_S_copy_charsEPcPKcS1_, .-_ZNSs13_S_copy_charsEPcPKcS1_

