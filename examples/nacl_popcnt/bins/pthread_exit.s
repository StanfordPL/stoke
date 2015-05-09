  .text
  .globl pthread_exit
  .type pthread_exit, @function

#! file-offset 0x40c00
#! rip-offset  0x40c00
#! capacity    1152 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_exit:                     #        0x40c00  0      
  pushq %r14                       #  1     0x40c00  3      
  movl %edi, %edi                  #  2     0x40c03  2      
  pushq %r13                       #  3     0x40c05  3      
  pushq %r12                       #  4     0x40c08  3      
  pushq %rbx                       #  5     0x40c0b  2      
  subl $0x18, %esp                 #  6     0x40c0d  3      
  addq %r15, %rsp                  #  7     0x40c10  3      
  movq %rdi, 0x8(%rsp)             #  8     0x40c13  5      
  nop                              #  9     0x40c18  1      
  callq .__nacl_read_tp            #  10    0x40c19  5      
  movl %eax, %ebx                  #  11    0x40c1e  2      
  nop                              #  12    0x40c20  1      
  nop                              #  13    0x40c21  1      
  callq .__nacl_read_tp            #  14    0x40c22  5      
  movl %eax, %eax                  #  15    0x40c27  2      
  movl -0x8(%r15,%rax,1), %r11d    #  16    0x40c29  5      
  movl %ebx, %ebx                  #  17    0x40c2e  2      
  movl 0x10(%r15,%rbx,1), %r12d    #  18    0x40c30  5      
  movl %ebx, %ebx                  #  19    0x40c35  2      
  movl 0x24(%r15,%rbx,1), %r13d    #  20    0x40c37  5      
  movl %ebx, %ebx                  #  21    0x40c3c  2      
  movl 0x8(%r15,%rbx,1), %r14d     #  22    0x40c3e  5      
  nop                              #  23    0x40c43  1      
  testl %r11d, %r11d               #  24    0x40c44  3      
  je .L_40ce0                      #  25    0x40c47  6      
  nop                              #  26    0x40c4d  1      
  nop                              #  27    0x40c4e  1      
.L_40c80:                          #        0x40c4f  0      
  movl $0x1, %edi                  #  28    0x40c4f  5      
  nop                              #  29    0x40c54  1      
  nop                              #  30    0x40c55  1      
  callq .pthread_cleanup_pop       #  31    0x40c56  5      
  nop                              #  32    0x40c5b  1      
  nop                              #  33    0x40c5c  1      
  callq .__nacl_read_tp            #  34    0x40c5d  5      
  movl %eax, %eax                  #  35    0x40c62  2      
  movl -0x8(%r15,%rax,1), %r10d    #  36    0x40c64  5      
  testl %r10d, %r10d               #  37    0x40c69  3      
  jne .L_40c80                     #  38    0x40c6c  6      
  xchgw %ax, %ax                   #  39    0x40c72  3      
  nop                              #  40    0x40c75  1      
.L_40ce0:                          #        0x40c76  0      
  nop                              #  41    0x40c76  1      
  nop                              #  42    0x40c77  1      
  callq .__nc_tsd_exit             #  43    0x40c78  5      
  nop                              #  44    0x40c7d  1      
  nop                              #  45    0x40c7e  1      
  callq .__newlib_thread_exit      #  46    0x40c7f  5      
  cmpl %r13d, 0xfff6131(%rip)      #  47    0x40c84  7      
  je .L_40f60                      #  48    0x40c8b  6      
  movl $0x10036da0, %edi           #  49    0x40c91  5      
  nop                              #  50    0x40c96  1      
  callq .pthread_mutex_lock        #  51    0x40c97  5      
  movl $0x10036da0, %edi           #  52    0x40c9c  5      
  subl $0x1, 0xffef840(%rip)       #  53    0x40ca1  7      
  nop                              #  54    0x40ca8  1      
  callq .pthread_mutex_unlock      #  55    0x40ca9  5      
  movl $0x10036da0, %edi           #  56    0x40cae  5      
  nop                              #  57    0x40cb3  1      
  nop                              #  58    0x40cb4  1      
  callq .pthread_mutex_lock        #  59    0x40cb5  5      
  movl 0x8(%rsp), %eax             #  60    0x40cba  4      
  testl %r14d, %r14d               #  61    0x40cbe  3      
  movl %r13d, %r13d                #  62    0x40cc1  3      
  movl %eax, (%r15,%r13,1)         #  63    0x40cc4  4      
  jne .L_40ee0                     #  64    0x40cc8  6      
  nop                              #  65    0x40cce  1      
.L_40da0:                          #        0x40ccf  0      
  movl %ebx, %ebx                  #  66    0x40ccf  2      
  movl 0x14(%r15,%rbx,1), %eax     #  67    0x40cd1  5      
  testq %rax, %rax                 #  68    0x40cd6  3      
  je .L_40e20                      #  69    0x40cd9  6      
  movl %ebx, %ebx                  #  70    0x40cdf  2      
  movl 0x24(%r15,%rbx,1), %edx     #  71    0x40ce1  5      
  testq %rdx, %rdx                 #  72    0x40ce6  3      
  je .L_40de0                      #  73    0x40ce9  6      
  nop                              #  74    0x40cef  1      
  movl %edx, %edx                  #  75    0x40cf0  2      
  movl $0x0, 0x10(%r15,%rdx,1)     #  76    0x40cf2  9      
  nop                              #  77    0x40cfb  1      
  nop                              #  78    0x40cfc  1      
.L_40de0:                          #        0x40cfd  0      
  movl 0xfff60c9(%rip), %edx       #  79    0x40cfd  6      
  movl %eax, %eax                  #  80    0x40d03  2      
  movl $0x0, 0x4(%r15,%rax,1)      #  81    0x40d05  9      
  addl $0x1, 0xfff60a3(%rip)       #  82    0x40d0e  7      
  nop                              #  83    0x40d15  1      
  movl %eax, %eax                  #  84    0x40d16  2      
  movl $0x0, (%r15,%rax,1)         #  85    0x40d18  8      
  movl %eax, 0xfff60a6(%rip)       #  86    0x40d20  6      
  movl %edx, %edx                  #  87    0x40d26  2      
  movl %eax, (%r15,%rdx,1)         #  88    0x40d28  4      
  nop                              #  89    0x40d2c  1      
.L_40e20:                          #        0x40d2d  0      
  testl %r14d, %r14d               #  90    0x40d2d  3      
  je .L_40f20                      #  91    0x40d30  6      
  nop                              #  92    0x40d36  1      
  nop                              #  93    0x40d37  1      
.L_40e40:                          #        0x40d38  0      
  movl 0xfff6086(%rip), %eax       #  94    0x40d38  6      
  addl $0x1, 0xfff606f(%rip)       #  95    0x40d3e  7      
  cmpl $0x1, 0xffef79c(%rip)       #  96    0x40d45  7      
  movl %r12d, %r12d                #  97    0x40d4c  3      
  movl $0x0, (%r15,%r12,1)         #  98    0x40d4f  8      
  nop                              #  99    0x40d57  1      
  movl %r12d, 0xfff6065(%rip)      #  100   0x40d58  7      
  movl %eax, %eax                  #  101   0x40d5f  2      
  movl %r12d, (%r15,%rax,1)        #  102   0x40d61  4      
  je .L_41040                      #  103   0x40d65  6      
  nop                              #  104   0x40d6b  1      
.L_40e80:                          #        0x40d6c  0      
  movl $0x10036da0, %edi           #  105   0x40d6c  5      
  nop                              #  106   0x40d71  1      
  nop                              #  107   0x40d72  1      
  callq .pthread_mutex_unlock      #  108   0x40d73  5      
  movl 0xfff6056(%rip), %eax       #  109   0x40d78  6      
  leal 0x4(%r12), %edi             #  110   0x40d7e  5      
  nop                              #  111   0x40d83  1      
  andl $0xffffffe0, %eax           #  112   0x40d84  5      
  addq %r15, %rax                  #  113   0x40d89  3      
  callq %rax                       #  114   0x40d8c  2      
  ud2                              #  115   0x40d8e  2      
  nop                              #  116   0x40d90  1      
  nop                              #  117   0x40d91  1      
.L_40ee0:                          #        0x40d92  0      
  leal 0x8(%r13), %edi             #  118   0x40d92  4      
  movl %r13d, %r13d                #  119   0x40d96  3      
  movl $0x1, 0x4(%r15,%r13,1)      #  120   0x40d99  9      
  nop                              #  121   0x40da2  1      
  callq .pthread_cond_signal       #  122   0x40da3  5      
  jmpq .L_40da0                    #  123   0x40da8  5      
  nop                              #  124   0x40dad  1      
  nop                              #  125   0x40dae  1      
.L_40f20:                          #        0x40daf  0      
  movl %r13d, %edi                 #  126   0x40daf  3      
  nop                              #  127   0x40db2  1      
  nop                              #  128   0x40db3  1      
  callq .nc_release_basic_data_mu  #  129   0x40db4  5      
  jmpq .L_40e40                    #  130   0x40db9  5      
  nop                              #  131   0x40dbe  1      
  nop                              #  132   0x40dbf  1      
.L_40f60:                          #        0x40dc0  0      
  movl $0x10036da0, %edi           #  133   0x40dc0  5      
  nop                              #  134   0x40dc5  1      
  nop                              #  135   0x40dc6  1      
  callq .pthread_mutex_lock        #  136   0x40dc7  5      
  cmpl $0x1, 0xffef715(%rip)       #  137   0x40dcc  7      
  je .L_40fe0                      #  138   0x40dd3  6      
  nop                              #  139   0x40dd9  1      
  nop                              #  140   0x40dda  1      
.L_40fa0:                          #        0x40ddb  0      
  movl $0x10036da0, %esi           #  141   0x40ddb  5      
  movl $0x10030d80, %edi           #  142   0x40de0  5      
  xchgw %ax, %ax                   #  143   0x40de5  3      
  nop                              #  144   0x40de8  1      
  callq .pthread_cond_wait         #  145   0x40de9  5      
  cmpl $0x1, 0xffef6f3(%rip)       #  146   0x40dee  7      
  jne .L_40fa0                     #  147   0x40df5  6      
  nop                              #  148   0x40dfb  1      
  nop                              #  149   0x40dfc  1      
.L_40fe0:                          #        0x40dfd  0      
  movl $0x10036da0, %ecx           #  150   0x40dfd  5      
  movl $0x10030d80, %edx           #  151   0x40e02  5      
  movl $0x1d4, %esi                #  152   0x40e07  5      
  movl $0x10020940, %edi           #  153   0x40e0c  5      
  nop                              #  154   0x40e11  1      
  callq .NACL_AnnotateCondVarWait  #  155   0x40e12  5      
  movl $0x10036da0, %edi           #  156   0x40e17  5      
  nop                              #  157   0x40e1c  1      
  nop                              #  158   0x40e1d  1      
  callq .pthread_mutex_unlock      #  159   0x40e1e  5      
  xorl %edi, %edi                  #  160   0x40e23  2      
  nop                              #  161   0x40e25  1      
  nop                              #  162   0x40e26  1      
  callq .exit                      #  163   0x40e27  5      
.L_41040:                          #        0x40e2c  0      
  movl $0x10030d80, %edi           #  164   0x40e2c  5      
  nop                              #  165   0x40e31  1      
  nop                              #  166   0x40e32  1      
  callq .pthread_cond_signal       #  167   0x40e33  5      
  jmpq .L_40e80                    #  168   0x40e38  5      
  nop                              #  169   0x40e3d  1      
  nop                              #  170   0x40e3e  1      
                                                            
.size pthread_exit, .-pthread_exit

