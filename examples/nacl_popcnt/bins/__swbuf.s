  .text
  .globl __swbuf
  .type __swbuf, @function

#! file-offset 0x77180
#! rip-offset  0x77180
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.__swbuf:                   #        0x77180  0      
  movq %rbx, -0x10(%rsp)    #  1     0x77180  5      
  movq %r12, -0x8(%rsp)     #  2     0x77185  5      
  subl $0x18, %esp          #  3     0x7718a  3      
  addq %r15, %rsp           #  4     0x7718d  3      
  movl %edi, %ebx           #  5     0x77190  2      
  movl %esi, %r12d          #  6     0x77192  3      
  nop                       #  7     0x77195  1      
  callq .__nacl_read_tp     #  8     0x77196  5      
  leaq -0x480(%rax), %rax   #  9     0x7719b  7      
  movl %r12d, %edx          #  10    0x771a2  3      
  movl %ebx, %esi           #  11    0x771a5  2      
  movq 0x10(%rsp), %r12     #  12    0x771a7  5      
  movq 0x8(%rsp), %rbx      #  13    0x771ac  5      
  movl %eax, %eax           #  14    0x771b1  2      
  movl (%r15,%rax,1), %edi  #  15    0x771b3  4      
  nop                       #  16    0x771b7  1      
  addl $0x18, %esp          #  17    0x771b8  3      
  addq %r15, %rsp           #  18    0x771bb  3      
  jmpq .__swbuf_r           #  19    0x771be  5      
  nop                       #  20    0x771c3  1      
  nop                       #  21    0x771c4  1      
  nop                       #  22    0x771c5  1      
  nop                       #  23    0x771c6  1      
  nop                       #  24    0x771c7  1      
  nop                       #  25    0x771c8  1      
  nop                       #  26    0x771c9  1      
  nop                       #  27    0x771ca  1      
  nop                       #  28    0x771cb  1      
  nop                       #  29    0x771cc  1      
  nop                       #  30    0x771cd  1      
  nop                       #  31    0x771ce  1      
  nop                       #  32    0x771cf  1      
  nop                       #  33    0x771d0  1      
  nop                       #  34    0x771d1  1      
  nop                       #  35    0x771d2  1      
  nop                       #  36    0x771d3  1      
  nop                       #  37    0x771d4  1      
  nop                       #  38    0x771d5  1      
  nop                       #  39    0x771d6  1      
  nop                       #  40    0x771d7  1      
                                                     
.size __swbuf, .-__swbuf

