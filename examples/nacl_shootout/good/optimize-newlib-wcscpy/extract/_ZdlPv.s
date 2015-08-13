  .text
  .globl _ZdlPv
  .type _ZdlPv, @function

#! file-offset 0x120c60
#! rip-offset  0xe0c60
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZdlPv:                   #        0xe0c60  0      OPC=<label>         
  movl %edi, %edi          #  1     0xe0c60  2      OPC=movl_r32_r32    
  testq %rdi, %rdi         #  2     0xe0c62  3      OPC=testq_r64_r64   
  je .L_e0c80              #  3     0xe0c65  2      OPC=je_label        
  jmpq .free               #  4     0xe0c67  5      OPC=jmpq_label_1    
  nop                      #  5     0xe0c6c  1      OPC=nop             
  nop                      #  6     0xe0c6d  1      OPC=nop             
  nop                      #  7     0xe0c6e  1      OPC=nop             
  nop                      #  8     0xe0c6f  1      OPC=nop             
  nop                      #  9     0xe0c70  1      OPC=nop             
  nop                      #  10    0xe0c71  1      OPC=nop             
  nop                      #  11    0xe0c72  1      OPC=nop             
  nop                      #  12    0xe0c73  1      OPC=nop             
  nop                      #  13    0xe0c74  1      OPC=nop             
  nop                      #  14    0xe0c75  1      OPC=nop             
  nop                      #  15    0xe0c76  1      OPC=nop             
  nop                      #  16    0xe0c77  1      OPC=nop             
  nop                      #  17    0xe0c78  1      OPC=nop             
  nop                      #  18    0xe0c79  1      OPC=nop             
  nop                      #  19    0xe0c7a  1      OPC=nop             
  nop                      #  20    0xe0c7b  1      OPC=nop             
  nop                      #  21    0xe0c7c  1      OPC=nop             
  nop                      #  22    0xe0c7d  1      OPC=nop             
  nop                      #  23    0xe0c7e  1      OPC=nop             
  nop                      #  24    0xe0c7f  1      OPC=nop             
.L_e0c80:                  #        0xe0c80  0      OPC=<label>         
  popq %r11                #  25    0xe0c80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  26    0xe0c82  7      OPC=andl_r32_imm32  
  nop                      #  27    0xe0c89  1      OPC=nop             
  nop                      #  28    0xe0c8a  1      OPC=nop             
  nop                      #  29    0xe0c8b  1      OPC=nop             
  nop                      #  30    0xe0c8c  1      OPC=nop             
  addq %r15, %r11          #  31    0xe0c8d  3      OPC=addq_r64_r64    
  jmpq %r11                #  32    0xe0c90  3      OPC=jmpq_r64        
  nop                      #  33    0xe0c93  1      OPC=nop             
  nop                      #  34    0xe0c94  1      OPC=nop             
  nop                      #  35    0xe0c95  1      OPC=nop             
  nop                      #  36    0xe0c96  1      OPC=nop             
  nop                      #  37    0xe0c97  1      OPC=nop             
  nop                      #  38    0xe0c98  1      OPC=nop             
  nop                      #  39    0xe0c99  1      OPC=nop             
  nop                      #  40    0xe0c9a  1      OPC=nop             
  nop                      #  41    0xe0c9b  1      OPC=nop             
  nop                      #  42    0xe0c9c  1      OPC=nop             
  nop                      #  43    0xe0c9d  1      OPC=nop             
  nop                      #  44    0xe0c9e  1      OPC=nop             
  nop                      #  45    0xe0c9f  1      OPC=nop             
  nop                      #  46    0xe0ca0  1      OPC=nop             
  nop                      #  47    0xe0ca1  1      OPC=nop             
  nop                      #  48    0xe0ca2  1      OPC=nop             
  nop                      #  49    0xe0ca3  1      OPC=nop             
  nop                      #  50    0xe0ca4  1      OPC=nop             
  nop                      #  51    0xe0ca5  1      OPC=nop             
  nop                      #  52    0xe0ca6  1      OPC=nop             
                                                                        
.size _ZdlPv, .-_ZdlPv

