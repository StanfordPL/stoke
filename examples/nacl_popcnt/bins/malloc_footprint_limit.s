  .text
  .globl malloc_footprint_limit
  .type malloc_footprint_limit, @function

#! file-offset 0x60680
#! rip-offset  0x60680
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.malloc_footprint_limit:      #        0x60680  0      
  movl 0xffd63f2(%rip), %eax  #  1     0x60680  6      
  movl $0xffffffff, %edx      #  2     0x60686  5      
  popq %r11                   #  3     0x6068b  3      
  testl %eax, %eax            #  4     0x6068e  2      
  cmovel %edx, %eax           #  5     0x60690  3      
  andl $0xffffffe0, %r11d     #  6     0x60693  7      
  addq %r15, %r11             #  7     0x6069a  3      
  jmpq %r11                   #  8     0x6069d  3      
  nop                         #  9     0x606a0  1      
                                                       
.size malloc_footprint_limit, .-malloc_footprint_limit

