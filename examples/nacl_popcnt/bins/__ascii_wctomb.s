  .text
  .globl __ascii_wctomb
  .type __ascii_wctomb, @function

#! file-offset 0x77480
#! rip-offset  0x77480
#! capacity    96 bytes

# Text                       #  Line  RIP      Bytes  
.__ascii_wctomb:             #        0x77480  0      
  movl %esi, %esi            #  1     0x77480  2      
  xorl %eax, %eax            #  2     0x77482  2      
  movl %edi, %edi            #  3     0x77484  2      
  testq %rsi, %rsi           #  4     0x77486  3      
  je .L_774a0                #  5     0x77489  6      
  cmpl $0xff, %edx           #  6     0x7748f  3      
  ja .L_774c0                #  7     0x77492  6      
  movl %esi, %esi            #  8     0x77498  2      
  movb %dl, (%r15,%rsi,1)    #  9     0x7749a  4      
  movl $0x1, %eax            #  10    0x7749e  5      
  xchgw %ax, %ax             #  11    0x774a3  3      
.L_774a0:                    #        0x774a6  0      
  popq %r11                  #  12    0x774a6  3      
  andl $0xffffffe0, %r11d    #  13    0x774a9  7      
  addq %r15, %r11            #  14    0x774b0  3      
  jmpq %r11                  #  15    0x774b3  3      
  nop                        #  16    0x774b6  1      
  nop                        #  17    0x774b7  1      
.L_774c0:                    #        0x774b8  0      
  movl %edi, %edi            #  18    0x774b8  2      
  movl $0x54, (%r15,%rdi,1)  #  19    0x774ba  8      
  movl $0xffffffff, %eax     #  20    0x774c2  5      
  popq %r11                  #  21    0x774c7  3      
  andl $0xffffffe0, %r11d    #  22    0x774ca  7      
  addq %r15, %r11            #  23    0x774d1  3      
  jmpq %r11                  #  24    0x774d4  3      
  nop                        #  25    0x774d7  1      
                                                      
.size __ascii_wctomb, .-__ascii_wctomb

