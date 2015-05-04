  .text
  .globl _Unwind_DeleteException
  .type _Unwind_DeleteException, @function

#! file-offset 0x58fc0
#! rip-offset  0x58fc0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
._Unwind_DeleteException:      #        0x58fc0  0      
  movl %edi, %esi              #  1     0x58fc0  2      
  movl %esi, %esi              #  2     0x58fc2  2      
  movl 0x8(%r15,%rsi,1), %eax  #  3     0x58fc4  5      
  testq %rax, %rax             #  4     0x58fc9  3      
  je .L_58fe0                  #  5     0x58fcc  6      
  movl $0x1, %edi              #  6     0x58fd2  5      
  andl $0xffffffe0, %eax       #  7     0x58fd7  5      
  addq %r15, %rax              #  8     0x58fdc  3      
  jmpq %rax                    #  9     0x58fdf  2      
  nop                          #  10    0x58fe1  1      
.L_58fe0:                      #        0x58fe2  0      
  popq %r11                    #  11    0x58fe2  3      
  andl $0xffffffe0, %r11d      #  12    0x58fe5  7      
  addq %r15, %r11              #  13    0x58fec  3      
  jmpq %r11                    #  14    0x58fef  3      
  nop                          #  15    0x58ff2  1      
  nop                          #  16    0x58ff3  1      
                                                        
.size _Unwind_DeleteException, .-_Unwind_DeleteException

