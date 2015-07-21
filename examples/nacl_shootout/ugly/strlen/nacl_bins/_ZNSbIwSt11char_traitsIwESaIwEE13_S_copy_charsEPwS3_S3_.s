  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, @function

#! file-offset 0x116660
#! rip-offset  0xd6660
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_:  #        0xd6660  0      OPC=0     
  movl %esi, %esi                                          #  1     0xd6660  2      OPC=1157  
  movl %edi, %edi                                          #  2     0xd6662  2      OPC=1157  
  subl %esi, %edx                                          #  3     0xd6664  2      OPC=2386  
  sarl $0x2, %edx                                          #  4     0xd6666  3      OPC=2096  
  cmpl $0x1, %edx                                          #  5     0xd6669  3      OPC=470   
  je .L_d6680                                              #  6     0xd666c  6      OPC=893   
  nop                                                      #  7     0xd6672  1      OPC=1343  
  nop                                                      #  8     0xd6673  1      OPC=1343  
  jmpq .wmemcpy                                            #  9     0xd6674  5      OPC=930   
  nop                                                      #  10    0xd6679  1      OPC=1343  
  nop                                                      #  11    0xd667a  1      OPC=1343  
  nop                                                      #  12    0xd667b  1      OPC=1343  
  nop                                                      #  13    0xd667c  1      OPC=1343  
  nop                                                      #  14    0xd667d  1      OPC=1343  
  nop                                                      #  15    0xd667e  1      OPC=1343  
  nop                                                      #  16    0xd667f  1      OPC=1343  
  nop                                                      #  17    0xd6680  1      OPC=1343  
  nop                                                      #  18    0xd6681  1      OPC=1343  
  nop                                                      #  19    0xd6682  1      OPC=1343  
  nop                                                      #  20    0xd6683  1      OPC=1343  
  nop                                                      #  21    0xd6684  1      OPC=1343  
  nop                                                      #  22    0xd6685  1      OPC=1343  
.L_d6680:                                                  #        0xd6686  0      OPC=0     
  popq %r11                                                #  23    0xd6686  2      OPC=1694  
  movl %esi, %esi                                          #  24    0xd6688  2      OPC=1157  
  movl (%r15,%rsi,1), %eax                                 #  25    0xd668a  4      OPC=1156  
  movl %edi, %edi                                          #  26    0xd668e  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)                                 #  27    0xd6690  4      OPC=1136  
  andl $0xffffffe0, %r11d                                  #  28    0xd6694  7      OPC=131   
  nop                                                      #  29    0xd669b  1      OPC=1343  
  nop                                                      #  30    0xd669c  1      OPC=1343  
  nop                                                      #  31    0xd669d  1      OPC=1343  
  nop                                                      #  32    0xd669e  1      OPC=1343  
  addq %r15, %r11                                          #  33    0xd669f  3      OPC=72    
  jmpq %r11                                                #  34    0xd66a2  3      OPC=928   
  nop                                                      #  35    0xd66a5  1      OPC=1343  
  nop                                                      #  36    0xd66a6  1      OPC=1343  
  nop                                                      #  37    0xd66a7  1      OPC=1343  
  nop                                                      #  38    0xd66a8  1      OPC=1343  
  nop                                                      #  39    0xd66a9  1      OPC=1343  
  nop                                                      #  40    0xd66aa  1      OPC=1343  
  nop                                                      #  41    0xd66ab  1      OPC=1343  
  nop                                                      #  42    0xd66ac  1      OPC=1343  
                                                                                              
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwS3_S3_

