  .text
  .globl __gcclibcxx_demangle_callback
  .type __gcclibcxx_demangle_callback, @function

#! file-offset 0x58000
#! rip-offset  0x58000
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  
.__gcclibcxx_demangle_callback:  #        0x58000  0      
  movl %esi, %esi                #  1     0x58000  2      
  subl $0x8, %esp                #  2     0x58002  3      
  addq %r15, %rsp                #  3     0x58005  3      
  movl %edi, %edi                #  4     0x58008  2      
  testq %rsi, %rsi               #  5     0x5800a  3      
  movl %edx, %edx                #  6     0x5800d  2      
  je .L_58060                    #  7     0x5800f  6      
  testq %rdi, %rdi               #  8     0x58015  3      
  je .L_58060                    #  9     0x58018  6      
  movl %edx, %ecx                #  10    0x5801e  2      
  movl %esi, %edx                #  11    0x58020  2      
  movl $0x11, %esi               #  12    0x58022  5      
  nop                            #  13    0x58027  1      
  nop                            #  14    0x58028  1      
  nop                            #  15    0x58029  1      
  callq .d_demangle_callback     #  16    0x5802a  5      
  cmpl $0x1, %eax                #  17    0x5802f  3      
  sbbl %eax, %eax                #  18    0x58032  2      
  addl $0x8, %esp                #  19    0x58034  3      
  addq %r15, %rsp                #  20    0x58037  3      
  popq %r11                      #  21    0x5803a  3      
  andl $0xfffffffe, %eax         #  22    0x5803d  5      
  andl $0xffffffe0, %r11d        #  23    0x58042  7      
  addq %r15, %r11                #  24    0x58049  3      
  jmpq %r11                      #  25    0x5804c  3      
  nop                            #  26    0x5804f  1      
.L_58060:                        #        0x58050  0      
  addl $0x8, %esp                #  27    0x58050  3      
  addq %r15, %rsp                #  28    0x58053  3      
  movl $0xfffffffd, %eax         #  29    0x58056  5      
  popq %r11                      #  30    0x5805b  3      
  andl $0xffffffe0, %r11d        #  31    0x5805e  7      
  addq %r15, %r11                #  32    0x58065  3      
  jmpq %r11                      #  33    0x58068  3      
  nop                            #  34    0x5806b  1      
                                                          
.size __gcclibcxx_demangle_callback, .-__gcclibcxx_demangle_callback

