  .text
  .globl _ZNSs13_S_copy_charsEPcS_S_
  .type _ZNSs13_S_copy_charsEPcS_S_, @function

#! file-offset 0x45d20
#! rip-offset  0x45d20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs13_S_copy_charsEPcS_S_:  #        0x45d20  0      
  movl %esi, %esi              #  1     0x45d20  2      
  movl %edi, %edi              #  2     0x45d22  2      
  subl %esi, %edx              #  3     0x45d24  2      
  cmpl $0x1, %edx              #  4     0x45d26  3      
  je .L_45d40                  #  5     0x45d29  6      
  jmpq .memcpy                 #  6     0x45d2f  5      
  nop                          #  7     0x45d34  1      
  nop                          #  8     0x45d35  1      
.L_45d40:                      #        0x45d36  0      
  movl %esi, %esi              #  9     0x45d36  2      
  movzbl (%r15,%rsi,1), %eax   #  10    0x45d38  5      
  popq %r11                    #  11    0x45d3d  3      
  movl %edi, %edi              #  12    0x45d40  2      
  movb %al, (%r15,%rdi,1)      #  13    0x45d42  4      
  andl $0xffffffe0, %r11d      #  14    0x45d46  7      
  addq %r15, %r11              #  15    0x45d4d  3      
  jmpq %r11                    #  16    0x45d50  3      
  nop                          #  17    0x45d53  1      
  nop                          #  18    0x45d54  1      
  nop                          #  19    0x45d55  1      
  nop                          #  20    0x45d56  1      
  nop                          #  21    0x45d57  1      
  nop                          #  22    0x45d58  1      
  nop                          #  23    0x45d59  1      
                                                        
.size _ZNSs13_S_copy_charsEPcS_S_, .-_ZNSs13_S_copy_charsEPcS_S_

