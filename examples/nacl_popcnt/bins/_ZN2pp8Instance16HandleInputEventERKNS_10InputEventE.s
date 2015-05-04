  .text
  .globl _ZN2pp8Instance16HandleInputEventERKNS_10InputEventE
  .type _ZN2pp8Instance16HandleInputEventERKNS_10InputEventE, @function

#! file-offset 0x20820
#! rip-offset  0x20820
#! capacity    32 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp8Instance16HandleInputEventERKNS_10InputEventE:  #        0x20820  0      
  popq %r11                                             #  1     0x20820  3      
  xorl %eax, %eax                                       #  2     0x20823  2      
  andl $0xffffffe0, %r11d                               #  3     0x20825  7      
  addq %r15, %r11                                       #  4     0x2082c  3      
  jmpq %r11                                             #  5     0x2082f  3      
  nop                                                   #  6     0x20832  1      
  nop                                                   #  7     0x20833  1      
                                                                                 
.size _ZN2pp8Instance16HandleInputEventERKNS_10InputEventE, .-_ZN2pp8Instance16HandleInputEventERKNS_10InputEventE

