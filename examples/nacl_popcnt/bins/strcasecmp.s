  .text
  .globl strcasecmp
  .type strcasecmp, @function

#! file-offset 0x80240
#! rip-offset  0x80240
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.strcasecmp:                     #        0x80240  0      
  movl %edi, %edi                #  1     0x80240  2      
  movl %esi, %esi                #  2     0x80242  2      
  movl 0xffb0979(%rip), %r8d     #  3     0x80244  7      
  jmpq .L_80280                  #  4     0x8024b  5      
  nop                            #  5     0x80250  1      
  nop                            #  6     0x80251  1      
.L_80260:                        #        0x80252  0      
  addl $0x1, %esi                #  7     0x80252  3      
  nop                            #  8     0x80255  1      
  nop                            #  9     0x80256  1      
.L_80280:                        #        0x80257  0      
  movl %edi, %edi                #  10    0x80257  2      
  movzbl (%r15,%rdi,1), %eax     #  11    0x80259  5      
  addl $0x1, %edi                #  12    0x8025e  3      
  movzbl %al, %eax               #  13    0x80261  3      
  leal (%rax,%r8,1), %edx        #  14    0x80264  4      
  leal 0x20(%rax), %ecx          #  15    0x80268  3      
  movl %edx, %edx                #  16    0x8026b  2      
  movsbl 0x1(%r15,%rdx,1), %edx  #  17    0x8026d  6      
  andl $0x3, %edx                #  18    0x80273  3      
  nop                            #  19    0x80276  1      
  cmpl $0x1, %edx                #  20    0x80277  3      
  movl %esi, %esi                #  21    0x8027a  2      
  movzbl (%r15,%rsi,1), %edx     #  22    0x8027c  5      
  cmovel %ecx, %eax              #  23    0x80281  3      
  leal (%rdx,%r8,1), %ecx        #  24    0x80284  4      
  leal 0x20(%rdx), %r9d          #  25    0x80288  4      
  movl %ecx, %ecx                #  26    0x8028c  2      
  movsbl 0x1(%r15,%rcx,1), %ecx  #  27    0x8028e  6      
  andl $0x3, %ecx                #  28    0x80294  3      
  cmpl $0x1, %ecx                #  29    0x80297  3      
  cmovel %r9d, %edx              #  30    0x8029a  4      
  subl %edx, %eax                #  31    0x8029e  2      
  jne .L_802e0                   #  32    0x802a0  6      
  testl %edx, %edx               #  33    0x802a6  2      
  jne .L_80260                   #  34    0x802a8  6      
  xchgw %ax, %ax                 #  35    0x802ae  3      
  nop                            #  36    0x802b1  1      
.L_802e0:                        #        0x802b2  0      
  popq %r11                      #  37    0x802b2  3      
  andl $0xffffffe0, %r11d        #  38    0x802b5  7      
  addq %r15, %r11                #  39    0x802bc  3      
  jmpq %r11                      #  40    0x802bf  3      
  nop                            #  41    0x802c2  1      
  nop                            #  42    0x802c3  1      
  nop                            #  43    0x802c4  1      
  nop                            #  44    0x802c5  1      
  nop                            #  45    0x802c6  1      
  nop                            #  46    0x802c7  1      
  nop                            #  47    0x802c8  1      
  nop                            #  48    0x802c9  1      
  nop                            #  49    0x802ca  1      
  nop                            #  50    0x802cb  1      
  nop                            #  51    0x802cc  1      
  nop                            #  52    0x802cd  1      
  nop                            #  53    0x802ce  1      
  nop                            #  54    0x802cf  1      
  nop                            #  55    0x802d0  1      
  nop                            #  56    0x802d1  1      
  nop                            #  57    0x802d2  1      
  nop                            #  58    0x802d3  1      
  nop                            #  59    0x802d4  1      
  nop                            #  60    0x802d5  1      
                                                          
.size strcasecmp, .-strcasecmp

