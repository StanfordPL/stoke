  .text
  .globl read_sleb128
  .type read_sleb128, @function

#! file-offset 0x58d80
#! rip-offset  0x58d80
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.read_sleb128:                #        0x58d80  0      
  movl %edi, %eax             #  1     0x58d80  2      
  movl %esi, %esi             #  2     0x58d82  2      
  xorl %r8d, %r8d             #  3     0x58d84  3      
  xorl %ecx, %ecx             #  4     0x58d87  2      
  nop                         #  5     0x58d89  1      
  nop                         #  6     0x58d8a  1      
.L_58da0:                     #        0x58d8b  0      
  movl %eax, %eax             #  7     0x58d8b  2      
  movzbl (%r15,%rax,1), %edi  #  8     0x58d8d  5      
  addl $0x1, %eax             #  9     0x58d92  3      
  movzbl %dil, %r9d           #  10    0x58d95  4      
  movl %r9d, %edx             #  11    0x58d99  3      
  andl $0x7f, %edx            #  12    0x58d9c  3      
  shll %cl, %edx              #  13    0x58d9f  2      
  addl $0x7, %ecx             #  14    0x58da1  3      
  orl %edx, %r8d              #  15    0x58da4  3      
  testb %dil, %dil            #  16    0x58da7  3      
  nop                         #  17    0x58daa  1      
  js .L_58da0                 #  18    0x58dab  6      
  cmpl $0x1f, %ecx            #  19    0x58db1  3      
  ja .L_58de0                 #  20    0x58db4  6      
  andl $0x40, %r9d            #  21    0x58dba  4      
  je .L_58de0                 #  22    0x58dbe  6      
  movl $0xffffffff, %edx      #  23    0x58dc4  5      
  shll %cl, %edx              #  24    0x58dc9  2      
  orl %edx, %r8d              #  25    0x58dcb  3      
  nop                         #  26    0x58dce  1      
.L_58de0:                     #        0x58dcf  0      
  popq %r11                   #  27    0x58dcf  3      
  movl %esi, %esi             #  28    0x58dd2  2      
  movl %r8d, (%r15,%rsi,1)    #  29    0x58dd4  4      
  andl $0xffffffe0, %r11d     #  30    0x58dd8  7      
  addq %r15, %r11             #  31    0x58ddf  3      
  jmpq %r11                   #  32    0x58de2  3      
  nop                         #  33    0x58de5  1      
                                                       
.size read_sleb128, .-read_sleb128

