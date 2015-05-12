  .text
  .globl pthread_join
  .type pthread_join, @function

#! file-offset 0x40a40
#! rip-offset  0x40a40
#! capacity    480 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_join:                     #        0x40a40  0      
  movq %rbx, -0x18(%rsp)           #  1     0x40a40  5      
  movq %r12, -0x10(%rsp)           #  2     0x40a45  5      
  movl %edi, %ebx                  #  3     0x40a4a  2      
  movq %r13, -0x8(%rsp)            #  4     0x40a4c  5      
  subl $0x18, %esp                 #  5     0x40a51  3      
  addq %r15, %rsp                  #  6     0x40a54  3      
  movl %esi, %r12d                 #  7     0x40a57  3      
  nop                              #  8     0x40a5a  1      
  callq .pthread_self              #  9     0x40a5b  5      
  cmpl %ebx, %eax                  #  10    0x40a60  2      
  movl $0x23, %r13d                #  11    0x40a62  6      
  je .L_40ae0                      #  12    0x40a68  6      
  movl $0x10036da0, %edi           #  13    0x40a6e  5      
  nop                              #  14    0x40a73  1      
  callq .pthread_mutex_lock        #  15    0x40a74  5      
  movl %ebx, %ebx                  #  16    0x40a79  2      
  movl 0x10(%r15,%rbx,1), %eax     #  17    0x40a7b  5      
  testq %rax, %rax                 #  18    0x40a80  3      
  je .L_40ba0                      #  19    0x40a83  6      
  movl %eax, %eax                  #  20    0x40a89  2      
  movl 0x8(%r15,%rax,1), %r9d      #  21    0x40a8b  5      
  testl %r9d, %r9d                 #  22    0x40a90  3      
  jne .L_40b20                     #  23    0x40a93  6      
.L_40aa0:                          #        0x40a99  0      
  movl $0x16, %r13d                #  24    0x40a99  6      
  nop                              #  25    0x40a9f  1      
  nop                              #  26    0x40aa0  1      
.L_40ac0:                          #        0x40aa1  0      
  movl $0x10036da0, %edi           #  27    0x40aa1  5      
  nop                              #  28    0x40aa6  1      
  nop                              #  29    0x40aa7  1      
  callq .pthread_mutex_unlock      #  30    0x40aa8  5      
.L_40ae0:                          #        0x40aad  0      
  movl %r13d, %eax                 #  31    0x40aad  3      
  movq (%rsp), %rbx                #  32    0x40ab0  4      
  movq 0x8(%rsp), %r12             #  33    0x40ab4  5      
  movq 0x10(%rsp), %r13            #  34    0x40ab9  5      
  addl $0x18, %esp                 #  35    0x40abe  3      
  addq %r15, %rsp                  #  36    0x40ac1  3      
  popq %r11                        #  37    0x40ac4  3      
  nop                              #  38    0x40ac7  1      
  andl $0xffffffe0, %r11d          #  39    0x40ac8  7      
  addq %r15, %r11                  #  40    0x40acf  3      
  jmpq %r11                        #  41    0x40ad2  3      
  nop                              #  42    0x40ad5  1      
  nop                              #  43    0x40ad6  1      
.L_40b20:                          #        0x40ad7  0      
  movl %eax, %eax                  #  44    0x40ad7  2      
  movl 0xc(%r15,%rax,1), %r8d      #  45    0x40ad9  5      
  testl %r8d, %r8d                 #  46    0x40ade  3      
  jne .L_40aa0                     #  47    0x40ae1  6      
  movl %ebx, %ebx                  #  48    0x40ae7  2      
  cmpl $0x1, 0x4(%r15,%rbx,1)      #  49    0x40ae9  6      
  nop                              #  50    0x40aef  1      
  movl %eax, %eax                  #  51    0x40af0  2      
  movl $0x1, 0xc(%r15,%rax,1)      #  52    0x40af2  9      
  je .L_40ba0                      #  53    0x40afb  6      
  leal 0x8(%rbx), %r13d            #  54    0x40b01  4      
  nop                              #  55    0x40b05  1      
.L_40b60:                          #        0x40b06  0      
  movl $0x10036da0, %esi           #  56    0x40b06  5      
  movl %r13d, %edi                 #  57    0x40b0b  3      
  nop                              #  58    0x40b0e  1      
  nop                              #  59    0x40b0f  1      
  callq .pthread_cond_wait         #  60    0x40b10  5      
  movl %ebx, %ebx                  #  61    0x40b15  2      
  cmpl $0x1, 0x4(%r15,%rbx,1)      #  62    0x40b17  6      
  jne .L_40b60                     #  63    0x40b1d  6      
  nop                              #  64    0x40b23  1      
  nop                              #  65    0x40b24  1      
.L_40ba0:                          #        0x40b25  0      
  leal 0x8(%rbx), %edx             #  66    0x40b25  3      
  movl $0x10036da0, %ecx           #  67    0x40b28  5      
  movl $0x241, %esi                #  68    0x40b2d  5      
  movl $0x10020940, %edi           #  69    0x40b32  5      
  nop                              #  70    0x40b37  1      
  callq .NACL_AnnotateCondVarWait  #  71    0x40b38  5      
  testq %r12, %r12                 #  72    0x40b3d  3      
  je .L_40be0                      #  73    0x40b40  6      
  movl %ebx, %ebx                  #  74    0x40b46  2      
  movl (%r15,%rbx,1), %eax         #  75    0x40b48  4      
  movl %r12d, %r12d                #  76    0x40b4c  3      
  movl %eax, (%r15,%r12,1)         #  77    0x40b4f  4      
  nop                              #  78    0x40b53  1      
.L_40be0:                          #        0x40b54  0      
  movl %ebx, %edi                  #  79    0x40b54  2      
  xorl %r13d, %r13d                #  80    0x40b56  3      
  nop                              #  81    0x40b59  1      
  nop                              #  82    0x40b5a  1      
  callq .nc_release_basic_data_mu  #  83    0x40b5b  5      
  jmpq .L_40ac0                    #  84    0x40b60  5      
  nop                              #  85    0x40b65  1      
  nop                              #  86    0x40b66  1      
                                                            
.size pthread_join, .-pthread_join

