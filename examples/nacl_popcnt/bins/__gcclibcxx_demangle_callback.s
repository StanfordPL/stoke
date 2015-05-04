  .text
  .globl __gcclibcxx_demangle_callback
  .type __gcclibcxx_demangle_callback, @function

#! file-offset 0x580a0
#! rip-offset  0x580a0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  
.__gcclibcxx_demangle_callback:  #        0x580a0  0      
  movl %esi, %esi                #  1     0x580a0  2      
  subl $0x8, %esp                #  2     0x580a2  3      
  addq %r15, %rsp                #  3     0x580a5  3      
  movl %edi, %edi                #  4     0x580a8  2      
  testq %rsi, %rsi               #  5     0x580aa  3      
  movl %edx, %edx                #  6     0x580ad  2      
  je .L_58100                    #  7     0x580af  6      
  testq %rdi, %rdi               #  8     0x580b5  3      
  je .L_58100                    #  9     0x580b8  6      
  movl %edx, %ecx                #  10    0x580be  2      
  movl %esi, %edx                #  11    0x580c0  2      
  movl $0x11, %esi               #  12    0x580c2  5      
  nop                            #  13    0x580c7  1      
  nop                            #  14    0x580c8  1      
  nop                            #  15    0x580c9  1      
  callq .d_demangle_callback     #  16    0x580ca  5      
  cmpl $0x1, %eax                #  17    0x580cf  3      
  sbbl %eax, %eax                #  18    0x580d2  2      
  addl $0x8, %esp                #  19    0x580d4  3      
  addq %r15, %rsp                #  20    0x580d7  3      
  popq %r11                      #  21    0x580da  3      
  andl $0xfffffffe, %eax         #  22    0x580dd  5      
  andl $0xffffffe0, %r11d        #  23    0x580e2  7      
  addq %r15, %r11                #  24    0x580e9  3      
  jmpq %r11                      #  25    0x580ec  3      
  nop                            #  26    0x580ef  1      
.L_58100:                        #        0x580f0  0      
  addl $0x8, %esp                #  27    0x580f0  3      
  addq %r15, %rsp                #  28    0x580f3  3      
  movl $0xfffffffd, %eax         #  29    0x580f6  5      
  popq %r11                      #  30    0x580fb  3      
  andl $0xffffffe0, %r11d        #  31    0x580fe  7      
  addq %r15, %r11                #  32    0x58105  3      
  jmpq %r11                      #  33    0x58108  3      
  nop                            #  34    0x5810b  1      
                                                          
.size __gcclibcxx_demangle_callback, .-__gcclibcxx_demangle_callback

