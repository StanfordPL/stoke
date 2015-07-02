  .text
  .globl _Z7computej
  .type _Z7computej, @function

#! file-offset 0x201e0
#! rip-offset  0x201e0
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
._Z7computej:                 #        0x201e0  0      
  movzwq %di, %rcx            #  1     0x201e0  4      
  popcntl %edi, %eax          #  2     0x201e4  4      
  sbbw %cx, %cx               #  5     0x201ef  3      
  orb %cl, %ah                #  12    0x2020a  2      
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  nop
  popq %r11                #  14    0x20205  3      
  andl $0xffffffe0, %r11d  #  15    0x20208  7      
  addq %r15, %r11          #  16    0x2020f  3      
  jmpq %r11                #  17    0x20212  3
                                                       
.size _Z7computej, .-_Z7computej
