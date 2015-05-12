  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x882c0
#! rip-offset  0x882c0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  
.__libnacl_irt_dev_fdio_init:  #        0x882c0  0      
  subl $0x8, %esp              #  1     0x882c0  3      
  addq %r15, %rsp              #  2     0x882c3  3      
  movl $0x38, %edx             #  3     0x882c6  5      
  movl $0x10036e80, %esi       #  4     0x882cb  5      
  movl $0x100251e0, %edi       #  5     0x882d0  5      
  nop                          #  6     0x882d5  1      
  callq .__libnacl_irt_query   #  7     0x882d6  5      
  testl %eax, %eax             #  8     0x882db  2      
  je .L_88320                  #  9     0x882dd  6      
  nop                          #  10    0x882e3  1      
  nop                          #  11    0x882e4  1      
.L_88300:                      #        0x882e5  0      
  addl $0x8, %esp              #  12    0x882e5  3      
  addq %r15, %rsp              #  13    0x882e8  3      
  popq %r11                    #  14    0x882eb  3      
  andl $0xffffffe0, %r11d      #  15    0x882ee  7      
  addq %r15, %r11              #  16    0x882f5  3      
  jmpq %r11                    #  17    0x882f8  3      
  nop                          #  18    0x882fb  1      
.L_88320:                      #        0x882fc  0      
  movl $0x20, %edx             #  19    0x882fc  5      
  movl $0x10036e80, %esi       #  20    0x88301  5      
  movl $0x10023404, %edi       #  21    0x88306  5      
  nop                          #  22    0x8830b  1      
  callq .__libnacl_irt_query   #  23    0x8830c  5      
  testl %eax, %eax             #  24    0x88311  2      
  jne .L_88300                 #  25    0x88313  6      
  movl $0x20, %edx             #  26    0x88319  5      
  movl $0x10036e80, %esi       #  27    0x8831e  5      
  movl $0x10023416, %edi       #  28    0x88323  5      
  addl $0x8, %esp              #  29    0x88328  3      
  addq %r15, %rsp              #  30    0x8832b  3      
  jmpq .__libnacl_irt_query    #  31    0x8832e  5      
  nop                          #  32    0x88333  1      
  nop                          #  33    0x88334  1      
                                                        
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

