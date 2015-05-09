  .text
  .globl _Unwind_DeleteException
  .type _Unwind_DeleteException, @function

#! file-offset 0x58f20
#! rip-offset  0x58f20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._Unwind_DeleteException:      #        0x58f20  0      
  movl %edi, %esi              #  1     0x58f20  2      
  movl %esi, %esi              #  2     0x58f22  2      
  movl 0x8(%r15,%rsi,1), %eax  #  3     0x58f24  5      
  testq %rax, %rax             #  4     0x58f29  3      
  je .L_58f40                  #  5     0x58f2c  6      
  movl $0x1, %edi              #  6     0x58f32  5      
  andl $0xffffffe0, %eax       #  7     0x58f37  5      
  addq %r15, %rax              #  8     0x58f3c  3      
  jmpq %rax                    #  9     0x58f3f  2      
  nop                          #  10    0x58f41  1      
.L_58f40:                      #        0x58f42  0      
  popq %r11                    #  11    0x58f42  3      
  andl $0xffffffe0, %r11d      #  12    0x58f45  7      
  addq %r15, %r11              #  13    0x58f4c  3      
  jmpq %r11                    #  14    0x58f4f  3      
  nop                          #  15    0x58f52  1      
  nop                          #  16    0x58f53  1      
                                                        
.size _Unwind_DeleteException, .-_Unwind_DeleteException

