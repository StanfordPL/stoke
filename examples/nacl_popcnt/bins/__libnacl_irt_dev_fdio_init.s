  .text
  .globl __libnacl_irt_dev_fdio_init
  .type __libnacl_irt_dev_fdio_init, @function

#! file-offset 0x882a0
#! rip-offset  0x882a0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  
.__libnacl_irt_dev_fdio_init:  #        0x882a0  0      
  subl $0x8, %esp              #  1     0x882a0  3      
  addq %r15, %rsp              #  2     0x882a3  3      
  movl $0x38, %edx             #  3     0x882a6  5      
  movl $0x10036e80, %esi       #  4     0x882ab  5      
  movl $0x100251e0, %edi       #  5     0x882b0  5      
  nop                          #  6     0x882b5  1      
  callq .__libnacl_irt_query   #  7     0x882b6  5      
  testl %eax, %eax             #  8     0x882bb  2      
  je .L_88300                  #  9     0x882bd  6      
  nop                          #  10    0x882c3  1      
  nop                          #  11    0x882c4  1      
.L_882e0:                      #        0x882c5  0      
  addl $0x8, %esp              #  12    0x882c5  3      
  addq %r15, %rsp              #  13    0x882c8  3      
  popq %r11                    #  14    0x882cb  3      
  andl $0xffffffe0, %r11d      #  15    0x882ce  7      
  addq %r15, %r11              #  16    0x882d5  3      
  jmpq %r11                    #  17    0x882d8  3      
  nop                          #  18    0x882db  1      
.L_88300:                      #        0x882dc  0      
  movl $0x20, %edx             #  19    0x882dc  5      
  movl $0x10036e80, %esi       #  20    0x882e1  5      
  movl $0x10023404, %edi       #  21    0x882e6  5      
  nop                          #  22    0x882eb  1      
  callq .__libnacl_irt_query   #  23    0x882ec  5      
  testl %eax, %eax             #  24    0x882f1  2      
  jne .L_882e0                 #  25    0x882f3  6      
  movl $0x20, %edx             #  26    0x882f9  5      
  movl $0x10036e80, %esi       #  27    0x882fe  5      
  movl $0x10023416, %edi       #  28    0x88303  5      
  addl $0x8, %esp              #  29    0x88308  3      
  addq %r15, %rsp              #  30    0x8830b  3      
  jmpq .__libnacl_irt_query    #  31    0x8830e  5      
  nop                          #  32    0x88313  1      
  nop                          #  33    0x88314  1      
                                                        
.size __libnacl_irt_dev_fdio_init, .-__libnacl_irt_dev_fdio_init

