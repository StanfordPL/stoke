  .text
  .globl _ZNSs13_S_copy_charsEPcS_S_
  .type _ZNSs13_S_copy_charsEPcS_S_, @function

#! file-offset 0xebd20
#! rip-offset  0xabd20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcS_S_:  #        0xabd20  0      OPC=<label>         
  movl %esi, %esi              #  1     0xabd20  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xabd22  2      OPC=movl_r32_r32    
  subl %esi, %edx              #  3     0xabd24  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx              #  4     0xabd26  3      OPC=cmpl_r32_imm8   
  je .L_abd40                  #  5     0xabd29  2      OPC=je_label        
  jmpq .memcpy                 #  6     0xabd2b  5      OPC=jmpq_label_1    
  nop                          #  7     0xabd30  1      OPC=nop             
  nop                          #  8     0xabd31  1      OPC=nop             
  nop                          #  9     0xabd32  1      OPC=nop             
  nop                          #  10    0xabd33  1      OPC=nop             
  nop                          #  11    0xabd34  1      OPC=nop             
  nop                          #  12    0xabd35  1      OPC=nop             
  nop                          #  13    0xabd36  1      OPC=nop             
  nop                          #  14    0xabd37  1      OPC=nop             
  nop                          #  15    0xabd38  1      OPC=nop             
  nop                          #  16    0xabd39  1      OPC=nop             
  nop                          #  17    0xabd3a  1      OPC=nop             
  nop                          #  18    0xabd3b  1      OPC=nop             
  nop                          #  19    0xabd3c  1      OPC=nop             
  nop                          #  20    0xabd3d  1      OPC=nop             
  nop                          #  21    0xabd3e  1      OPC=nop             
  nop                          #  22    0xabd3f  1      OPC=nop             
.L_abd40:                      #        0xabd40  0      OPC=<label>         
  movl %esi, %esi              #  23    0xabd40  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax   #  24    0xabd42  5      OPC=movzbl_r32_m8   
  popq %r11                    #  25    0xabd47  2      OPC=popq_r64_1      
  movl %edi, %edi              #  26    0xabd49  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)      #  27    0xabd4b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d      #  28    0xabd4f  7      OPC=andl_r32_imm32  
  nop                          #  29    0xabd56  1      OPC=nop             
  nop                          #  30    0xabd57  1      OPC=nop             
  nop                          #  31    0xabd58  1      OPC=nop             
  nop                          #  32    0xabd59  1      OPC=nop             
  addq %r15, %r11              #  33    0xabd5a  3      OPC=addq_r64_r64    
  jmpq %r11                    #  34    0xabd5d  3      OPC=jmpq_r64        
  nop                          #  35    0xabd60  1      OPC=nop             
  nop                          #  36    0xabd61  1      OPC=nop             
  nop                          #  37    0xabd62  1      OPC=nop             
  nop                          #  38    0xabd63  1      OPC=nop             
  nop                          #  39    0xabd64  1      OPC=nop             
  nop                          #  40    0xabd65  1      OPC=nop             
  nop                          #  41    0xabd66  1      OPC=nop             
                                                                            
.size _ZNSs13_S_copy_charsEPcS_S_, .-_ZNSs13_S_copy_charsEPcS_S_

