  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, @function

#! file-offset 0x1166a0
#! rip-offset  0xd66a0
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_:  #        0xd66a0  0      OPC=0     
  movl %esi, %esi                                          #  1     0xd66a0  2      OPC=1157  
  movl %edi, %edi                                          #  2     0xd66a2  2      OPC=1157  
  subl %esi, %edx                                          #  3     0xd66a4  2      OPC=2386  
  sarl $0x2, %edx                                          #  4     0xd66a6  3      OPC=2096  
  cmpl $0x1, %edx                                          #  5     0xd66a9  3      OPC=470   
  je .L_d66c0                                              #  6     0xd66ac  6      OPC=893   
  nop                                                      #  7     0xd66b2  1      OPC=1343  
  nop                                                      #  8     0xd66b3  1      OPC=1343  
  jmpq .wmemcpy                                            #  9     0xd66b4  5      OPC=930   
  nop                                                      #  10    0xd66b9  1      OPC=1343  
  nop                                                      #  11    0xd66ba  1      OPC=1343  
  nop                                                      #  12    0xd66bb  1      OPC=1343  
  nop                                                      #  13    0xd66bc  1      OPC=1343  
  nop                                                      #  14    0xd66bd  1      OPC=1343  
  nop                                                      #  15    0xd66be  1      OPC=1343  
  nop                                                      #  16    0xd66bf  1      OPC=1343  
  nop                                                      #  17    0xd66c0  1      OPC=1343  
  nop                                                      #  18    0xd66c1  1      OPC=1343  
  nop                                                      #  19    0xd66c2  1      OPC=1343  
  nop                                                      #  20    0xd66c3  1      OPC=1343  
  nop                                                      #  21    0xd66c4  1      OPC=1343  
  nop                                                      #  22    0xd66c5  1      OPC=1343  
.L_d66c0:                                                  #        0xd66c6  0      OPC=0     
  popq %r11                                                #  23    0xd66c6  2      OPC=1694  
  movl %esi, %esi                                          #  24    0xd66c8  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                 #  25    0xd66ca  4      OPC=1156  
  movl %edi, %edi                                          #  26    0xd66ce  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                                 #  27    0xd66d0  4      OPC=1136  
  andl $0xffffffe0, %r11d                                  #  28    0xd66d4  7      OPC=131   
  nop                                                      #  29    0xd66db  1      OPC=1343  
  nop                                                      #  30    0xd66dc  1      OPC=1343  
  nop                                                      #  31    0xd66dd  1      OPC=1343  
  nop                                                      #  32    0xd66de  1      OPC=1343  
  addq %r15, %r11                                          #  33    0xd66df  3      OPC=72    
  jmpq %r11                                                #  34    0xd66e2  3      OPC=928   
  nop                                                      #  35    0xd66e5  1      OPC=1343  
  nop                                                      #  36    0xd66e6  1      OPC=1343  
  nop                                                      #  37    0xd66e7  1      OPC=1343  
  nop                                                      #  38    0xd66e8  1      OPC=1343  
  nop                                                      #  39    0xd66e9  1      OPC=1343  
  nop                                                      #  40    0xd66ea  1      OPC=1343  
  nop                                                      #  41    0xd66eb  1      OPC=1343  
  nop                                                      #  42    0xd66ec  1      OPC=1343  
                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_

