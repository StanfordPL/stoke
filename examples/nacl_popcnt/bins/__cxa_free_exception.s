  .text
  .globl __cxa_free_exception
  .type __cxa_free_exception, @function

#! file-offset 0x4bfa0
#! rip-offset  0x4bfa0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.__cxa_free_exception:        #        0x4bfa0  0      
  movl %edi, %edi             #  1     0x4bfa0  2      
  movl $0x10032820, %ecx      #  2     0x4bfa2  5      
  cmpl %edi, %ecx             #  3     0x4bfa7  2      
  ja .L_4bfc0                 #  4     0x4bfa9  6      
  leal 0x4000(%rcx), %eax     #  5     0x4bfaf  6      
  cmpl %edi, %eax             #  6     0x4bfb5  2      
  ja .L_4bfe0                 #  7     0x4bfb7  6      
  nop                         #  8     0x4bfbd  1      
.L_4bfc0:                     #        0x4bfbe  0      
  subl $0x60, %edi            #  9     0x4bfbe  3      
  jmpq .free                  #  10    0x4bfc1  5      
  nop                         #  11    0x4bfc6  1      
  nop                         #  12    0x4bfc7  1      
.L_4bfe0:                     #        0x4bfc8  0      
  popq %r11                   #  13    0x4bfc8  3      
  subl %ecx, %edi             #  14    0x4bfcb  2      
  movl $0xfffffffe, %eax      #  15    0x4bfcd  5      
  movl %edi, %ecx             #  16    0x4bfd2  2      
  shrl $0x9, %ecx             #  17    0x4bfd4  3      
  roll %cl, %eax              #  18    0x4bfd7  2      
  andl %eax, 0xffea841(%rip)  #  19    0x4bfd9  6      
  andl $0xffffffe0, %r11d     #  20    0x4bfdf  7      
  addq %r15, %r11             #  21    0x4bfe6  3      
  jmpq %r11                   #  22    0x4bfe9  3      
                                                       
.size __cxa_free_exception, .-__cxa_free_exception

