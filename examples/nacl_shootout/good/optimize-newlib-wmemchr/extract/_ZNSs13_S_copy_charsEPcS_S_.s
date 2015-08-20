  .text
  .globl _ZNSs13_S_copy_charsEPcS_S_
  .type _ZNSs13_S_copy_charsEPcS_S_, @function

#! file-offset 0xec020
#! rip-offset  0xac020
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcS_S_:  #        0xac020  0      OPC=<label>         
  movl %esi, %esi              #  1     0xac020  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xac022  2      OPC=movl_r32_r32    
  subl %esi, %edx              #  3     0xac024  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx              #  4     0xac026  3      OPC=cmpl_r32_imm8   
  je .L_ac040                  #  5     0xac029  2      OPC=je_label        
  jmpq .memcpy                 #  6     0xac02b  5      OPC=jmpq_label_1    
  nop                          #  7     0xac030  1      OPC=nop             
  nop                          #  8     0xac031  1      OPC=nop             
  nop                          #  9     0xac032  1      OPC=nop             
  nop                          #  10    0xac033  1      OPC=nop             
  nop                          #  11    0xac034  1      OPC=nop             
  nop                          #  12    0xac035  1      OPC=nop             
  nop                          #  13    0xac036  1      OPC=nop             
  nop                          #  14    0xac037  1      OPC=nop             
  nop                          #  15    0xac038  1      OPC=nop             
  nop                          #  16    0xac039  1      OPC=nop             
  nop                          #  17    0xac03a  1      OPC=nop             
  nop                          #  18    0xac03b  1      OPC=nop             
  nop                          #  19    0xac03c  1      OPC=nop             
  nop                          #  20    0xac03d  1      OPC=nop             
  nop                          #  21    0xac03e  1      OPC=nop             
  nop                          #  22    0xac03f  1      OPC=nop             
.L_ac040:                      #        0xac040  0      OPC=<label>         
  movl %esi, %esi              #  23    0xac040  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax   #  24    0xac042  5      OPC=movzbl_r32_m8   
  popq %r11                    #  25    0xac047  2      OPC=popq_r64_1      
  movl %edi, %edi              #  26    0xac049  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)      #  27    0xac04b  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d      #  28    0xac04f  7      OPC=andl_r32_imm32  
  nop                          #  29    0xac056  1      OPC=nop             
  nop                          #  30    0xac057  1      OPC=nop             
  nop                          #  31    0xac058  1      OPC=nop             
  nop                          #  32    0xac059  1      OPC=nop             
  addq %r15, %r11              #  33    0xac05a  3      OPC=addq_r64_r64    
  jmpq %r11                    #  34    0xac05d  3      OPC=jmpq_r64        
  nop                          #  35    0xac060  1      OPC=nop             
  nop                          #  36    0xac061  1      OPC=nop             
  nop                          #  37    0xac062  1      OPC=nop             
  nop                          #  38    0xac063  1      OPC=nop             
  nop                          #  39    0xac064  1      OPC=nop             
  nop                          #  40    0xac065  1      OPC=nop             
  nop                          #  41    0xac066  1      OPC=nop             
                                                                            
.size _ZNSs13_S_copy_charsEPcS_S_, .-_ZNSs13_S_copy_charsEPcS_S_

