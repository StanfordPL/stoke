  .text
  .globl _ZNSs13_S_copy_charsEPcPKcS1_
  .type _ZNSs13_S_copy_charsEPcPKcS1_, @function

#! file-offset 0x45d60
#! rip-offset  0x45d60
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcPKcS1_:  #        0x45d60  0      
  movl %esi, %esi                #  1     0x45d60  2      
  movl %edi, %edi                #  2     0x45d62  2      
  subl %esi, %edx                #  3     0x45d64  2      
  cmpl $0x1, %edx                #  4     0x45d66  3      
  je .L_45d80                    #  5     0x45d69  6      
  jmpq .memcpy                   #  6     0x45d6f  5      
  nop                            #  7     0x45d74  1      
  nop                            #  8     0x45d75  1      
.L_45d80:                        #        0x45d76  0      
  movl %esi, %esi                #  9     0x45d76  2      
  movzbl (%r15,%rsi,1), %eax     #  10    0x45d78  5      
  popq %r11                      #  11    0x45d7d  3      
  movl %edi, %edi                #  12    0x45d80  2      
  movb %al, (%r15,%rdi,1)        #  13    0x45d82  4      
  andl $0xffffffe0, %r11d        #  14    0x45d86  7      
  addq %r15, %r11                #  15    0x45d8d  3      
  jmpq %r11                      #  16    0x45d90  3      
  nop                            #  17    0x45d93  1      
  nop                            #  18    0x45d94  1      
  nop                            #  19    0x45d95  1      
  nop                            #  20    0x45d96  1      
  nop                            #  21    0x45d97  1      
  nop                            #  22    0x45d98  1      
  nop                            #  23    0x45d99  1      
                                                          
.size _ZNSs13_S_copy_charsEPcPKcS1_, .-_ZNSs13_S_copy_charsEPcPKcS1_

