  .text
  .globl __cxa_free_exception
  .type __cxa_free_exception, @function

#! file-offset 0x4c040
#! rip-offset  0x4c040
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.__cxa_free_exception:        #        0x4c040  0      
  movl %edi, %edi             #  1     0x4c040  2      
  movl $0x10032820, %ecx      #  2     0x4c042  5      
  cmpl %edi, %ecx             #  3     0x4c047  2      
  ja .L_4c060                 #  4     0x4c049  6      
  leal 0x4000(%rcx), %eax     #  5     0x4c04f  6      
  cmpl %edi, %eax             #  6     0x4c055  2      
  ja .L_4c080                 #  7     0x4c057  6      
  nop                         #  8     0x4c05d  1      
.L_4c060:                     #        0x4c05e  0      
  subl $0x60, %edi            #  9     0x4c05e  3      
  jmpq .free                  #  10    0x4c061  5      
  nop                         #  11    0x4c066  1      
  nop                         #  12    0x4c067  1      
.L_4c080:                     #        0x4c068  0      
  popq %r11                   #  13    0x4c068  3      
  subl %ecx, %edi             #  14    0x4c06b  2      
  movl $0xfffffffe, %eax      #  15    0x4c06d  5      
  movl %edi, %ecx             #  16    0x4c072  2      
  shrl $0x9, %ecx             #  17    0x4c074  3      
  roll %cl, %eax              #  18    0x4c077  2      
  andl %eax, 0xffea7a1(%rip)  #  19    0x4c079  6      
  andl $0xffffffe0, %r11d     #  20    0x4c07f  7      
  addq %r15, %r11             #  21    0x4c086  3      
  jmpq %r11                   #  22    0x4c089  3      
                                                       
.size __cxa_free_exception, .-__cxa_free_exception

