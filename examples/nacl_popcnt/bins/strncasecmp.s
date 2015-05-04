  .text
  .globl strncasecmp
  .type strncasecmp, @function

#! file-offset 0x807e0
#! rip-offset  0x807e0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.strncasecmp:                    #        0x807e0  0      
  xorl %eax, %eax                #  1     0x807e0  2      
  testl %edx, %edx               #  2     0x807e2  2      
  movl %edi, %edi                #  3     0x807e4  2      
  movl %esi, %esi                #  4     0x807e6  2      
  je .L_80880                    #  5     0x807e8  6      
  movl 0xffb03cf(%rip), %r9d     #  6     0x807ee  7      
  jmpq .L_80820                  #  7     0x807f5  5      
  nop                            #  8     0x807fa  1      
.L_80800:                        #        0x807fb  0      
  testl %ecx, %ecx               #  9     0x807fb  2      
  je .L_80880                    #  10    0x807fd  6      
  subl $0x1, %edx                #  11    0x80803  3      
  je .L_80880                    #  12    0x80806  6      
  addl $0x1, %esi                #  13    0x8080c  3      
  nop                            #  14    0x8080f  1      
  nop                            #  15    0x80810  1      
.L_80820:                        #        0x80811  0      
  movl %edi, %edi                #  16    0x80811  2      
  movzbl (%r15,%rdi,1), %eax     #  17    0x80813  5      
  addl $0x1, %edi                #  18    0x80818  3      
  movzbl %al, %eax               #  19    0x8081b  3      
  leal (%rax,%r9,1), %ecx        #  20    0x8081e  4      
  leal 0x20(%rax), %r8d          #  21    0x80822  4      
  movl %ecx, %ecx                #  22    0x80826  2      
  movsbl 0x1(%r15,%rcx,1), %ecx  #  23    0x80828  6      
  andl $0x3, %ecx                #  24    0x8082e  3      
  cmpl $0x1, %ecx                #  25    0x80831  3      
  movl %esi, %esi                #  26    0x80834  2      
  movzbl (%r15,%rsi,1), %ecx     #  27    0x80836  5      
  cmovel %r8d, %eax              #  28    0x8083b  4      
  leal (%rcx,%r9,1), %r8d        #  29    0x8083f  4      
  leal 0x20(%rcx), %r10d         #  30    0x80843  4      
  movl %r8d, %r8d                #  31    0x80847  3      
  movsbl 0x1(%r15,%r8,1), %r8d   #  32    0x8084a  6      
  nop                            #  33    0x80850  1      
  andl $0x3, %r8d                #  34    0x80851  4      
  cmpl $0x1, %r8d                #  35    0x80855  4      
  cmovel %r10d, %ecx             #  36    0x80859  4      
  subl %ecx, %eax                #  37    0x8085d  2      
  je .L_80800                    #  38    0x8085f  6      
  nop                            #  39    0x80865  1      
  nop                            #  40    0x80866  1      
.L_80880:                        #        0x80867  0      
  popq %r11                      #  41    0x80867  3      
  andl $0xffffffe0, %r11d        #  42    0x8086a  7      
  addq %r15, %r11                #  43    0x80871  3      
  jmpq %r11                      #  44    0x80874  3      
  nop                            #  45    0x80877  1      
  nop                            #  46    0x80878  1      
  nop                            #  47    0x80879  1      
  nop                            #  48    0x8087a  1      
  nop                            #  49    0x8087b  1      
  nop                            #  50    0x8087c  1      
  nop                            #  51    0x8087d  1      
  nop                            #  52    0x8087e  1      
  nop                            #  53    0x8087f  1      
  nop                            #  54    0x80880  1      
  nop                            #  55    0x80881  1      
  nop                            #  56    0x80882  1      
  nop                            #  57    0x80883  1      
  nop                            #  58    0x80884  1      
  nop                            #  59    0x80885  1      
  nop                            #  60    0x80886  1      
  nop                            #  61    0x80887  1      
  nop                            #  62    0x80888  1      
  nop                            #  63    0x80889  1      
  nop                            #  64    0x8088a  1      
                                                          
.size strncasecmp, .-strncasecmp

