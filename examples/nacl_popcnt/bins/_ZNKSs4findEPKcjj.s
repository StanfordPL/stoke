  .text
  .globl _ZNKSs4findEPKcjj
  .type _ZNKSs4findEPKcjj, @function

#! file-offset 0x44d00
#! rip-offset  0x44d00
#! capacity    320 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs4findEPKcjj:                  #        0x44d00  0      
  movl %edi, %edi                    #  1     0x44d00  2      
  pushq %rbx                         #  2     0x44d02  2      
  movl %edx, %eax                    #  3     0x44d04  2      
  movl %edi, %edi                    #  4     0x44d06  2      
  movl (%r15,%rdi,1), %r8d           #  5     0x44d08  4      
  testl %ecx, %ecx                   #  6     0x44d0c  2      
  movl %esi, %esi                    #  7     0x44d0e  2      
  leal -0xc(%r8), %edx               #  8     0x44d10  4      
  movl %edx, %edx                    #  9     0x44d14  2      
  movl (%r15,%rdx,1), %r9d           #  10    0x44d16  4      
  je .L_44e00                        #  11    0x44d1a  6      
  nop                                #  12    0x44d20  1      
  cmpl %r9d, %ecx                    #  13    0x44d21  3      
  ja .L_44e20                        #  14    0x44d24  6      
  subl %ecx, %r9d                    #  15    0x44d2a  3      
  cmpl %eax, %r9d                    #  16    0x44d2d  3      
  jb .L_44e20                        #  17    0x44d30  6      
  movl %esi, %esi                    #  18    0x44d36  2      
  movzbl (%r15,%rsi,1), %r10d        #  19    0x44d38  5      
  leal 0x1(%rsi), %ebx               #  20    0x44d3d  3      
  nop                                #  21    0x44d40  1      
  leal -0x1(%rcx), %r11d             #  22    0x44d41  4      
  jmpq .L_44da0                      #  23    0x44d45  5      
  nop                                #  24    0x44d4a  1      
  nop                                #  25    0x44d4b  1      
.L_44d60:                            #        0x44d4c  0      
  leal 0x1(%rax), %edx               #  26    0x44d4c  3      
  nop                                #  27    0x44d4f  1      
  nop                                #  28    0x44d50  1      
.L_44d80:                            #        0x44d51  0      
  cmpl %edx, %r9d                    #  29    0x44d51  3      
  jb .L_44e20                        #  30    0x44d54  6      
  movl %edx, %eax                    #  31    0x44d5a  2      
  nop                                #  32    0x44d5c  1      
  nop                                #  33    0x44d5d  1      
.L_44da0:                            #        0x44d5e  0      
  leal (%rax,%r8,1), %edx            #  34    0x44d5e  4      
  movl %edx, %edx                    #  35    0x44d62  2      
  cmpb (%r15,%rdx,1), %r10b          #  36    0x44d64  4      
  jne .L_44d60                       #  37    0x44d68  6      
  leal 0x1(%rax), %edx               #  38    0x44d6e  3      
  cmpq %r11, %r11                    #  39    0x44d71  3      
  movq %rbx, %rdi                    #  40    0x44d74  3      
  movq %r11, %rcx                    #  41    0x44d77  3      
  leal (%rdx,%r8,1), %esi            #  42    0x44d7a  4      
  nop                                #  43    0x44d7e  1      
  movl %esi, %esi                    #  44    0x44d7f  2      
  leaq (%r15,%rsi,1), %rsi           #  45    0x44d81  4      
  movl %edi, %edi                    #  46    0x44d85  2      
  leaq (%r15,%rdi,1), %rdi           #  47    0x44d87  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  48    0x44d8b  3      
  movl %esi, %esi                    #  49    0x44d8e  2      
  movl %edi, %edi                    #  50    0x44d90  2      
  jne .L_44d80                       #  51    0x44d92  6      
  nop                                #  52    0x44d98  1      
.L_44de0:                            #        0x44d99  0      
  popq %rbx                          #  53    0x44d99  2      
  popq %r11                          #  54    0x44d9b  3      
  andl $0xffffffe0, %r11d            #  55    0x44d9e  7      
  addq %r15, %r11                    #  56    0x44da5  3      
  jmpq %r11                          #  57    0x44da8  3      
  nop                                #  58    0x44dab  1      
  nop                                #  59    0x44dac  1      
.L_44e00:                            #        0x44dad  0      
  cmpl %r9d, %eax                    #  60    0x44dad  3      
  jbe .L_44de0                       #  61    0x44db0  6      
  nop                                #  62    0x44db6  1      
  nop                                #  63    0x44db7  1      
.L_44e20:                            #        0x44db8  0      
  popq %rbx                          #  64    0x44db8  2      
  popq %r11                          #  65    0x44dba  3      
  movl $0xffffffff, %eax             #  66    0x44dbd  5      
  andl $0xffffffe0, %r11d            #  67    0x44dc2  7      
  addq %r15, %r11                    #  68    0x44dc9  3      
  jmpq %r11                          #  69    0x44dcc  3      
  nop                                #  70    0x44dcf  1      
  nop                                #  71    0x44dd0  1      
  nop                                #  72    0x44dd1  1      
  nop                                #  73    0x44dd2  1      
  nop                                #  74    0x44dd3  1      
  nop                                #  75    0x44dd4  1      
  nop                                #  76    0x44dd5  1      
  nop                                #  77    0x44dd6  1      
  nop                                #  78    0x44dd7  1      
  nop                                #  79    0x44dd8  1      
  nop                                #  80    0x44dd9  1      
  nop                                #  81    0x44dda  1      
  nop                                #  82    0x44ddb  1      
  nop                                #  83    0x44ddc  1      
                                                              
.size _ZNKSs4findEPKcjj, .-_ZNKSs4findEPKcjj

