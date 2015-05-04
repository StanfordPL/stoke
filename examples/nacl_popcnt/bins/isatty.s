  .text
  .globl isatty
  .type isatty, @function

#! file-offset 0x88260
#! rip-offset  0x88260
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
.isatty:                        #        0x88260  0      
  pushq %rbx                    #  1     0x88260  2      
  movl $0x88340, %esi           #  2     0x88262  5      
  movl %edi, %ebx               #  3     0x88267  2      
  movl $0x10036eb4, %edi        #  4     0x88269  5      
  subl $0x10, %esp              #  5     0x8826e  3      
  addq %r15, %rsp               #  6     0x88271  3      
  nop                           #  7     0x88274  1      
  callq .__libnacl_irt_init_fn  #  8     0x88275  5      
  movl %eax, %edx               #  9     0x8827a  2      
  xorl %eax, %eax               #  10    0x8827c  2      
  testl %edx, %edx              #  11    0x8827e  2      
  jne .L_882c0                  #  12    0x88280  6      
  nop                           #  13    0x88286  1      
  nop                           #  14    0x88287  1      
.L_882a0:                       #        0x88288  0      
  addl $0x10, %esp              #  15    0x88288  3      
  addq %r15, %rsp               #  16    0x8828b  3      
  popq %rbx                     #  17    0x8828e  2      
  popq %r11                     #  18    0x88290  3      
  andl $0xffffffe0, %r11d       #  19    0x88293  7      
  addq %r15, %r11               #  20    0x8829a  3      
  jmpq %r11                     #  21    0x8829d  3      
  nop                           #  22    0x882a0  1      
.L_882c0:                       #        0x882a1  0      
  movl 0xffaec0d(%rip), %eax    #  23    0x882a1  6      
  movl %ebx, %edi               #  24    0x882a7  2      
  leal 0xc(%rsp), %esi          #  25    0x882a9  4      
  nop                           #  26    0x882ad  1      
  andl $0xffffffe0, %eax        #  27    0x882ae  5      
  addq %r15, %rax               #  28    0x882b3  3      
  callq %rax                    #  29    0x882b6  2      
  testl %eax, %eax              #  30    0x882b8  2      
  movl %eax, %ebx               #  31    0x882ba  2      
  jne .L_88300                  #  32    0x882bc  6      
  movl 0xc(%rsp), %eax          #  33    0x882c2  4      
  addl $0x10, %esp              #  34    0x882c6  3      
  addq %r15, %rsp               #  35    0x882c9  3      
  popq %rbx                     #  36    0x882cc  2      
  popq %r11                     #  37    0x882ce  3      
  andl $0xffffffe0, %r11d       #  38    0x882d1  7      
  addq %r15, %r11               #  39    0x882d8  3      
  jmpq %r11                     #  40    0x882db  3      
  nop                           #  41    0x882de  1      
.L_88300:                       #        0x882df  0      
  nop                           #  42    0x882df  1      
  nop                           #  43    0x882e0  1      
  callq .__errno                #  44    0x882e1  5      
  movl %eax, %eax               #  45    0x882e6  2      
  movl %eax, %eax               #  46    0x882e8  2      
  movl %ebx, (%r15,%rax,1)      #  47    0x882ea  4      
  xorl %eax, %eax               #  48    0x882ee  2      
  jmpq .L_882a0                 #  49    0x882f0  5      
  nop                           #  50    0x882f5  1      
  nop                           #  51    0x882f6  1      
  nop                           #  52    0x882f7  1      
  nop                           #  53    0x882f8  1      
  nop                           #  54    0x882f9  1      
  nop                           #  55    0x882fa  1      
  nop                           #  56    0x882fb  1      
  nop                           #  57    0x882fc  1      
  nop                           #  58    0x882fd  1      
  nop                           #  59    0x882fe  1      
  nop                           #  60    0x882ff  1      
  nop                           #  61    0x88300  1      
  nop                           #  62    0x88301  1      
  nop                           #  63    0x88302  1      
  nop                           #  64    0x88303  1      
  nop                           #  65    0x88304  1      
  nop                           #  66    0x88305  1      
                                                         
.size isatty, .-isatty

