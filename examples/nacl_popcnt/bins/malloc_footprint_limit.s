  .text
  .globl malloc_footprint_limit
  .type malloc_footprint_limit, @function

#! file-offset 0x60660
#! rip-offset  0x60660
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_footprint_limit:      #        0x60660  0      
  movl 0xffd6412(%rip), %eax  #  1     0x60660  6      
  movl $0xffffffff, %edx      #  2     0x60666  5      
  popq %r11                   #  3     0x6066b  3      
  testl %eax, %eax            #  4     0x6066e  2      
  cmovel %edx, %eax           #  5     0x60670  3      
  andl $0xffffffe0, %r11d     #  6     0x60673  7      
  addq %r15, %r11             #  7     0x6067a  3      
  jmpq %r11                   #  8     0x6067d  3      
  nop                         #  9     0x60680  1      
                                                       
.size malloc_footprint_limit, .-malloc_footprint_limit

