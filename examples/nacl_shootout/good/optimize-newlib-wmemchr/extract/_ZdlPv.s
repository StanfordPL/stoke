  .text
  .globl _ZdlPv
  .type _ZdlPv, @function

#! file-offset 0x120f60
#! rip-offset  0xe0f60
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZdlPv:                   #        0xe0f60  0      OPC=<label>         
  movl %edi, %edi          #  1     0xe0f60  2      OPC=movl_r32_r32    
  testq %rdi, %rdi         #  2     0xe0f62  3      OPC=testq_r64_r64   
  je .L_e0f80              #  3     0xe0f65  2      OPC=je_label        
  jmpq .free               #  4     0xe0f67  5      OPC=jmpq_label_1    
  nop                      #  5     0xe0f6c  1      OPC=nop             
  nop                      #  6     0xe0f6d  1      OPC=nop             
  nop                      #  7     0xe0f6e  1      OPC=nop             
  nop                      #  8     0xe0f6f  1      OPC=nop             
  nop                      #  9     0xe0f70  1      OPC=nop             
  nop                      #  10    0xe0f71  1      OPC=nop             
  nop                      #  11    0xe0f72  1      OPC=nop             
  nop                      #  12    0xe0f73  1      OPC=nop             
  nop                      #  13    0xe0f74  1      OPC=nop             
  nop                      #  14    0xe0f75  1      OPC=nop             
  nop                      #  15    0xe0f76  1      OPC=nop             
  nop                      #  16    0xe0f77  1      OPC=nop             
  nop                      #  17    0xe0f78  1      OPC=nop             
  nop                      #  18    0xe0f79  1      OPC=nop             
  nop                      #  19    0xe0f7a  1      OPC=nop             
  nop                      #  20    0xe0f7b  1      OPC=nop             
  nop                      #  21    0xe0f7c  1      OPC=nop             
  nop                      #  22    0xe0f7d  1      OPC=nop             
  nop                      #  23    0xe0f7e  1      OPC=nop             
  nop                      #  24    0xe0f7f  1      OPC=nop             
.L_e0f80:                  #        0xe0f80  0      OPC=<label>         
  popq %r11                #  25    0xe0f80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  26    0xe0f82  7      OPC=andl_r32_imm32  
  nop                      #  27    0xe0f89  1      OPC=nop             
  nop                      #  28    0xe0f8a  1      OPC=nop             
  nop                      #  29    0xe0f8b  1      OPC=nop             
  nop                      #  30    0xe0f8c  1      OPC=nop             
  addq %r15, %r11          #  31    0xe0f8d  3      OPC=addq_r64_r64    
  jmpq %r11                #  32    0xe0f90  3      OPC=jmpq_r64        
  nop                      #  33    0xe0f93  1      OPC=nop             
  nop                      #  34    0xe0f94  1      OPC=nop             
  nop                      #  35    0xe0f95  1      OPC=nop             
  nop                      #  36    0xe0f96  1      OPC=nop             
  nop                      #  37    0xe0f97  1      OPC=nop             
  nop                      #  38    0xe0f98  1      OPC=nop             
  nop                      #  39    0xe0f99  1      OPC=nop             
  nop                      #  40    0xe0f9a  1      OPC=nop             
  nop                      #  41    0xe0f9b  1      OPC=nop             
  nop                      #  42    0xe0f9c  1      OPC=nop             
  nop                      #  43    0xe0f9d  1      OPC=nop             
  nop                      #  44    0xe0f9e  1      OPC=nop             
  nop                      #  45    0xe0f9f  1      OPC=nop             
  nop                      #  46    0xe0fa0  1      OPC=nop             
  nop                      #  47    0xe0fa1  1      OPC=nop             
  nop                      #  48    0xe0fa2  1      OPC=nop             
  nop                      #  49    0xe0fa3  1      OPC=nop             
  nop                      #  50    0xe0fa4  1      OPC=nop             
  nop                      #  51    0xe0fa5  1      OPC=nop             
  nop                      #  52    0xe0fa6  1      OPC=nop             
                                                                        
.size _ZdlPv, .-_ZdlPv

