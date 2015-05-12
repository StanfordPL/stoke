  .text
  .globl _ZNSs13_S_copy_charsEPcPKcS1_
  .type _ZNSs13_S_copy_charsEPcPKcS1_, @function

#! file-offset 0x45d80
#! rip-offset  0x45d80
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcPKcS1_:  #        0x45d80  0      
  movl %esi, %esi                #  1     0x45d80  2      
  movl %edi, %edi                #  2     0x45d82  2      
  subl %esi, %edx                #  3     0x45d84  2      
  cmpl $0x1, %edx                #  4     0x45d86  3      
  je .L_45da0                    #  5     0x45d89  6      
  jmpq .memcpy                   #  6     0x45d8f  5      
  nop                            #  7     0x45d94  1      
  nop                            #  8     0x45d95  1      
.L_45da0:                        #        0x45d96  0      
  movl %esi, %esi                #  9     0x45d96  2      
  movzbl (%r15,%rsi,1), %eax     #  10    0x45d98  5      
  popq %r11                      #  11    0x45d9d  3      
  movl %edi, %edi                #  12    0x45da0  2      
  movb %al, (%r15,%rdi,1)        #  13    0x45da2  4      
  andl $0xffffffe0, %r11d        #  14    0x45da6  7      
  addq %r15, %r11                #  15    0x45dad  3      
  jmpq %r11                      #  16    0x45db0  3      
  nop                            #  17    0x45db3  1      
  nop                            #  18    0x45db4  1      
  nop                            #  19    0x45db5  1      
  nop                            #  20    0x45db6  1      
  nop                            #  21    0x45db7  1      
  nop                            #  22    0x45db8  1      
  nop                            #  23    0x45db9  1      
                                                          
.size _ZNSs13_S_copy_charsEPcPKcS1_, .-_ZNSs13_S_copy_charsEPcPKcS1_

