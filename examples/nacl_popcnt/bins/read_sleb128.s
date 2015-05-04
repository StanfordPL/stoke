  .text
  .globl read_sleb128
  .type read_sleb128, @function

#! file-offset 0x58e20
#! rip-offset  0x58e20
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.read_sleb128:                #        0x58e20  0      
  movl %edi, %eax             #  1     0x58e20  2      
  movl %esi, %esi             #  2     0x58e22  2      
  xorl %r8d, %r8d             #  3     0x58e24  3      
  xorl %ecx, %ecx             #  4     0x58e27  2      
  nop                         #  5     0x58e29  1      
  nop                         #  6     0x58e2a  1      
.L_58e40:                     #        0x58e2b  0      
  movl %eax, %eax             #  7     0x58e2b  2      
  movzbl (%r15,%rax,1), %edi  #  8     0x58e2d  5      
  addl $0x1, %eax             #  9     0x58e32  3      
  movzbl %dil, %r9d           #  10    0x58e35  4      
  movl %r9d, %edx             #  11    0x58e39  3      
  andl $0x7f, %edx            #  12    0x58e3c  3      
  shll %cl, %edx              #  13    0x58e3f  2      
  addl $0x7, %ecx             #  14    0x58e41  3      
  orl %edx, %r8d              #  15    0x58e44  3      
  testb %dil, %dil            #  16    0x58e47  3      
  nop                         #  17    0x58e4a  1      
  js .L_58e40                 #  18    0x58e4b  6      
  cmpl $0x1f, %ecx            #  19    0x58e51  3      
  ja .L_58e80                 #  20    0x58e54  6      
  andl $0x40, %r9d            #  21    0x58e5a  4      
  je .L_58e80                 #  22    0x58e5e  6      
  movl $0xffffffff, %edx      #  23    0x58e64  5      
  shll %cl, %edx              #  24    0x58e69  2      
  orl %edx, %r8d              #  25    0x58e6b  3      
  nop                         #  26    0x58e6e  1      
.L_58e80:                     #        0x58e6f  0      
  popq %r11                   #  27    0x58e6f  3      
  movl %esi, %esi             #  28    0x58e72  2      
  movl %r8d, (%r15,%rsi,1)    #  29    0x58e74  4      
  andl $0xffffffe0, %r11d     #  30    0x58e78  7      
  addq %r15, %r11             #  31    0x58e7f  3      
  jmpq %r11                   #  32    0x58e82  3      
  nop                         #  33    0x58e85  1      
                                                       
.size read_sleb128, .-read_sleb128

