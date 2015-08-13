  .text
  .globl _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_
  .type _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, @function

#! file-offset 0xebda0
#! rip-offset  0xabda0
#! capacity    64 bytes

# Text                                                              #  Line  RIP      Bytes  Opcode              
._ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_:  #        0xabda0  0      OPC=<label>         
  movl %esi, %esi                                                   #  1     0xabda0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                   #  2     0xabda2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                   #  3     0xabda4  2      OPC=subl_r32_r32    
  cmpl $0x1, %edx                                                   #  4     0xabda6  3      OPC=cmpl_r32_imm8   
  je .L_abdc0                                                       #  5     0xabda9  2      OPC=je_label        
  jmpq .memcpy                                                      #  6     0xabdab  5      OPC=jmpq_label_1    
  nop                                                               #  7     0xabdb0  1      OPC=nop             
  nop                                                               #  8     0xabdb1  1      OPC=nop             
  nop                                                               #  9     0xabdb2  1      OPC=nop             
  nop                                                               #  10    0xabdb3  1      OPC=nop             
  nop                                                               #  11    0xabdb4  1      OPC=nop             
  nop                                                               #  12    0xabdb5  1      OPC=nop             
  nop                                                               #  13    0xabdb6  1      OPC=nop             
  nop                                                               #  14    0xabdb7  1      OPC=nop             
  nop                                                               #  15    0xabdb8  1      OPC=nop             
  nop                                                               #  16    0xabdb9  1      OPC=nop             
  nop                                                               #  17    0xabdba  1      OPC=nop             
  nop                                                               #  18    0xabdbb  1      OPC=nop             
  nop                                                               #  19    0xabdbc  1      OPC=nop             
  nop                                                               #  20    0xabdbd  1      OPC=nop             
  nop                                                               #  21    0xabdbe  1      OPC=nop             
  nop                                                               #  22    0xabdbf  1      OPC=nop             
.L_abdc0:                                                           #        0xabdc0  0      OPC=<label>         
  movl %esi, %esi                                                   #  23    0xabdc0  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %eax                                        #  24    0xabdc2  5      OPC=movzbl_r32_m8   
  popq %r11                                                         #  25    0xabdc7  2      OPC=popq_r64_1      
  movl %edi, %edi                                                   #  26    0xabdc9  2      OPC=movl_r32_r32    
  movb %al, (%r15,%rdi,1)                                           #  27    0xabdcb  4      OPC=movb_m8_r8      
  andl $0xffffffe0, %r11d                                           #  28    0xabdcf  7      OPC=andl_r32_imm32  
  nop                                                               #  29    0xabdd6  1      OPC=nop             
  nop                                                               #  30    0xabdd7  1      OPC=nop             
  nop                                                               #  31    0xabdd8  1      OPC=nop             
  nop                                                               #  32    0xabdd9  1      OPC=nop             
  addq %r15, %r11                                                   #  33    0xabdda  3      OPC=addq_r64_r64    
  jmpq %r11                                                         #  34    0xabddd  3      OPC=jmpq_r64        
  nop                                                               #  35    0xabde0  1      OPC=nop             
  nop                                                               #  36    0xabde1  1      OPC=nop             
  nop                                                               #  37    0xabde2  1      OPC=nop             
  nop                                                               #  38    0xabde3  1      OPC=nop             
  nop                                                               #  39    0xabde4  1      OPC=nop             
  nop                                                               #  40    0xabde5  1      OPC=nop             
  nop                                                               #  41    0xabde6  1      OPC=nop             
                                                                                                                 
.size _ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_, .-_ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIPKcSsEES4_

