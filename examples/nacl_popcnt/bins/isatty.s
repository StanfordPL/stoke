  .text
  .globl isatty
  .type isatty, @function

#! file-offset 0x881c0
#! rip-offset  0x881c0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.isatty:                        #        0x881c0  0      
  pushq %rbx                    #  1     0x881c0  2      
  movl $0x882a0, %esi           #  2     0x881c2  5      
  movl %edi, %ebx               #  3     0x881c7  2      
  movl $0x10036eb4, %edi        #  4     0x881c9  5      
  subl $0x10, %esp              #  5     0x881ce  3      
  addq %r15, %rsp               #  6     0x881d1  3      
  nop                           #  7     0x881d4  1      
  callq .__libnacl_irt_init_fn  #  8     0x881d5  5      
  movl %eax, %edx               #  9     0x881da  2      
  xorl %eax, %eax               #  10    0x881dc  2      
  testl %edx, %edx              #  11    0x881de  2      
  jne .L_88220                  #  12    0x881e0  6      
  nop                           #  13    0x881e6  1      
  nop                           #  14    0x881e7  1      
.L_88200:                       #        0x881e8  0      
  addl $0x10, %esp              #  15    0x881e8  3      
  addq %r15, %rsp               #  16    0x881eb  3      
  popq %rbx                     #  17    0x881ee  2      
  popq %r11                     #  18    0x881f0  3      
  andl $0xffffffe0, %r11d       #  19    0x881f3  7      
  addq %r15, %r11               #  20    0x881fa  3      
  jmpq %r11                     #  21    0x881fd  3      
  nop                           #  22    0x88200  1      
.L_88220:                       #        0x88201  0      
  movl 0xffaecad(%rip), %eax    #  23    0x88201  6      
  movl %ebx, %edi               #  24    0x88207  2      
  leal 0xc(%rsp), %esi          #  25    0x88209  4      
  nop                           #  26    0x8820d  1      
  andl $0xffffffe0, %eax        #  27    0x8820e  5      
  addq %r15, %rax               #  28    0x88213  3      
  callq %rax                    #  29    0x88216  2      
  testl %eax, %eax              #  30    0x88218  2      
  movl %eax, %ebx               #  31    0x8821a  2      
  jne .L_88260                  #  32    0x8821c  6      
  movl 0xc(%rsp), %eax          #  33    0x88222  4      
  addl $0x10, %esp              #  34    0x88226  3      
  addq %r15, %rsp               #  35    0x88229  3      
  popq %rbx                     #  36    0x8822c  2      
  popq %r11                     #  37    0x8822e  3      
  andl $0xffffffe0, %r11d       #  38    0x88231  7      
  addq %r15, %r11               #  39    0x88238  3      
  jmpq %r11                     #  40    0x8823b  3      
  nop                           #  41    0x8823e  1      
.L_88260:                       #        0x8823f  0      
  nop                           #  42    0x8823f  1      
  nop                           #  43    0x88240  1      
  callq .__errno                #  44    0x88241  5      
  movl %eax, %eax               #  45    0x88246  2      
  movl %eax, %eax               #  46    0x88248  2      
  movl %ebx, (%r15,%rax,1)      #  47    0x8824a  4      
  xorl %eax, %eax               #  48    0x8824e  2      
  jmpq .L_88200                 #  49    0x88250  5      
  nop                           #  50    0x88255  1      
  nop                           #  51    0x88256  1      
  nop                           #  52    0x88257  1      
  nop                           #  53    0x88258  1      
  nop                           #  54    0x88259  1      
  nop                           #  55    0x8825a  1      
  nop                           #  56    0x8825b  1      
  nop                           #  57    0x8825c  1      
  nop                           #  58    0x8825d  1      
  nop                           #  59    0x8825e  1      
  nop                           #  60    0x8825f  1      
  nop                           #  61    0x88260  1      
  nop                           #  62    0x88261  1      
  nop                           #  63    0x88262  1      
  nop                           #  64    0x88263  1      
  nop                           #  65    0x88264  1      
  nop                           #  66    0x88265  1      
                                                         
.size isatty, .-isatty

