  .text
  .globl _ZNKSs4findEPKcjj
  .type _ZNKSs4findEPKcjj, @function

#! file-offset 0x44c60
#! rip-offset  0x44c60
#! capacity    320 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs4findEPKcjj:                  #        0x44c60  0      
  movl %edi, %edi                    #  1     0x44c60  2      
  pushq %rbx                         #  2     0x44c62  2      
  movl %edx, %eax                    #  3     0x44c64  2      
  movl %edi, %edi                    #  4     0x44c66  2      
  movl (%r15,%rdi,1), %r8d           #  5     0x44c68  4      
  testl %ecx, %ecx                   #  6     0x44c6c  2      
  movl %esi, %esi                    #  7     0x44c6e  2      
  leal -0xc(%r8), %edx               #  8     0x44c70  4      
  movl %edx, %edx                    #  9     0x44c74  2      
  movl (%r15,%rdx,1), %r9d           #  10    0x44c76  4      
  je .L_44d60                        #  11    0x44c7a  6      
  nop                                #  12    0x44c80  1      
  cmpl %r9d, %ecx                    #  13    0x44c81  3      
  ja .L_44d80                        #  14    0x44c84  6      
  subl %ecx, %r9d                    #  15    0x44c8a  3      
  cmpl %eax, %r9d                    #  16    0x44c8d  3      
  jb .L_44d80                        #  17    0x44c90  6      
  movl %esi, %esi                    #  18    0x44c96  2      
  movzbl (%r15,%rsi,1), %r10d        #  19    0x44c98  5      
  leal 0x1(%rsi), %ebx               #  20    0x44c9d  3      
  nop                                #  21    0x44ca0  1      
  leal -0x1(%rcx), %r11d             #  22    0x44ca1  4      
  jmpq .L_44d00                      #  23    0x44ca5  5      
  nop                                #  24    0x44caa  1      
  nop                                #  25    0x44cab  1      
.L_44cc0:                            #        0x44cac  0      
  leal 0x1(%rax), %edx               #  26    0x44cac  3      
  nop                                #  27    0x44caf  1      
  nop                                #  28    0x44cb0  1      
.L_44ce0:                            #        0x44cb1  0      
  cmpl %edx, %r9d                    #  29    0x44cb1  3      
  jb .L_44d80                        #  30    0x44cb4  6      
  movl %edx, %eax                    #  31    0x44cba  2      
  nop                                #  32    0x44cbc  1      
  nop                                #  33    0x44cbd  1      
.L_44d00:                            #        0x44cbe  0      
  leal (%rax,%r8,1), %edx            #  34    0x44cbe  4      
  movl %edx, %edx                    #  35    0x44cc2  2      
  cmpb (%r15,%rdx,1), %r10b          #  36    0x44cc4  4      
  jne .L_44cc0                       #  37    0x44cc8  6      
  leal 0x1(%rax), %edx               #  38    0x44cce  3      
  cmpq %r11, %r11                    #  39    0x44cd1  3      
  movq %rbx, %rdi                    #  40    0x44cd4  3      
  movq %r11, %rcx                    #  41    0x44cd7  3      
  leal (%rdx,%r8,1), %esi            #  42    0x44cda  4      
  nop                                #  43    0x44cde  1      
  movl %esi, %esi                    #  44    0x44cdf  2      
  leaq (%r15,%rsi,1), %rsi           #  45    0x44ce1  4      
  movl %edi, %edi                    #  46    0x44ce5  2      
  leaq (%r15,%rdi,1), %rdi           #  47    0x44ce7  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  48    0x44ceb  3      
  movl %esi, %esi                    #  49    0x44cee  2      
  movl %edi, %edi                    #  50    0x44cf0  2      
  jne .L_44ce0                       #  51    0x44cf2  6      
  nop                                #  52    0x44cf8  1      
.L_44d40:                            #        0x44cf9  0      
  popq %rbx                          #  53    0x44cf9  2      
  popq %r11                          #  54    0x44cfb  3      
  andl $0xffffffe0, %r11d            #  55    0x44cfe  7      
  addq %r15, %r11                    #  56    0x44d05  3      
  jmpq %r11                          #  57    0x44d08  3      
  nop                                #  58    0x44d0b  1      
  nop                                #  59    0x44d0c  1      
.L_44d60:                            #        0x44d0d  0      
  cmpl %r9d, %eax                    #  60    0x44d0d  3      
  jbe .L_44d40                       #  61    0x44d10  6      
  nop                                #  62    0x44d16  1      
  nop                                #  63    0x44d17  1      
.L_44d80:                            #        0x44d18  0      
  popq %rbx                          #  64    0x44d18  2      
  popq %r11                          #  65    0x44d1a  3      
  movl $0xffffffff, %eax             #  66    0x44d1d  5      
  andl $0xffffffe0, %r11d            #  67    0x44d22  7      
  addq %r15, %r11                    #  68    0x44d29  3      
  jmpq %r11                          #  69    0x44d2c  3      
  nop                                #  70    0x44d2f  1      
  nop                                #  71    0x44d30  1      
  nop                                #  72    0x44d31  1      
  nop                                #  73    0x44d32  1      
  nop                                #  74    0x44d33  1      
  nop                                #  75    0x44d34  1      
  nop                                #  76    0x44d35  1      
  nop                                #  77    0x44d36  1      
  nop                                #  78    0x44d37  1      
  nop                                #  79    0x44d38  1      
  nop                                #  80    0x44d39  1      
  nop                                #  81    0x44d3a  1      
  nop                                #  82    0x44d3b  1      
  nop                                #  83    0x44d3c  1      
                                                              
.size _ZNKSs4findEPKcjj, .-_ZNKSs4findEPKcjj

