  .text
  .globl _ZNSt6locale13_S_initializeEv
  .type _ZNSt6locale13_S_initializeEv, @function

#! file-offset 0xa2800
#! rip-offset  0x62800
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNSt6locale13_S_initializeEv:             #        0x62800  0      OPC=<label>         
  movl 0x1000fe1e(%rip), %eax               #  1     0x62800  6      OPC=movl_r32_m32    
  testl %eax, %eax                          #  2     0x62806  2      OPC=testl_r32_r32   
  je .L_62820                               #  3     0x62808  2      OPC=je_label        
  popq %r11                                 #  4     0x6280a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  5     0x6280c  7      OPC=andl_r32_imm32  
  nop                                       #  6     0x62813  1      OPC=nop             
  nop                                       #  7     0x62814  1      OPC=nop             
  nop                                       #  8     0x62815  1      OPC=nop             
  nop                                       #  9     0x62816  1      OPC=nop             
  addq %r15, %r11                           #  10    0x62817  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0x6281a  3      OPC=jmpq_r64        
  nop                                       #  12    0x6281d  1      OPC=nop             
  nop                                       #  13    0x6281e  1      OPC=nop             
  nop                                       #  14    0x6281f  1      OPC=nop             
  nop                                       #  15    0x62820  1      OPC=nop             
  nop                                       #  16    0x62821  1      OPC=nop             
  nop                                       #  17    0x62822  1      OPC=nop             
  nop                                       #  18    0x62823  1      OPC=nop             
  nop                                       #  19    0x62824  1      OPC=nop             
  nop                                       #  20    0x62825  1      OPC=nop             
  nop                                       #  21    0x62826  1      OPC=nop             
.L_62820:                                   #        0x62827  0      OPC=<label>         
  jmpq ._ZNSt6locale18_S_initialize_onceEv  #  22    0x62827  5      OPC=jmpq_label_1    
  nop                                       #  23    0x6282c  1      OPC=nop             
  nop                                       #  24    0x6282d  1      OPC=nop             
  nop                                       #  25    0x6282e  1      OPC=nop             
  nop                                       #  26    0x6282f  1      OPC=nop             
  nop                                       #  27    0x62830  1      OPC=nop             
  nop                                       #  28    0x62831  1      OPC=nop             
  nop                                       #  29    0x62832  1      OPC=nop             
  nop                                       #  30    0x62833  1      OPC=nop             
  nop                                       #  31    0x62834  1      OPC=nop             
  nop                                       #  32    0x62835  1      OPC=nop             
  nop                                       #  33    0x62836  1      OPC=nop             
  nop                                       #  34    0x62837  1      OPC=nop             
  nop                                       #  35    0x62838  1      OPC=nop             
  nop                                       #  36    0x62839  1      OPC=nop             
  nop                                       #  37    0x6283a  1      OPC=nop             
  nop                                       #  38    0x6283b  1      OPC=nop             
  nop                                       #  39    0x6283c  1      OPC=nop             
  nop                                       #  40    0x6283d  1      OPC=nop             
  nop                                       #  41    0x6283e  1      OPC=nop             
  nop                                       #  42    0x6283f  1      OPC=nop             
  nop                                       #  43    0x62840  1      OPC=nop             
  nop                                       #  44    0x62841  1      OPC=nop             
  nop                                       #  45    0x62842  1      OPC=nop             
  nop                                       #  46    0x62843  1      OPC=nop             
  nop                                       #  47    0x62844  1      OPC=nop             
  nop                                       #  48    0x62845  1      OPC=nop             
  nop                                       #  49    0x62846  1      OPC=nop             
                                                                                         
.size _ZNSt6locale13_S_initializeEv, .-_ZNSt6locale13_S_initializeEv

