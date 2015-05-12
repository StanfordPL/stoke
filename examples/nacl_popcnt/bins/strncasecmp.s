  .text
  .globl strncasecmp
  .type strncasecmp, @function

#! file-offset 0x80760
#! rip-offset  0x80760
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.strncasecmp:                    #        0x80760  0      
  xorl %eax, %eax                #  1     0x80760  2      
  testl %edx, %edx               #  2     0x80762  2      
  movl %edi, %edi                #  3     0x80764  2      
  movl %esi, %esi                #  4     0x80766  2      
  je .L_80800                    #  5     0x80768  6      
  movl 0xffb044f(%rip), %r9d     #  6     0x8076e  7      
  jmpq .L_807a0                  #  7     0x80775  5      
  nop                            #  8     0x8077a  1      
.L_80780:                        #        0x8077b  0      
  testl %ecx, %ecx               #  9     0x8077b  2      
  je .L_80800                    #  10    0x8077d  6      
  subl $0x1, %edx                #  11    0x80783  3      
  je .L_80800                    #  12    0x80786  6      
  addl $0x1, %esi                #  13    0x8078c  3      
  nop                            #  14    0x8078f  1      
  nop                            #  15    0x80790  1      
.L_807a0:                        #        0x80791  0      
  movl %edi, %edi                #  16    0x80791  2      
  movzbl (%r15,%rdi,1), %eax     #  17    0x80793  5      
  addl $0x1, %edi                #  18    0x80798  3      
  movzbl %al, %eax               #  19    0x8079b  3      
  leal (%rax,%r9,1), %ecx        #  20    0x8079e  4      
  leal 0x20(%rax), %r8d          #  21    0x807a2  4      
  movl %ecx, %ecx                #  22    0x807a6  2      
  movsbl 0x1(%r15,%rcx,1), %ecx  #  23    0x807a8  6      
  andl $0x3, %ecx                #  24    0x807ae  3      
  cmpl $0x1, %ecx                #  25    0x807b1  3      
  movl %esi, %esi                #  26    0x807b4  2      
  movzbl (%r15,%rsi,1), %ecx     #  27    0x807b6  5      
  cmovel %r8d, %eax              #  28    0x807bb  4      
  leal (%rcx,%r9,1), %r8d        #  29    0x807bf  4      
  leal 0x20(%rcx), %r10d         #  30    0x807c3  4      
  movl %r8d, %r8d                #  31    0x807c7  3      
  movsbl 0x1(%r15,%r8,1), %r8d   #  32    0x807ca  6      
  nop                            #  33    0x807d0  1      
  andl $0x3, %r8d                #  34    0x807d1  4      
  cmpl $0x1, %r8d                #  35    0x807d5  4      
  cmovel %r10d, %ecx             #  36    0x807d9  4      
  subl %ecx, %eax                #  37    0x807dd  2      
  je .L_80780                    #  38    0x807df  6      
  nop                            #  39    0x807e5  1      
  nop                            #  40    0x807e6  1      
.L_80800:                        #        0x807e7  0      
  popq %r11                      #  41    0x807e7  3      
  andl $0xffffffe0, %r11d        #  42    0x807ea  7      
  addq %r15, %r11                #  43    0x807f1  3      
  jmpq %r11                      #  44    0x807f4  3      
  nop                            #  45    0x807f7  1      
  nop                            #  46    0x807f8  1      
  nop                            #  47    0x807f9  1      
  nop                            #  48    0x807fa  1      
  nop                            #  49    0x807fb  1      
  nop                            #  50    0x807fc  1      
  nop                            #  51    0x807fd  1      
  nop                            #  52    0x807fe  1      
  nop                            #  53    0x807ff  1      
  nop                            #  54    0x80800  1      
  nop                            #  55    0x80801  1      
  nop                            #  56    0x80802  1      
  nop                            #  57    0x80803  1      
  nop                            #  58    0x80804  1      
  nop                            #  59    0x80805  1      
  nop                            #  60    0x80806  1      
  nop                            #  61    0x80807  1      
  nop                            #  62    0x80808  1      
  nop                            #  63    0x80809  1      
  nop                            #  64    0x8080a  1      
                                                          
.size strncasecmp, .-strncasecmp

