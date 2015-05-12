  .text
  .globl isatty
  .type isatty, @function

#! file-offset 0x881e0
#! rip-offset  0x881e0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.isatty:                        #        0x881e0  0      
  pushq %rbx                    #  1     0x881e0  2      
  movl $0x882c0, %esi           #  2     0x881e2  5      
  movl %edi, %ebx               #  3     0x881e7  2      
  movl $0x10036eb4, %edi        #  4     0x881e9  5      
  subl $0x10, %esp              #  5     0x881ee  3      
  addq %r15, %rsp               #  6     0x881f1  3      
  nop                           #  7     0x881f4  1      
  callq .__libnacl_irt_init_fn  #  8     0x881f5  5      
  movl %eax, %edx               #  9     0x881fa  2      
  xorl %eax, %eax               #  10    0x881fc  2      
  testl %edx, %edx              #  11    0x881fe  2      
  jne .L_88240                  #  12    0x88200  6      
  nop                           #  13    0x88206  1      
  nop                           #  14    0x88207  1      
.L_88220:                       #        0x88208  0      
  addl $0x10, %esp              #  15    0x88208  3      
  addq %r15, %rsp               #  16    0x8820b  3      
  popq %rbx                     #  17    0x8820e  2      
  popq %r11                     #  18    0x88210  3      
  andl $0xffffffe0, %r11d       #  19    0x88213  7      
  addq %r15, %r11               #  20    0x8821a  3      
  jmpq %r11                     #  21    0x8821d  3      
  nop                           #  22    0x88220  1      
.L_88240:                       #        0x88221  0      
  movl 0xffaec8d(%rip), %eax    #  23    0x88221  6      
  movl %ebx, %edi               #  24    0x88227  2      
  leal 0xc(%rsp), %esi          #  25    0x88229  4      
  nop                           #  26    0x8822d  1      
  andl $0xffffffe0, %eax        #  27    0x8822e  5      
  addq %r15, %rax               #  28    0x88233  3      
  callq %rax                    #  29    0x88236  2      
  testl %eax, %eax              #  30    0x88238  2      
  movl %eax, %ebx               #  31    0x8823a  2      
  jne .L_88280                  #  32    0x8823c  6      
  movl 0xc(%rsp), %eax          #  33    0x88242  4      
  addl $0x10, %esp              #  34    0x88246  3      
  addq %r15, %rsp               #  35    0x88249  3      
  popq %rbx                     #  36    0x8824c  2      
  popq %r11                     #  37    0x8824e  3      
  andl $0xffffffe0, %r11d       #  38    0x88251  7      
  addq %r15, %r11               #  39    0x88258  3      
  jmpq %r11                     #  40    0x8825b  3      
  nop                           #  41    0x8825e  1      
.L_88280:                       #        0x8825f  0      
  nop                           #  42    0x8825f  1      
  nop                           #  43    0x88260  1      
  callq .__errno                #  44    0x88261  5      
  movl %eax, %eax               #  45    0x88266  2      
  movl %eax, %eax               #  46    0x88268  2      
  movl %ebx, (%r15,%rax,1)      #  47    0x8826a  4      
  xorl %eax, %eax               #  48    0x8826e  2      
  jmpq .L_88220                 #  49    0x88270  5      
  nop                           #  50    0x88275  1      
  nop                           #  51    0x88276  1      
  nop                           #  52    0x88277  1      
  nop                           #  53    0x88278  1      
  nop                           #  54    0x88279  1      
  nop                           #  55    0x8827a  1      
  nop                           #  56    0x8827b  1      
  nop                           #  57    0x8827c  1      
  nop                           #  58    0x8827d  1      
  nop                           #  59    0x8827e  1      
  nop                           #  60    0x8827f  1      
  nop                           #  61    0x88280  1      
  nop                           #  62    0x88281  1      
  nop                           #  63    0x88282  1      
  nop                           #  64    0x88283  1      
  nop                           #  65    0x88284  1      
  nop                           #  66    0x88285  1      
                                                         
.size isatty, .-isatty

