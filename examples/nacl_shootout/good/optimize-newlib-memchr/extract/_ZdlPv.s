  .text
  .globl _ZdlPv
  .type _ZdlPv, @function

#! file-offset 0x121680
#! rip-offset  0xe1680
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZdlPv:                   #        0xe1680  0      OPC=<label>         
  movl %edi, %edi          #  1     0xe1680  2      OPC=movl_r32_r32    
  testq %rdi, %rdi         #  2     0xe1682  3      OPC=testq_r64_r64   
  je .L_e16a0              #  3     0xe1685  2      OPC=je_label        
  jmpq .free               #  4     0xe1687  5      OPC=jmpq_label_1    
  nop                      #  5     0xe168c  1      OPC=nop             
  nop                      #  6     0xe168d  1      OPC=nop             
  nop                      #  7     0xe168e  1      OPC=nop             
  nop                      #  8     0xe168f  1      OPC=nop             
  nop                      #  9     0xe1690  1      OPC=nop             
  nop                      #  10    0xe1691  1      OPC=nop             
  nop                      #  11    0xe1692  1      OPC=nop             
  nop                      #  12    0xe1693  1      OPC=nop             
  nop                      #  13    0xe1694  1      OPC=nop             
  nop                      #  14    0xe1695  1      OPC=nop             
  nop                      #  15    0xe1696  1      OPC=nop             
  nop                      #  16    0xe1697  1      OPC=nop             
  nop                      #  17    0xe1698  1      OPC=nop             
  nop                      #  18    0xe1699  1      OPC=nop             
  nop                      #  19    0xe169a  1      OPC=nop             
  nop                      #  20    0xe169b  1      OPC=nop             
  nop                      #  21    0xe169c  1      OPC=nop             
  nop                      #  22    0xe169d  1      OPC=nop             
  nop                      #  23    0xe169e  1      OPC=nop             
  nop                      #  24    0xe169f  1      OPC=nop             
.L_e16a0:                  #        0xe16a0  0      OPC=<label>         
  popq %r11                #  25    0xe16a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  26    0xe16a2  7      OPC=andl_r32_imm32  
  nop                      #  27    0xe16a9  1      OPC=nop             
  nop                      #  28    0xe16aa  1      OPC=nop             
  nop                      #  29    0xe16ab  1      OPC=nop             
  nop                      #  30    0xe16ac  1      OPC=nop             
  addq %r15, %r11          #  31    0xe16ad  3      OPC=addq_r64_r64    
  jmpq %r11                #  32    0xe16b0  3      OPC=jmpq_r64        
  nop                      #  33    0xe16b3  1      OPC=nop             
  nop                      #  34    0xe16b4  1      OPC=nop             
  nop                      #  35    0xe16b5  1      OPC=nop             
  nop                      #  36    0xe16b6  1      OPC=nop             
  nop                      #  37    0xe16b7  1      OPC=nop             
  nop                      #  38    0xe16b8  1      OPC=nop             
  nop                      #  39    0xe16b9  1      OPC=nop             
  nop                      #  40    0xe16ba  1      OPC=nop             
  nop                      #  41    0xe16bb  1      OPC=nop             
  nop                      #  42    0xe16bc  1      OPC=nop             
  nop                      #  43    0xe16bd  1      OPC=nop             
  nop                      #  44    0xe16be  1      OPC=nop             
  nop                      #  45    0xe16bf  1      OPC=nop             
  nop                      #  46    0xe16c0  1      OPC=nop             
  nop                      #  47    0xe16c1  1      OPC=nop             
  nop                      #  48    0xe16c2  1      OPC=nop             
  nop                      #  49    0xe16c3  1      OPC=nop             
  nop                      #  50    0xe16c4  1      OPC=nop             
  nop                      #  51    0xe16c5  1      OPC=nop             
  nop                      #  52    0xe16c6  1      OPC=nop             
                                                                        
.size _ZdlPv, .-_ZdlPv

