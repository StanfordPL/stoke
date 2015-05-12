  .text
  .globl _Unwind_GetIPInfo
  .type _Unwind_GetIPInfo, @function

#! file-offset 0x58e60
#! rip-offset  0x58e60
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetIPInfo:             #        0x58e60  0      
  movl %edi, %edi               #  1     0x58e60  2      
  movl %esi, %esi               #  2     0x58e62  2      
  movl %edi, %edi               #  3     0x58e64  2      
  movq 0x60(%r15,%rdi,1), %rax  #  4     0x58e66  5      
  popq %r11                     #  5     0x58e6b  3      
  shrq $0x3f, %rax              #  6     0x58e6e  4      
  movl %esi, %esi               #  7     0x58e72  2      
  movl %eax, (%r15,%rsi,1)      #  8     0x58e74  4      
  movl %edi, %edi               #  9     0x58e78  2      
  movl 0x4c(%r15,%rdi,1), %eax  #  10    0x58e7a  5      
  xchgw %ax, %ax                #  11    0x58e7f  3      
  andl $0xffffffe0, %r11d       #  12    0x58e82  7      
  addq %r15, %r11               #  13    0x58e89  3      
  jmpq %r11                     #  14    0x58e8c  3      
  nop                           #  15    0x58e8f  1      
  nop                           #  16    0x58e90  1      
                                                         
.size _Unwind_GetIPInfo, .-_Unwind_GetIPInfo

