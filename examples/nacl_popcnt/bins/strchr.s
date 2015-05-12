  .text
  .globl strchr
  .type strchr, @function

#! file-offset 0x80360
#! rip-offset  0x80360
#! capacity    544 bytes

# Text                         #  Line  RIP      Bytes  
.strchr:                       #        0x80360  0      
  testb %sil, %sil             #  1     0x80360  3      
  movl %edi, %edi              #  2     0x80363  2      
  je .L_803a0                  #  3     0x80365  6      
  jmpq .L_804a0                #  4     0x8036b  5      
  nop                          #  5     0x80370  1      
  nop                          #  6     0x80371  1      
.L_80380:                      #        0x80372  0      
  movl %edi, %edi              #  7     0x80372  2      
  cmpb $0x0, (%r15,%rdi,1)     #  8     0x80374  5      
  je .L_80460                  #  9     0x80379  6      
  addl $0x1, %edi              #  10    0x8037f  3      
  nop                          #  11    0x80382  1      
  nop                          #  12    0x80383  1      
.L_803a0:                      #        0x80384  0      
  testb $0x3, %dil             #  13    0x80384  4      
  jne .L_80380                 #  14    0x80388  6      
  movl %edi, %edi              #  15    0x8038e  2      
  movl (%r15,%rdi,1), %edx     #  16    0x80390  4      
  movl %edx, %eax              #  17    0x80394  2      
  subl $0x1010101, %edx        #  18    0x80396  6      
  notl %eax                    #  19    0x8039c  2      
  andl %edx, %eax              #  20    0x8039e  2      
  testl $0x80808080, %eax      #  21    0x803a0  5      
  nop                          #  22    0x803a5  1      
  jne .L_80440                 #  23    0x803a6  6      
  nop                          #  24    0x803ac  1      
  nop                          #  25    0x803ad  1      
.L_803e0:                      #        0x803ae  0      
  addl $0x4, %edi              #  26    0x803ae  3      
  movl %edi, %edi              #  27    0x803b1  2      
  movl (%r15,%rdi,1), %edx     #  28    0x803b3  4      
  leal -0x1010101(%rdx), %eax  #  29    0x803b7  6      
  notl %edx                    #  30    0x803bd  2      
  andl %edx, %eax              #  31    0x803bf  2      
  testl $0x80808080, %eax      #  32    0x803c1  5      
  je .L_803e0                  #  33    0x803c6  6      
  nop                          #  34    0x803cc  1      
  movl %edi, %edi              #  35    0x803cd  2      
  cmpb $0x0, (%r15,%rdi,1)     #  36    0x803cf  5      
  je .L_80460                  #  37    0x803d4  6      
  nop                          #  38    0x803da  1      
  nop                          #  39    0x803db  1      
.L_80420:                      #        0x803dc  0      
  addl $0x1, %edi              #  40    0x803dc  3      
  nop                          #  41    0x803df  1      
  nop                          #  42    0x803e0  1      
.L_80440:                      #        0x803e1  0      
  movl %edi, %edi              #  43    0x803e1  2      
  cmpb $0x0, (%r15,%rdi,1)     #  44    0x803e3  5      
  jne .L_80420                 #  45    0x803e8  6      
  nop                          #  46    0x803ee  1      
  nop                          #  47    0x803ef  1      
.L_80460:                      #        0x803f0  0      
  movq %rdi, %rax              #  48    0x803f0  3      
  popq %r11                    #  49    0x803f3  3      
  andl $0xffffffe0, %r11d      #  50    0x803f6  7      
  addq %r15, %r11              #  51    0x803fd  3      
  jmpq %r11                    #  52    0x80400  3      
  xchgw %ax, %ax               #  53    0x80403  3      
  nop                          #  54    0x80406  1      
.L_80480:                      #        0x80407  0      
  movl %edi, %edi              #  55    0x80407  2      
  movzbl (%r15,%rdi,1), %eax   #  56    0x80409  5      
  testb %al, %al               #  57    0x8040e  2      
  je .L_80560                  #  58    0x80410  6      
  cmpb %al, %sil               #  59    0x80416  3      
  je .L_80460                  #  60    0x80419  6      
  addl $0x1, %edi              #  61    0x8041f  3      
  nop                          #  62    0x80422  1      
.L_804a0:                      #        0x80423  0      
  testb $0x3, %dil             #  63    0x80423  4      
  jne .L_80480                 #  64    0x80427  6      
  movzbl %sil, %edx            #  65    0x8042d  4      
  movl %edx, %eax              #  66    0x80431  2      
  shll $0x8, %eax              #  67    0x80433  3      
  orl %edx, %eax               #  68    0x80436  2      
  movl %eax, %r8d              #  69    0x80438  3      
  shll $0x10, %r8d             #  70    0x8043b  4      
  orl %eax, %r8d               #  71    0x8043f  3      
  jmpq .L_804e0                #  72    0x80442  5      
  nop                          #  73    0x80447  1      
.L_804c0:                      #        0x80448  0      
  xorl %r8d, %edx              #  74    0x80448  3      
  leal -0x1010101(%rdx), %eax  #  75    0x8044b  6      
  notl %edx                    #  76    0x80451  2      
  andl %edx, %eax              #  77    0x80453  2      
  testl $0x80808080, %eax      #  78    0x80455  5      
  jne .L_80500                 #  79    0x8045a  6      
  addl $0x4, %edi              #  80    0x80460  3      
  nop                          #  81    0x80463  1      
.L_804e0:                      #        0x80464  0      
  movl %edi, %edi              #  82    0x80464  2      
  movl (%r15,%rdi,1), %edx     #  83    0x80466  4      
  leal -0x1010101(%rdx), %eax  #  84    0x8046a  6      
  movl %edx, %ecx              #  85    0x80470  2      
  notl %ecx                    #  86    0x80472  2      
  andl %ecx, %eax              #  87    0x80474  2      
  testl $0x80808080, %eax      #  88    0x80476  5      
  je .L_804c0                  #  89    0x8047b  6      
  nop                          #  90    0x80481  1      
.L_80500:                      #        0x80482  0      
  movl %edi, %edi              #  91    0x80482  2      
  movzbl (%r15,%rdi,1), %eax   #  92    0x80484  5      
  testb %al, %al               #  93    0x80489  2      
  jne .L_80540                 #  94    0x8048b  6      
  jmpq .L_80560                #  95    0x80491  5      
  nop                          #  96    0x80496  1      
  nop                          #  97    0x80497  1      
.L_80520:                      #        0x80498  0      
  addl $0x1, %edi              #  98    0x80498  3      
  movl %edi, %edi              #  99    0x8049b  2      
  movzbl (%r15,%rdi,1), %eax   #  100   0x8049d  5      
  testb %al, %al               #  101   0x804a2  2      
  je .L_80560                  #  102   0x804a4  6      
  nop                          #  103   0x804aa  1      
  nop                          #  104   0x804ab  1      
.L_80540:                      #        0x804ac  0      
  cmpb %al, %sil               #  105   0x804ac  3      
  jne .L_80520                 #  106   0x804af  6      
  jmpq .L_80460                #  107   0x804b5  5      
  nop                          #  108   0x804ba  1      
  nop                          #  109   0x804bb  1      
.L_80560:                      #        0x804bc  0      
  xorl %eax, %eax              #  110   0x804bc  2      
  popq %r11                    #  111   0x804be  3      
  andl $0xffffffe0, %r11d      #  112   0x804c1  7      
  addq %r15, %r11              #  113   0x804c8  3      
  jmpq %r11                    #  114   0x804cb  3      
  nop                          #  115   0x804ce  1      
  nop                          #  116   0x804cf  1      
  nop                          #  117   0x804d0  1      
  nop                          #  118   0x804d1  1      
  nop                          #  119   0x804d2  1      
  nop                          #  120   0x804d3  1      
  nop                          #  121   0x804d4  1      
  nop                          #  122   0x804d5  1      
  nop                          #  123   0x804d6  1      
  nop                          #  124   0x804d7  1      
  nop                          #  125   0x804d8  1      
  nop                          #  126   0x804d9  1      
  nop                          #  127   0x804da  1      
  nop                          #  128   0x804db  1      
  nop                          #  129   0x804dc  1      
  nop                          #  130   0x804dd  1      
  nop                          #  131   0x804de  1      
  nop                          #  132   0x804df  1      
                                                        
.size strchr, .-strchr

