  .text
  .globl strchr
  .type strchr, @function

#! file-offset 0x803e0
#! rip-offset  0x803e0
#! capacity    544 bytes

# Text                         #  Line  RIP      Bytes  
.strchr:                       #        0x803e0  0      
  testb %sil, %sil             #  1     0x803e0  3      
  movl %edi, %edi              #  2     0x803e3  2      
  je .L_80420                  #  3     0x803e5  6      
  jmpq .L_80520                #  4     0x803eb  5      
  nop                          #  5     0x803f0  1      
  nop                          #  6     0x803f1  1      
.L_80400:                      #        0x803f2  0      
  movl %edi, %edi              #  7     0x803f2  2      
  cmpb $0x0, (%r15,%rdi,1)     #  8     0x803f4  5      
  je .L_804e0                  #  9     0x803f9  6      
  addl $0x1, %edi              #  10    0x803ff  3      
  nop                          #  11    0x80402  1      
  nop                          #  12    0x80403  1      
.L_80420:                      #        0x80404  0      
  testb $0x3, %dil             #  13    0x80404  4      
  jne .L_80400                 #  14    0x80408  6      
  movl %edi, %edi              #  15    0x8040e  2      
  movl (%r15,%rdi,1), %edx     #  16    0x80410  4      
  movl %edx, %eax              #  17    0x80414  2      
  subl $0x1010101, %edx        #  18    0x80416  6      
  notl %eax                    #  19    0x8041c  2      
  andl %edx, %eax              #  20    0x8041e  2      
  testl $0x80808080, %eax      #  21    0x80420  5      
  nop                          #  22    0x80425  1      
  jne .L_804c0                 #  23    0x80426  6      
  nop                          #  24    0x8042c  1      
  nop                          #  25    0x8042d  1      
.L_80460:                      #        0x8042e  0      
  addl $0x4, %edi              #  26    0x8042e  3      
  movl %edi, %edi              #  27    0x80431  2      
  movl (%r15,%rdi,1), %edx     #  28    0x80433  4      
  leal -0x1010101(%rdx), %eax  #  29    0x80437  6      
  notl %edx                    #  30    0x8043d  2      
  andl %edx, %eax              #  31    0x8043f  2      
  testl $0x80808080, %eax      #  32    0x80441  5      
  je .L_80460                  #  33    0x80446  6      
  nop                          #  34    0x8044c  1      
  movl %edi, %edi              #  35    0x8044d  2      
  cmpb $0x0, (%r15,%rdi,1)     #  36    0x8044f  5      
  je .L_804e0                  #  37    0x80454  6      
  nop                          #  38    0x8045a  1      
  nop                          #  39    0x8045b  1      
.L_804a0:                      #        0x8045c  0      
  addl $0x1, %edi              #  40    0x8045c  3      
  nop                          #  41    0x8045f  1      
  nop                          #  42    0x80460  1      
.L_804c0:                      #        0x80461  0      
  movl %edi, %edi              #  43    0x80461  2      
  cmpb $0x0, (%r15,%rdi,1)     #  44    0x80463  5      
  jne .L_804a0                 #  45    0x80468  6      
  nop                          #  46    0x8046e  1      
  nop                          #  47    0x8046f  1      
.L_804e0:                      #        0x80470  0      
  movq %rdi, %rax              #  48    0x80470  3      
  popq %r11                    #  49    0x80473  3      
  andl $0xffffffe0, %r11d      #  50    0x80476  7      
  addq %r15, %r11              #  51    0x8047d  3      
  jmpq %r11                    #  52    0x80480  3      
  xchgw %ax, %ax               #  53    0x80483  3      
  nop                          #  54    0x80486  1      
.L_80500:                      #        0x80487  0      
  movl %edi, %edi              #  55    0x80487  2      
  movzbl (%r15,%rdi,1), %eax   #  56    0x80489  5      
  testb %al, %al               #  57    0x8048e  2      
  je .L_805e0                  #  58    0x80490  6      
  cmpb %al, %sil               #  59    0x80496  3      
  je .L_804e0                  #  60    0x80499  6      
  addl $0x1, %edi              #  61    0x8049f  3      
  nop                          #  62    0x804a2  1      
.L_80520:                      #        0x804a3  0      
  testb $0x3, %dil             #  63    0x804a3  4      
  jne .L_80500                 #  64    0x804a7  6      
  movzbl %sil, %edx            #  65    0x804ad  4      
  movl %edx, %eax              #  66    0x804b1  2      
  shll $0x8, %eax              #  67    0x804b3  3      
  orl %edx, %eax               #  68    0x804b6  2      
  movl %eax, %r8d              #  69    0x804b8  3      
  shll $0x10, %r8d             #  70    0x804bb  4      
  orl %eax, %r8d               #  71    0x804bf  3      
  jmpq .L_80560                #  72    0x804c2  5      
  nop                          #  73    0x804c7  1      
.L_80540:                      #        0x804c8  0      
  xorl %r8d, %edx              #  74    0x804c8  3      
  leal -0x1010101(%rdx), %eax  #  75    0x804cb  6      
  notl %edx                    #  76    0x804d1  2      
  andl %edx, %eax              #  77    0x804d3  2      
  testl $0x80808080, %eax      #  78    0x804d5  5      
  jne .L_80580                 #  79    0x804da  6      
  addl $0x4, %edi              #  80    0x804e0  3      
  nop                          #  81    0x804e3  1      
.L_80560:                      #        0x804e4  0      
  movl %edi, %edi              #  82    0x804e4  2      
  movl (%r15,%rdi,1), %edx     #  83    0x804e6  4      
  leal -0x1010101(%rdx), %eax  #  84    0x804ea  6      
  movl %edx, %ecx              #  85    0x804f0  2      
  notl %ecx                    #  86    0x804f2  2      
  andl %ecx, %eax              #  87    0x804f4  2      
  testl $0x80808080, %eax      #  88    0x804f6  5      
  je .L_80540                  #  89    0x804fb  6      
  nop                          #  90    0x80501  1      
.L_80580:                      #        0x80502  0      
  movl %edi, %edi              #  91    0x80502  2      
  movzbl (%r15,%rdi,1), %eax   #  92    0x80504  5      
  testb %al, %al               #  93    0x80509  2      
  jne .L_805c0                 #  94    0x8050b  6      
  jmpq .L_805e0                #  95    0x80511  5      
  nop                          #  96    0x80516  1      
  nop                          #  97    0x80517  1      
.L_805a0:                      #        0x80518  0      
  addl $0x1, %edi              #  98    0x80518  3      
  movl %edi, %edi              #  99    0x8051b  2      
  movzbl (%r15,%rdi,1), %eax   #  100   0x8051d  5      
  testb %al, %al               #  101   0x80522  2      
  je .L_805e0                  #  102   0x80524  6      
  nop                          #  103   0x8052a  1      
  nop                          #  104   0x8052b  1      
.L_805c0:                      #        0x8052c  0      
  cmpb %al, %sil               #  105   0x8052c  3      
  jne .L_805a0                 #  106   0x8052f  6      
  jmpq .L_804e0                #  107   0x80535  5      
  nop                          #  108   0x8053a  1      
  nop                          #  109   0x8053b  1      
.L_805e0:                      #        0x8053c  0      
  xorl %eax, %eax              #  110   0x8053c  2      
  popq %r11                    #  111   0x8053e  3      
  andl $0xffffffe0, %r11d      #  112   0x80541  7      
  addq %r15, %r11              #  113   0x80548  3      
  jmpq %r11                    #  114   0x8054b  3      
  nop                          #  115   0x8054e  1      
  nop                          #  116   0x8054f  1      
  nop                          #  117   0x80550  1      
  nop                          #  118   0x80551  1      
  nop                          #  119   0x80552  1      
  nop                          #  120   0x80553  1      
  nop                          #  121   0x80554  1      
  nop                          #  122   0x80555  1      
  nop                          #  123   0x80556  1      
  nop                          #  124   0x80557  1      
  nop                          #  125   0x80558  1      
  nop                          #  126   0x80559  1      
  nop                          #  127   0x8055a  1      
  nop                          #  128   0x8055b  1      
  nop                          #  129   0x8055c  1      
  nop                          #  130   0x8055d  1      
  nop                          #  131   0x8055e  1      
  nop                          #  132   0x8055f  1      
                                                        
.size strchr, .-strchr

