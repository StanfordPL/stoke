  .text
  .globl strchr
  .type strchr, @function

#! file-offset 0x80340
#! rip-offset  0x80340
#! capacity    544 bytes

# Text                         #  Line  RIP      Bytes  
.strchr:                       #        0x80340  0      
  testb %sil, %sil             #  1     0x80340  3      
  movl %edi, %edi              #  2     0x80343  2      
  je .L_80380                  #  3     0x80345  6      
  jmpq .L_80480                #  4     0x8034b  5      
  nop                          #  5     0x80350  1      
  nop                          #  6     0x80351  1      
.L_80360:                      #        0x80352  0      
  movl %edi, %edi              #  7     0x80352  2      
  cmpb $0x0, (%r15,%rdi,1)     #  8     0x80354  5      
  je .L_80440                  #  9     0x80359  6      
  addl $0x1, %edi              #  10    0x8035f  3      
  nop                          #  11    0x80362  1      
  nop                          #  12    0x80363  1      
.L_80380:                      #        0x80364  0      
  testb $0x3, %dil             #  13    0x80364  4      
  jne .L_80360                 #  14    0x80368  6      
  movl %edi, %edi              #  15    0x8036e  2      
  movl (%r15,%rdi,1), %edx     #  16    0x80370  4      
  movl %edx, %eax              #  17    0x80374  2      
  subl $0x1010101, %edx        #  18    0x80376  6      
  notl %eax                    #  19    0x8037c  2      
  andl %edx, %eax              #  20    0x8037e  2      
  testl $0x80808080, %eax      #  21    0x80380  5      
  nop                          #  22    0x80385  1      
  jne .L_80420                 #  23    0x80386  6      
  nop                          #  24    0x8038c  1      
  nop                          #  25    0x8038d  1      
.L_803c0:                      #        0x8038e  0      
  addl $0x4, %edi              #  26    0x8038e  3      
  movl %edi, %edi              #  27    0x80391  2      
  movl (%r15,%rdi,1), %edx     #  28    0x80393  4      
  leal -0x1010101(%rdx), %eax  #  29    0x80397  6      
  notl %edx                    #  30    0x8039d  2      
  andl %edx, %eax              #  31    0x8039f  2      
  testl $0x80808080, %eax      #  32    0x803a1  5      
  je .L_803c0                  #  33    0x803a6  6      
  nop                          #  34    0x803ac  1      
  movl %edi, %edi              #  35    0x803ad  2      
  cmpb $0x0, (%r15,%rdi,1)     #  36    0x803af  5      
  je .L_80440                  #  37    0x803b4  6      
  nop                          #  38    0x803ba  1      
  nop                          #  39    0x803bb  1      
.L_80400:                      #        0x803bc  0      
  addl $0x1, %edi              #  40    0x803bc  3      
  nop                          #  41    0x803bf  1      
  nop                          #  42    0x803c0  1      
.L_80420:                      #        0x803c1  0      
  movl %edi, %edi              #  43    0x803c1  2      
  cmpb $0x0, (%r15,%rdi,1)     #  44    0x803c3  5      
  jne .L_80400                 #  45    0x803c8  6      
  nop                          #  46    0x803ce  1      
  nop                          #  47    0x803cf  1      
.L_80440:                      #        0x803d0  0      
  movq %rdi, %rax              #  48    0x803d0  3      
  popq %r11                    #  49    0x803d3  3      
  andl $0xffffffe0, %r11d      #  50    0x803d6  7      
  addq %r15, %r11              #  51    0x803dd  3      
  jmpq %r11                    #  52    0x803e0  3      
  xchgw %ax, %ax               #  53    0x803e3  3      
  nop                          #  54    0x803e6  1      
.L_80460:                      #        0x803e7  0      
  movl %edi, %edi              #  55    0x803e7  2      
  movzbl (%r15,%rdi,1), %eax   #  56    0x803e9  5      
  testb %al, %al               #  57    0x803ee  2      
  je .L_80540                  #  58    0x803f0  6      
  cmpb %al, %sil               #  59    0x803f6  3      
  je .L_80440                  #  60    0x803f9  6      
  addl $0x1, %edi              #  61    0x803ff  3      
  nop                          #  62    0x80402  1      
.L_80480:                      #        0x80403  0      
  testb $0x3, %dil             #  63    0x80403  4      
  jne .L_80460                 #  64    0x80407  6      
  movzbl %sil, %edx            #  65    0x8040d  4      
  movl %edx, %eax              #  66    0x80411  2      
  shll $0x8, %eax              #  67    0x80413  3      
  orl %edx, %eax               #  68    0x80416  2      
  movl %eax, %r8d              #  69    0x80418  3      
  shll $0x10, %r8d             #  70    0x8041b  4      
  orl %eax, %r8d               #  71    0x8041f  3      
  jmpq .L_804c0                #  72    0x80422  5      
  nop                          #  73    0x80427  1      
.L_804a0:                      #        0x80428  0      
  xorl %r8d, %edx              #  74    0x80428  3      
  leal -0x1010101(%rdx), %eax  #  75    0x8042b  6      
  notl %edx                    #  76    0x80431  2      
  andl %edx, %eax              #  77    0x80433  2      
  testl $0x80808080, %eax      #  78    0x80435  5      
  jne .L_804e0                 #  79    0x8043a  6      
  addl $0x4, %edi              #  80    0x80440  3      
  nop                          #  81    0x80443  1      
.L_804c0:                      #        0x80444  0      
  movl %edi, %edi              #  82    0x80444  2      
  movl (%r15,%rdi,1), %edx     #  83    0x80446  4      
  leal -0x1010101(%rdx), %eax  #  84    0x8044a  6      
  movl %edx, %ecx              #  85    0x80450  2      
  notl %ecx                    #  86    0x80452  2      
  andl %ecx, %eax              #  87    0x80454  2      
  testl $0x80808080, %eax      #  88    0x80456  5      
  je .L_804a0                  #  89    0x8045b  6      
  nop                          #  90    0x80461  1      
.L_804e0:                      #        0x80462  0      
  movl %edi, %edi              #  91    0x80462  2      
  movzbl (%r15,%rdi,1), %eax   #  92    0x80464  5      
  testb %al, %al               #  93    0x80469  2      
  jne .L_80520                 #  94    0x8046b  6      
  jmpq .L_80540                #  95    0x80471  5      
  nop                          #  96    0x80476  1      
  nop                          #  97    0x80477  1      
.L_80500:                      #        0x80478  0      
  addl $0x1, %edi              #  98    0x80478  3      
  movl %edi, %edi              #  99    0x8047b  2      
  movzbl (%r15,%rdi,1), %eax   #  100   0x8047d  5      
  testb %al, %al               #  101   0x80482  2      
  je .L_80540                  #  102   0x80484  6      
  nop                          #  103   0x8048a  1      
  nop                          #  104   0x8048b  1      
.L_80520:                      #        0x8048c  0      
  cmpb %al, %sil               #  105   0x8048c  3      
  jne .L_80500                 #  106   0x8048f  6      
  jmpq .L_80440                #  107   0x80495  5      
  nop                          #  108   0x8049a  1      
  nop                          #  109   0x8049b  1      
.L_80540:                      #        0x8049c  0      
  xorl %eax, %eax              #  110   0x8049c  2      
  popq %r11                    #  111   0x8049e  3      
  andl $0xffffffe0, %r11d      #  112   0x804a1  7      
  addq %r15, %r11              #  113   0x804a8  3      
  jmpq %r11                    #  114   0x804ab  3      
  nop                          #  115   0x804ae  1      
  nop                          #  116   0x804af  1      
  nop                          #  117   0x804b0  1      
  nop                          #  118   0x804b1  1      
  nop                          #  119   0x804b2  1      
  nop                          #  120   0x804b3  1      
  nop                          #  121   0x804b4  1      
  nop                          #  122   0x804b5  1      
  nop                          #  123   0x804b6  1      
  nop                          #  124   0x804b7  1      
  nop                          #  125   0x804b8  1      
  nop                          #  126   0x804b9  1      
  nop                          #  127   0x804ba  1      
  nop                          #  128   0x804bb  1      
  nop                          #  129   0x804bc  1      
  nop                          #  130   0x804bd  1      
  nop                          #  131   0x804be  1      
  nop                          #  132   0x804bf  1      
                                                        
.size strchr, .-strchr

