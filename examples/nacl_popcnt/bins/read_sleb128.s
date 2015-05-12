  .text
  .globl read_sleb128
  .type read_sleb128, @function

#! file-offset 0x58da0
#! rip-offset  0x58da0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.read_sleb128:                #        0x58da0  0      
  movl %edi, %eax             #  1     0x58da0  2      
  movl %esi, %esi             #  2     0x58da2  2      
  xorl %r8d, %r8d             #  3     0x58da4  3      
  xorl %ecx, %ecx             #  4     0x58da7  2      
  nop                         #  5     0x58da9  1      
  nop                         #  6     0x58daa  1      
.L_58dc0:                     #        0x58dab  0      
  movl %eax, %eax             #  7     0x58dab  2      
  movzbl (%r15,%rax,1), %edi  #  8     0x58dad  5      
  addl $0x1, %eax             #  9     0x58db2  3      
  movzbl %dil, %r9d           #  10    0x58db5  4      
  movl %r9d, %edx             #  11    0x58db9  3      
  andl $0x7f, %edx            #  12    0x58dbc  3      
  shll %cl, %edx              #  13    0x58dbf  2      
  addl $0x7, %ecx             #  14    0x58dc1  3      
  orl %edx, %r8d              #  15    0x58dc4  3      
  testb %dil, %dil            #  16    0x58dc7  3      
  nop                         #  17    0x58dca  1      
  js .L_58dc0                 #  18    0x58dcb  6      
  cmpl $0x1f, %ecx            #  19    0x58dd1  3      
  ja .L_58e00                 #  20    0x58dd4  6      
  andl $0x40, %r9d            #  21    0x58dda  4      
  je .L_58e00                 #  22    0x58dde  6      
  movl $0xffffffff, %edx      #  23    0x58de4  5      
  shll %cl, %edx              #  24    0x58de9  2      
  orl %edx, %r8d              #  25    0x58deb  3      
  nop                         #  26    0x58dee  1      
.L_58e00:                     #        0x58def  0      
  popq %r11                   #  27    0x58def  3      
  movl %esi, %esi             #  28    0x58df2  2      
  movl %r8d, (%r15,%rsi,1)    #  29    0x58df4  4      
  andl $0xffffffe0, %r11d     #  30    0x58df8  7      
  addq %r15, %r11             #  31    0x58dff  3      
  jmpq %r11                   #  32    0x58e02  3      
  nop                         #  33    0x58e05  1      
                                                       
.size read_sleb128, .-read_sleb128

