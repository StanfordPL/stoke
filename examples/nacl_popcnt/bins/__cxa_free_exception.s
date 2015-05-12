  .text
  .globl __cxa_free_exception
  .type __cxa_free_exception, @function

#! file-offset 0x4bfc0
#! rip-offset  0x4bfc0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.__cxa_free_exception:        #        0x4bfc0  0      
  movl %edi, %edi             #  1     0x4bfc0  2      
  movl $0x10032820, %ecx      #  2     0x4bfc2  5      
  cmpl %edi, %ecx             #  3     0x4bfc7  2      
  ja .L_4bfe0                 #  4     0x4bfc9  6      
  leal 0x4000(%rcx), %eax     #  5     0x4bfcf  6      
  cmpl %edi, %eax             #  6     0x4bfd5  2      
  ja .L_4c000                 #  7     0x4bfd7  6      
  nop                         #  8     0x4bfdd  1      
.L_4bfe0:                     #        0x4bfde  0      
  subl $0x60, %edi            #  9     0x4bfde  3      
  jmpq .free                  #  10    0x4bfe1  5      
  nop                         #  11    0x4bfe6  1      
  nop                         #  12    0x4bfe7  1      
.L_4c000:                     #        0x4bfe8  0      
  popq %r11                   #  13    0x4bfe8  3      
  subl %ecx, %edi             #  14    0x4bfeb  2      
  movl $0xfffffffe, %eax      #  15    0x4bfed  5      
  movl %edi, %ecx             #  16    0x4bff2  2      
  shrl $0x9, %ecx             #  17    0x4bff4  3      
  roll %cl, %eax              #  18    0x4bff7  2      
  andl %eax, 0xffea821(%rip)  #  19    0x4bff9  6      
  andl $0xffffffe0, %r11d     #  20    0x4bfff  7      
  addq %r15, %r11             #  21    0x4c006  3      
  jmpq %r11                   #  22    0x4c009  3      
                                                       
.size __cxa_free_exception, .-__cxa_free_exception

