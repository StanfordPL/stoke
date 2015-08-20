  .text
  .globl _ZNSt6locale13_S_initializeEv
  .type _ZNSt6locale13_S_initializeEv, @function

#! file-offset 0xa2b00
#! rip-offset  0x62b00
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNSt6locale13_S_initializeEv:             #        0x62b00  0      OPC=<label>         
  movl 0x1000fb1e(%rip), %eax               #  1     0x62b00  6      OPC=movl_r32_m32    
  testl %eax, %eax                          #  2     0x62b06  2      OPC=testl_r32_r32   
  je .L_62b20                               #  3     0x62b08  2      OPC=je_label        
  popq %r11                                 #  4     0x62b0a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  5     0x62b0c  7      OPC=andl_r32_imm32  
  nop                                       #  6     0x62b13  1      OPC=nop             
  nop                                       #  7     0x62b14  1      OPC=nop             
  nop                                       #  8     0x62b15  1      OPC=nop             
  nop                                       #  9     0x62b16  1      OPC=nop             
  addq %r15, %r11                           #  10    0x62b17  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0x62b1a  3      OPC=jmpq_r64        
  nop                                       #  12    0x62b1d  1      OPC=nop             
  nop                                       #  13    0x62b1e  1      OPC=nop             
  nop                                       #  14    0x62b1f  1      OPC=nop             
  nop                                       #  15    0x62b20  1      OPC=nop             
  nop                                       #  16    0x62b21  1      OPC=nop             
  nop                                       #  17    0x62b22  1      OPC=nop             
  nop                                       #  18    0x62b23  1      OPC=nop             
  nop                                       #  19    0x62b24  1      OPC=nop             
  nop                                       #  20    0x62b25  1      OPC=nop             
  nop                                       #  21    0x62b26  1      OPC=nop             
.L_62b20:                                   #        0x62b27  0      OPC=<label>         
  jmpq ._ZNSt6locale18_S_initialize_onceEv  #  22    0x62b27  5      OPC=jmpq_label_1    
  nop                                       #  23    0x62b2c  1      OPC=nop             
  nop                                       #  24    0x62b2d  1      OPC=nop             
  nop                                       #  25    0x62b2e  1      OPC=nop             
  nop                                       #  26    0x62b2f  1      OPC=nop             
  nop                                       #  27    0x62b30  1      OPC=nop             
  nop                                       #  28    0x62b31  1      OPC=nop             
  nop                                       #  29    0x62b32  1      OPC=nop             
  nop                                       #  30    0x62b33  1      OPC=nop             
  nop                                       #  31    0x62b34  1      OPC=nop             
  nop                                       #  32    0x62b35  1      OPC=nop             
  nop                                       #  33    0x62b36  1      OPC=nop             
  nop                                       #  34    0x62b37  1      OPC=nop             
  nop                                       #  35    0x62b38  1      OPC=nop             
  nop                                       #  36    0x62b39  1      OPC=nop             
  nop                                       #  37    0x62b3a  1      OPC=nop             
  nop                                       #  38    0x62b3b  1      OPC=nop             
  nop                                       #  39    0x62b3c  1      OPC=nop             
  nop                                       #  40    0x62b3d  1      OPC=nop             
  nop                                       #  41    0x62b3e  1      OPC=nop             
  nop                                       #  42    0x62b3f  1      OPC=nop             
  nop                                       #  43    0x62b40  1      OPC=nop             
  nop                                       #  44    0x62b41  1      OPC=nop             
  nop                                       #  45    0x62b42  1      OPC=nop             
  nop                                       #  46    0x62b43  1      OPC=nop             
  nop                                       #  47    0x62b44  1      OPC=nop             
  nop                                       #  48    0x62b45  1      OPC=nop             
  nop                                       #  49    0x62b46  1      OPC=nop             
                                                                                         
.size _ZNSt6locale13_S_initializeEv, .-_ZNSt6locale13_S_initializeEv

