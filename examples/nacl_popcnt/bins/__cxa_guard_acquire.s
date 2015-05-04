  .text
  .globl __cxa_guard_acquire
  .type __cxa_guard_acquire, @function

#! file-offset 0x4b640
#! rip-offset  0x4b640
#! capacity    192 bytes

# Text                             #  Line  RIP      Bytes  
.__cxa_guard_acquire:              #        0x4b640  0      
  movl %edi, %edi                  #  1     0x4b640  2      
  subl $0x8, %esp                  #  2     0x4b642  3      
  addq %r15, %rsp                  #  3     0x4b645  3      
  movl %edi, %edi                  #  4     0x4b648  2      
  movzbl (%r15,%rdi,1), %edx       #  5     0x4b64a  5      
  xorl %eax, %eax                  #  6     0x4b64f  2      
  testb %dl, %dl                   #  7     0x4b651  2      
  je .L_4b680                      #  8     0x4b653  6      
  nop                              #  9     0x4b659  1      
.L_4b660:                          #        0x4b65a  0      
  addl $0x8, %esp                  #  10    0x4b65a  3      
  addq %r15, %rsp                  #  11    0x4b65d  3      
  popq %r11                        #  12    0x4b660  3      
  andl $0xffffffe0, %r11d          #  13    0x4b663  7      
  addq %r15, %r11                  #  14    0x4b66a  3      
  jmpq %r11                        #  15    0x4b66d  3      
  nop                              #  16    0x4b670  1      
.L_4b680:                          #        0x4b671  0      
  movl %edi, %edi                  #  17    0x4b671  2      
  cmpb $0x0, (%r15,%rdi,1)         #  18    0x4b673  5      
  jne .L_4b660                     #  19    0x4b678  6      
  addl $0x1, %edi                  #  20    0x4b67e  3      
  movl %edi, %edi                  #  21    0x4b681  2      
  cmpb $0x0, (%r15,%rdi,1)         #  22    0x4b683  5      
  jne .L_4b6c0                     #  23    0x4b688  6      
  movl %edi, %edi                  #  24    0x4b68e  2      
  movb $0x1, (%r15,%rdi,1)         #  25    0x4b690  5      
  nop                              #  26    0x4b695  1      
  addl $0x8, %esp                  #  27    0x4b696  3      
  addq %r15, %rsp                  #  28    0x4b699  3      
  movl $0x1, %eax                  #  29    0x4b69c  5      
  popq %r11                        #  30    0x4b6a1  3      
  andl $0xffffffe0, %r11d          #  31    0x4b6a4  7      
  addq %r15, %r11                  #  32    0x4b6ab  3      
  jmpq %r11                        #  33    0x4b6ae  3      
  nop                              #  34    0x4b6b1  1      
.L_4b6c0:                          #        0x4b6b2  0      
  movl $0x4, %edi                  #  35    0x4b6b2  5      
  nop                              #  36    0x4b6b7  1      
  nop                              #  37    0x4b6b8  1      
  callq .__cxa_allocate_exception  #  38    0x4b6b9  5      
  movl %eax, %edi                  #  39    0x4b6be  2      
  movl $0x4b740, %edx              #  40    0x4b6c0  5      
  movl $0x10020be4, %esi           #  41    0x4b6c5  5      
  movl %edi, %edi                  #  42    0x4b6ca  2      
  movl $0x10020ba8, (%r15,%rdi,1)  #  43    0x4b6cc  8      
  nop                              #  44    0x4b6d4  1      
  callq .__cxa_throw               #  45    0x4b6d5  5      
                                                            
.size __cxa_guard_acquire, .-__cxa_guard_acquire

