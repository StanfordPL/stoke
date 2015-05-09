  .text
  .globl strncasecmp
  .type strncasecmp, @function

#! file-offset 0x80740
#! rip-offset  0x80740
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.strncasecmp:                    #        0x80740  0      
  xorl %eax, %eax                #  1     0x80740  2      
  testl %edx, %edx               #  2     0x80742  2      
  movl %edi, %edi                #  3     0x80744  2      
  movl %esi, %esi                #  4     0x80746  2      
  je .L_807e0                    #  5     0x80748  6      
  movl 0xffb046f(%rip), %r9d     #  6     0x8074e  7      
  jmpq .L_80780                  #  7     0x80755  5      
  nop                            #  8     0x8075a  1      
.L_80760:                        #        0x8075b  0      
  testl %ecx, %ecx               #  9     0x8075b  2      
  je .L_807e0                    #  10    0x8075d  6      
  subl $0x1, %edx                #  11    0x80763  3      
  je .L_807e0                    #  12    0x80766  6      
  addl $0x1, %esi                #  13    0x8076c  3      
  nop                            #  14    0x8076f  1      
  nop                            #  15    0x80770  1      
.L_80780:                        #        0x80771  0      
  movl %edi, %edi                #  16    0x80771  2      
  movzbl (%r15,%rdi,1), %eax     #  17    0x80773  5      
  addl $0x1, %edi                #  18    0x80778  3      
  movzbl %al, %eax               #  19    0x8077b  3      
  leal (%rax,%r9,1), %ecx        #  20    0x8077e  4      
  leal 0x20(%rax), %r8d          #  21    0x80782  4      
  movl %ecx, %ecx                #  22    0x80786  2      
  movsbl 0x1(%r15,%rcx,1), %ecx  #  23    0x80788  6      
  andl $0x3, %ecx                #  24    0x8078e  3      
  cmpl $0x1, %ecx                #  25    0x80791  3      
  movl %esi, %esi                #  26    0x80794  2      
  movzbl (%r15,%rsi,1), %ecx     #  27    0x80796  5      
  cmovel %r8d, %eax              #  28    0x8079b  4      
  leal (%rcx,%r9,1), %r8d        #  29    0x8079f  4      
  leal 0x20(%rcx), %r10d         #  30    0x807a3  4      
  movl %r8d, %r8d                #  31    0x807a7  3      
  movsbl 0x1(%r15,%r8,1), %r8d   #  32    0x807aa  6      
  nop                            #  33    0x807b0  1      
  andl $0x3, %r8d                #  34    0x807b1  4      
  cmpl $0x1, %r8d                #  35    0x807b5  4      
  cmovel %r10d, %ecx             #  36    0x807b9  4      
  subl %ecx, %eax                #  37    0x807bd  2      
  je .L_80760                    #  38    0x807bf  6      
  nop                            #  39    0x807c5  1      
  nop                            #  40    0x807c6  1      
.L_807e0:                        #        0x807c7  0      
  popq %r11                      #  41    0x807c7  3      
  andl $0xffffffe0, %r11d        #  42    0x807ca  7      
  addq %r15, %r11                #  43    0x807d1  3      
  jmpq %r11                      #  44    0x807d4  3      
  nop                            #  45    0x807d7  1      
  nop                            #  46    0x807d8  1      
  nop                            #  47    0x807d9  1      
  nop                            #  48    0x807da  1      
  nop                            #  49    0x807db  1      
  nop                            #  50    0x807dc  1      
  nop                            #  51    0x807dd  1      
  nop                            #  52    0x807de  1      
  nop                            #  53    0x807df  1      
  nop                            #  54    0x807e0  1      
  nop                            #  55    0x807e1  1      
  nop                            #  56    0x807e2  1      
  nop                            #  57    0x807e3  1      
  nop                            #  58    0x807e4  1      
  nop                            #  59    0x807e5  1      
  nop                            #  60    0x807e6  1      
  nop                            #  61    0x807e7  1      
  nop                            #  62    0x807e8  1      
  nop                            #  63    0x807e9  1      
  nop                            #  64    0x807ea  1      
                                                          
.size strncasecmp, .-strncasecmp

