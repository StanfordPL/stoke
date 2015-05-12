  .text
  .globl _ZNKSs4findEPKcjj
  .type _ZNKSs4findEPKcjj, @function

#! file-offset 0x44c80
#! rip-offset  0x44c80
#! capacity    320 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs4findEPKcjj:                  #        0x44c80  0      
  movl %edi, %edi                    #  1     0x44c80  2      
  pushq %rbx                         #  2     0x44c82  2      
  movl %edx, %eax                    #  3     0x44c84  2      
  movl %edi, %edi                    #  4     0x44c86  2      
  movl (%r15,%rdi,1), %r8d           #  5     0x44c88  4      
  testl %ecx, %ecx                   #  6     0x44c8c  2      
  movl %esi, %esi                    #  7     0x44c8e  2      
  leal -0xc(%r8), %edx               #  8     0x44c90  4      
  movl %edx, %edx                    #  9     0x44c94  2      
  movl (%r15,%rdx,1), %r9d           #  10    0x44c96  4      
  je .L_44d80                        #  11    0x44c9a  6      
  nop                                #  12    0x44ca0  1      
  cmpl %r9d, %ecx                    #  13    0x44ca1  3      
  ja .L_44da0                        #  14    0x44ca4  6      
  subl %ecx, %r9d                    #  15    0x44caa  3      
  cmpl %eax, %r9d                    #  16    0x44cad  3      
  jb .L_44da0                        #  17    0x44cb0  6      
  movl %esi, %esi                    #  18    0x44cb6  2      
  movzbl (%r15,%rsi,1), %r10d        #  19    0x44cb8  5      
  leal 0x1(%rsi), %ebx               #  20    0x44cbd  3      
  nop                                #  21    0x44cc0  1      
  leal -0x1(%rcx), %r11d             #  22    0x44cc1  4      
  jmpq .L_44d20                      #  23    0x44cc5  5      
  nop                                #  24    0x44cca  1      
  nop                                #  25    0x44ccb  1      
.L_44ce0:                            #        0x44ccc  0      
  leal 0x1(%rax), %edx               #  26    0x44ccc  3      
  nop                                #  27    0x44ccf  1      
  nop                                #  28    0x44cd0  1      
.L_44d00:                            #        0x44cd1  0      
  cmpl %edx, %r9d                    #  29    0x44cd1  3      
  jb .L_44da0                        #  30    0x44cd4  6      
  movl %edx, %eax                    #  31    0x44cda  2      
  nop                                #  32    0x44cdc  1      
  nop                                #  33    0x44cdd  1      
.L_44d20:                            #        0x44cde  0      
  leal (%rax,%r8,1), %edx            #  34    0x44cde  4      
  movl %edx, %edx                    #  35    0x44ce2  2      
  cmpb (%r15,%rdx,1), %r10b          #  36    0x44ce4  4      
  jne .L_44ce0                       #  37    0x44ce8  6      
  leal 0x1(%rax), %edx               #  38    0x44cee  3      
  cmpq %r11, %r11                    #  39    0x44cf1  3      
  movq %rbx, %rdi                    #  40    0x44cf4  3      
  movq %r11, %rcx                    #  41    0x44cf7  3      
  leal (%rdx,%r8,1), %esi            #  42    0x44cfa  4      
  nop                                #  43    0x44cfe  1      
  movl %esi, %esi                    #  44    0x44cff  2      
  leaq (%r15,%rsi,1), %rsi           #  45    0x44d01  4      
  movl %edi, %edi                    #  46    0x44d05  2      
  leaq (%r15,%rdi,1), %rdi           #  47    0x44d07  4      
  repz cmpsb %es:(%rdi), %ds:(%rsi)  #  48    0x44d0b  3      
  movl %esi, %esi                    #  49    0x44d0e  2      
  movl %edi, %edi                    #  50    0x44d10  2      
  jne .L_44d00                       #  51    0x44d12  6      
  nop                                #  52    0x44d18  1      
.L_44d60:                            #        0x44d19  0      
  popq %rbx                          #  53    0x44d19  2      
  popq %r11                          #  54    0x44d1b  3      
  andl $0xffffffe0, %r11d            #  55    0x44d1e  7      
  addq %r15, %r11                    #  56    0x44d25  3      
  jmpq %r11                          #  57    0x44d28  3      
  nop                                #  58    0x44d2b  1      
  nop                                #  59    0x44d2c  1      
.L_44d80:                            #        0x44d2d  0      
  cmpl %r9d, %eax                    #  60    0x44d2d  3      
  jbe .L_44d60                       #  61    0x44d30  6      
  nop                                #  62    0x44d36  1      
  nop                                #  63    0x44d37  1      
.L_44da0:                            #        0x44d38  0      
  popq %rbx                          #  64    0x44d38  2      
  popq %r11                          #  65    0x44d3a  3      
  movl $0xffffffff, %eax             #  66    0x44d3d  5      
  andl $0xffffffe0, %r11d            #  67    0x44d42  7      
  addq %r15, %r11                    #  68    0x44d49  3      
  jmpq %r11                          #  69    0x44d4c  3      
  nop                                #  70    0x44d4f  1      
  nop                                #  71    0x44d50  1      
  nop                                #  72    0x44d51  1      
  nop                                #  73    0x44d52  1      
  nop                                #  74    0x44d53  1      
  nop                                #  75    0x44d54  1      
  nop                                #  76    0x44d55  1      
  nop                                #  77    0x44d56  1      
  nop                                #  78    0x44d57  1      
  nop                                #  79    0x44d58  1      
  nop                                #  80    0x44d59  1      
  nop                                #  81    0x44d5a  1      
  nop                                #  82    0x44d5b  1      
  nop                                #  83    0x44d5c  1      
                                                              
.size _ZNKSs4findEPKcjj, .-_ZNKSs4findEPKcjj

