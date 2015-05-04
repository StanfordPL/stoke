  .text
  .globl _Unwind_GetIPInfo
  .type _Unwind_GetIPInfo, @function

#! file-offset 0x58ee0
#! rip-offset  0x58ee0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
._Unwind_GetIPInfo:             #        0x58ee0  0      
  movl %edi, %edi               #  1     0x58ee0  2      
  movl %esi, %esi               #  2     0x58ee2  2      
  movl %edi, %edi               #  3     0x58ee4  2      
  movq 0x60(%r15,%rdi,1), %rax  #  4     0x58ee6  5      
  popq %r11                     #  5     0x58eeb  3      
  shrq $0x3f, %rax              #  6     0x58eee  4      
  movl %esi, %esi               #  7     0x58ef2  2      
  movl %eax, (%r15,%rsi,1)      #  8     0x58ef4  4      
  movl %edi, %edi               #  9     0x58ef8  2      
  movl 0x4c(%r15,%rdi,1), %eax  #  10    0x58efa  5      
  xchgw %ax, %ax                #  11    0x58eff  3      
  andl $0xffffffe0, %r11d       #  12    0x58f02  7      
  addq %r15, %r11               #  13    0x58f09  3      
  jmpq %r11                     #  14    0x58f0c  3      
  nop                           #  15    0x58f0f  1      
  nop                           #  16    0x58f10  1      
                                                         
.size _Unwind_GetIPInfo, .-_Unwind_GetIPInfo

