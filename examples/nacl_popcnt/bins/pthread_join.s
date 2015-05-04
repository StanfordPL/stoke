  .text
  .globl pthread_join
  .type pthread_join, @function

#! file-offset 0x40ac0
#! rip-offset  0x40ac0
#! capacity    480 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_join:                     #        0x40ac0  0      
  movq %rbx, -0x18(%rsp)           #  1     0x40ac0  5      
  movq %r12, -0x10(%rsp)           #  2     0x40ac5  5      
  movl %edi, %ebx                  #  3     0x40aca  2      
  movq %r13, -0x8(%rsp)            #  4     0x40acc  5      
  subl $0x18, %esp                 #  5     0x40ad1  3      
  addq %r15, %rsp                  #  6     0x40ad4  3      
  movl %esi, %r12d                 #  7     0x40ad7  3      
  nop                              #  8     0x40ada  1      
  callq .pthread_self              #  9     0x40adb  5      
  cmpl %ebx, %eax                  #  10    0x40ae0  2      
  movl $0x23, %r13d                #  11    0x40ae2  6      
  je .L_40b60                      #  12    0x40ae8  6      
  movl $0x10036da0, %edi           #  13    0x40aee  5      
  nop                              #  14    0x40af3  1      
  callq .pthread_mutex_lock        #  15    0x40af4  5      
  movl %ebx, %ebx                  #  16    0x40af9  2      
  movl 0x10(%r15,%rbx,1), %eax     #  17    0x40afb  5      
  testq %rax, %rax                 #  18    0x40b00  3      
  je .L_40c20                      #  19    0x40b03  6      
  movl %eax, %eax                  #  20    0x40b09  2      
  movl 0x8(%r15,%rax,1), %r9d      #  21    0x40b0b  5      
  testl %r9d, %r9d                 #  22    0x40b10  3      
  jne .L_40ba0                     #  23    0x40b13  6      
.L_40b20:                          #        0x40b19  0      
  movl $0x16, %r13d                #  24    0x40b19  6      
  nop                              #  25    0x40b1f  1      
  nop                              #  26    0x40b20  1      
.L_40b40:                          #        0x40b21  0      
  movl $0x10036da0, %edi           #  27    0x40b21  5      
  nop                              #  28    0x40b26  1      
  nop                              #  29    0x40b27  1      
  callq .pthread_mutex_unlock      #  30    0x40b28  5      
.L_40b60:                          #        0x40b2d  0      
  movl %r13d, %eax                 #  31    0x40b2d  3      
  movq (%rsp), %rbx                #  32    0x40b30  4      
  movq 0x8(%rsp), %r12             #  33    0x40b34  5      
  movq 0x10(%rsp), %r13            #  34    0x40b39  5      
  addl $0x18, %esp                 #  35    0x40b3e  3      
  addq %r15, %rsp                  #  36    0x40b41  3      
  popq %r11                        #  37    0x40b44  3      
  nop                              #  38    0x40b47  1      
  andl $0xffffffe0, %r11d          #  39    0x40b48  7      
  addq %r15, %r11                  #  40    0x40b4f  3      
  jmpq %r11                        #  41    0x40b52  3      
  nop                              #  42    0x40b55  1      
  nop                              #  43    0x40b56  1      
.L_40ba0:                          #        0x40b57  0      
  movl %eax, %eax                  #  44    0x40b57  2      
  movl 0xc(%r15,%rax,1), %r8d      #  45    0x40b59  5      
  testl %r8d, %r8d                 #  46    0x40b5e  3      
  jne .L_40b20                     #  47    0x40b61  6      
  movl %ebx, %ebx                  #  48    0x40b67  2      
  cmpl $0x1, 0x4(%r15,%rbx,1)      #  49    0x40b69  6      
  nop                              #  50    0x40b6f  1      
  movl %eax, %eax                  #  51    0x40b70  2      
  movl $0x1, 0xc(%r15,%rax,1)      #  52    0x40b72  9      
  je .L_40c20                      #  53    0x40b7b  6      
  leal 0x8(%rbx), %r13d            #  54    0x40b81  4      
  nop                              #  55    0x40b85  1      
.L_40be0:                          #        0x40b86  0      
  movl $0x10036da0, %esi           #  56    0x40b86  5      
  movl %r13d, %edi                 #  57    0x40b8b  3      
  nop                              #  58    0x40b8e  1      
  nop                              #  59    0x40b8f  1      
  callq .pthread_cond_wait         #  60    0x40b90  5      
  movl %ebx, %ebx                  #  61    0x40b95  2      
  cmpl $0x1, 0x4(%r15,%rbx,1)      #  62    0x40b97  6      
  jne .L_40be0                     #  63    0x40b9d  6      
  nop                              #  64    0x40ba3  1      
  nop                              #  65    0x40ba4  1      
.L_40c20:                          #        0x40ba5  0      
  leal 0x8(%rbx), %edx             #  66    0x40ba5  3      
  movl $0x10036da0, %ecx           #  67    0x40ba8  5      
  movl $0x241, %esi                #  68    0x40bad  5      
  movl $0x10020940, %edi           #  69    0x40bb2  5      
  nop                              #  70    0x40bb7  1      
  callq .NACL_AnnotateCondVarWait  #  71    0x40bb8  5      
  testq %r12, %r12                 #  72    0x40bbd  3      
  je .L_40c60                      #  73    0x40bc0  6      
  movl %ebx, %ebx                  #  74    0x40bc6  2      
  movl (%r15,%rbx,1), %eax         #  75    0x40bc8  4      
  movl %r12d, %r12d                #  76    0x40bcc  3      
  movl %eax, (%r15,%r12,1)         #  77    0x40bcf  4      
  nop                              #  78    0x40bd3  1      
.L_40c60:                          #        0x40bd4  0      
  movl %ebx, %edi                  #  79    0x40bd4  2      
  xorl %r13d, %r13d                #  80    0x40bd6  3      
  nop                              #  81    0x40bd9  1      
  nop                              #  82    0x40bda  1      
  callq .nc_release_basic_data_mu  #  83    0x40bdb  5      
  jmpq .L_40b40                    #  84    0x40be0  5      
  nop                              #  85    0x40be5  1      
  nop                              #  86    0x40be6  1      
                                                            
.size pthread_join, .-pthread_join

