  .text
  .globl __ascii_wctomb
  .type __ascii_wctomb, @function

#! file-offset 0x77520
#! rip-offset  0x77520
#! capacity    96 bytes

# Text                       #  Line  RIP      Bytes  
.__ascii_wctomb:             #        0x77520  0      
  movl %esi, %esi            #  1     0x77520  2      
  xorl %eax, %eax            #  2     0x77522  2      
  movl %edi, %edi            #  3     0x77524  2      
  testq %rsi, %rsi           #  4     0x77526  3      
  je .L_77540                #  5     0x77529  6      
  cmpl $0xff, %edx           #  6     0x7752f  3      
  ja .L_77560                #  7     0x77532  6      
  movl %esi, %esi            #  8     0x77538  2      
  movb %dl, (%r15,%rsi,1)    #  9     0x7753a  4      
  movl $0x1, %eax            #  10    0x7753e  5      
  xchgw %ax, %ax             #  11    0x77543  3      
.L_77540:                    #        0x77546  0      
  popq %r11                  #  12    0x77546  3      
  andl $0xffffffe0, %r11d    #  13    0x77549  7      
  addq %r15, %r11            #  14    0x77550  3      
  jmpq %r11                  #  15    0x77553  3      
  nop                        #  16    0x77556  1      
  nop                        #  17    0x77557  1      
.L_77560:                    #        0x77558  0      
  movl %edi, %edi            #  18    0x77558  2      
  movl $0x54, (%r15,%rdi,1)  #  19    0x7755a  8      
  movl $0xffffffff, %eax     #  20    0x77562  5      
  popq %r11                  #  21    0x77567  3      
  andl $0xffffffe0, %r11d    #  22    0x7756a  7      
  addq %r15, %r11            #  23    0x77571  3      
  jmpq %r11                  #  24    0x77574  3      
  nop                        #  25    0x77577  1      
                                                      
.size __ascii_wctomb, .-__ascii_wctomb

