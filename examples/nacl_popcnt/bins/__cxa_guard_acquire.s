  .text
  .globl __cxa_guard_acquire
  .type __cxa_guard_acquire, @function

#! file-offset 0x4b5c0
#! rip-offset  0x4b5c0
#! capacity    192 bytes

# Text                             #  Line  RIP      Bytes  
.__cxa_guard_acquire:              #        0x4b5c0  0      
  movl %edi, %edi                  #  1     0x4b5c0  2      
  subl $0x8, %esp                  #  2     0x4b5c2  3      
  addq %r15, %rsp                  #  3     0x4b5c5  3      
  movl %edi, %edi                  #  4     0x4b5c8  2      
  movzbl (%r15,%rdi,1), %edx       #  5     0x4b5ca  5      
  xorl %eax, %eax                  #  6     0x4b5cf  2      
  testb %dl, %dl                   #  7     0x4b5d1  2      
  je .L_4b600                      #  8     0x4b5d3  6      
  nop                              #  9     0x4b5d9  1      
.L_4b5e0:                          #        0x4b5da  0      
  addl $0x8, %esp                  #  10    0x4b5da  3      
  addq %r15, %rsp                  #  11    0x4b5dd  3      
  popq %r11                        #  12    0x4b5e0  3      
  andl $0xffffffe0, %r11d          #  13    0x4b5e3  7      
  addq %r15, %r11                  #  14    0x4b5ea  3      
  jmpq %r11                        #  15    0x4b5ed  3      
  nop                              #  16    0x4b5f0  1      
.L_4b600:                          #        0x4b5f1  0      
  movl %edi, %edi                  #  17    0x4b5f1  2      
  cmpb $0x0, (%r15,%rdi,1)         #  18    0x4b5f3  5      
  jne .L_4b5e0                     #  19    0x4b5f8  6      
  addl $0x1, %edi                  #  20    0x4b5fe  3      
  movl %edi, %edi                  #  21    0x4b601  2      
  cmpb $0x0, (%r15,%rdi,1)         #  22    0x4b603  5      
  jne .L_4b640                     #  23    0x4b608  6      
  movl %edi, %edi                  #  24    0x4b60e  2      
  movb $0x1, (%r15,%rdi,1)         #  25    0x4b610  5      
  nop                              #  26    0x4b615  1      
  addl $0x8, %esp                  #  27    0x4b616  3      
  addq %r15, %rsp                  #  28    0x4b619  3      
  movl $0x1, %eax                  #  29    0x4b61c  5      
  popq %r11                        #  30    0x4b621  3      
  andl $0xffffffe0, %r11d          #  31    0x4b624  7      
  addq %r15, %r11                  #  32    0x4b62b  3      
  jmpq %r11                        #  33    0x4b62e  3      
  nop                              #  34    0x4b631  1      
.L_4b640:                          #        0x4b632  0      
  movl $0x4, %edi                  #  35    0x4b632  5      
  nop                              #  36    0x4b637  1      
  nop                              #  37    0x4b638  1      
  callq .__cxa_allocate_exception  #  38    0x4b639  5      
  movl %eax, %edi                  #  39    0x4b63e  2      
  movl $0x4b6c0, %edx              #  40    0x4b640  5      
  movl $0x10020be4, %esi           #  41    0x4b645  5      
  movl %edi, %edi                  #  42    0x4b64a  2      
  movl $0x10020ba8, (%r15,%rdi,1)  #  43    0x4b64c  8      
  nop                              #  44    0x4b654  1      
  callq .__cxa_throw               #  45    0x4b655  5      
                                                            
.size __cxa_guard_acquire, .-__cxa_guard_acquire

