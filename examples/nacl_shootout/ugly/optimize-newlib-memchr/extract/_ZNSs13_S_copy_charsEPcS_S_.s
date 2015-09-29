  .text
  .globl _ZNSs13_S_copy_charsEPcS_S_
  .type _ZNSs13_S_copy_charsEPcS_S_, @function

#! file-offset 0xec740
#! rip-offset  0xac740
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcS_S_:  #        0xac740  0      OPC=<label>         
  movl %esi, %esi              #  1     0xac740  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xac742  2      OPC=movl_r32_r32    
  subl %esi, %edx              #  3     0xac744  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx              #  4     0xac746  3      OPC=cmpl_r32_imm8   
  je .L_ac760                  #  5     0xac749  2      OPC=je_label        
  jmpq .memcpy                 #  6     0xac74b  5      OPC=jmpq_label_1    
  nop                          #  7     0xac750  1      OPC=nop             
  nop                          #  8     0xac751  1      OPC=nop             
  nop                          #  9     0xac752  1      OPC=nop             
  nop                          #  10    0xac753  1      OPC=nop             
  nop                          #  11    0xac754  1      OPC=nop             
  nop                          #  12    0xac755  1      OPC=nop             
  nop                          #  13    0xac756  1      OPC=nop             
  nop                          #  14    0xac757  1      OPC=nop             
  nop                          #  15    0xac758  1      OPC=nop             
  nop                          #  16    0xac759  1      OPC=nop             
  nop                          #  17    0xac75a  1      OPC=nop             
  nop                          #  18    0xac75b  1      OPC=nop             
  nop                          #  19    0xac75c  1      OPC=nop             
  nop                          #  20    0xac75d  1      OPC=nop             
  nop                          #  21    0xac75e  1      OPC=nop             
  nop                          #  22    0xac75f  1      OPC=nop             
.L_ac760:                      #        0xac760  0      OPC=<label>         
  movl %esi, %esi              #  23    0xac760  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax   #  24    0xac762  5      OPC=movzbl_r32_m8   
  popq %r11                    #  25    0xac767  2      OPC=popq_r64_1      
  movl %edi, %edi              #  26    0xac769  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)      #  27    0xac76b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d      #  28    0xac76f  7      OPC=andl_r32_imm32  
  nop                          #  29    0xac776  1      OPC=nop             
  nop                          #  30    0xac777  1      OPC=nop             
  nop                          #  31    0xac778  1      OPC=nop             
  nop                          #  32    0xac779  1      OPC=nop             
  addq %r15, %r11              #  33    0xac77a  3      OPC=addq_r64_r64    
  jmpq %r11                    #  34    0xac77d  3      OPC=jmpq_r64        
  nop                          #  35    0xac780  1      OPC=nop             
  nop                          #  36    0xac781  1      OPC=nop             
  nop                          #  37    0xac782  1      OPC=nop             
  nop                          #  38    0xac783  1      OPC=nop             
  nop                          #  39    0xac784  1      OPC=nop             
  nop                          #  40    0xac785  1      OPC=nop             
  nop                          #  41    0xac786  1      OPC=nop             
                                                                            
.size _ZNSs13_S_copy_charsEPcS_S_, .-_ZNSs13_S_copy_charsEPcS_S_

