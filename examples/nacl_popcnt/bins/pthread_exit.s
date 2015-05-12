  .text
  .globl pthread_exit
  .type pthread_exit, @function

#! file-offset 0x40c20
#! rip-offset  0x40c20
#! capacity    1152 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_exit:                     #        0x40c20  0      
  pushq %r14                       #  1     0x40c20  3      
  movl %edi, %edi                  #  2     0x40c23  2      
  pushq %r13                       #  3     0x40c25  3      
  pushq %r12                       #  4     0x40c28  3      
  pushq %rbx                       #  5     0x40c2b  2      
  subl $0x18, %esp                 #  6     0x40c2d  3      
  addq %r15, %rsp                  #  7     0x40c30  3      
  movq %rdi, 0x8(%rsp)             #  8     0x40c33  5      
  nop                              #  9     0x40c38  1      
  callq .__nacl_read_tp            #  10    0x40c39  5      
  movl %eax, %ebx                  #  11    0x40c3e  2      
  nop                              #  12    0x40c40  1      
  nop                              #  13    0x40c41  1      
  callq .__nacl_read_tp            #  14    0x40c42  5      
  movl %eax, %eax                  #  15    0x40c47  2      
  movl -0x8(%r15,%rax,1), %r11d    #  16    0x40c49  5      
  movl %ebx, %ebx                  #  17    0x40c4e  2      
  movl 0x10(%r15,%rbx,1), %r12d    #  18    0x40c50  5      
  movl %ebx, %ebx                  #  19    0x40c55  2      
  movl 0x24(%r15,%rbx,1), %r13d    #  20    0x40c57  5      
  movl %ebx, %ebx                  #  21    0x40c5c  2      
  movl 0x8(%r15,%rbx,1), %r14d     #  22    0x40c5e  5      
  nop                              #  23    0x40c63  1      
  testl %r11d, %r11d               #  24    0x40c64  3      
  je .L_40d00                      #  25    0x40c67  6      
  nop                              #  26    0x40c6d  1      
  nop                              #  27    0x40c6e  1      
.L_40ca0:                          #        0x40c6f  0      
  movl $0x1, %edi                  #  28    0x40c6f  5      
  nop                              #  29    0x40c74  1      
  nop                              #  30    0x40c75  1      
  callq .pthread_cleanup_pop       #  31    0x40c76  5      
  nop                              #  32    0x40c7b  1      
  nop                              #  33    0x40c7c  1      
  callq .__nacl_read_tp            #  34    0x40c7d  5      
  movl %eax, %eax                  #  35    0x40c82  2      
  movl -0x8(%r15,%rax,1), %r10d    #  36    0x40c84  5      
  testl %r10d, %r10d               #  37    0x40c89  3      
  jne .L_40ca0                     #  38    0x40c8c  6      
  xchgw %ax, %ax                   #  39    0x40c92  3      
  nop                              #  40    0x40c95  1      
.L_40d00:                          #        0x40c96  0      
  nop                              #  41    0x40c96  1      
  nop                              #  42    0x40c97  1      
  callq .__nc_tsd_exit             #  43    0x40c98  5      
  nop                              #  44    0x40c9d  1      
  nop                              #  45    0x40c9e  1      
  callq .__newlib_thread_exit      #  46    0x40c9f  5      
  cmpl %r13d, 0xfff6111(%rip)      #  47    0x40ca4  7      
  je .L_40f80                      #  48    0x40cab  6      
  movl $0x10036da0, %edi           #  49    0x40cb1  5      
  nop                              #  50    0x40cb6  1      
  callq .pthread_mutex_lock        #  51    0x40cb7  5      
  movl $0x10036da0, %edi           #  52    0x40cbc  5      
  subl $0x1, 0xffef820(%rip)       #  53    0x40cc1  7      
  nop                              #  54    0x40cc8  1      
  callq .pthread_mutex_unlock      #  55    0x40cc9  5      
  movl $0x10036da0, %edi           #  56    0x40cce  5      
  nop                              #  57    0x40cd3  1      
  nop                              #  58    0x40cd4  1      
  callq .pthread_mutex_lock        #  59    0x40cd5  5      
  movl 0x8(%rsp), %eax             #  60    0x40cda  4      
  testl %r14d, %r14d               #  61    0x40cde  3      
  movl %r13d, %r13d                #  62    0x40ce1  3      
  movl %eax, (%r15,%r13,1)         #  63    0x40ce4  4      
  jne .L_40f00                     #  64    0x40ce8  6      
  nop                              #  65    0x40cee  1      
.L_40dc0:                          #        0x40cef  0      
  movl %ebx, %ebx                  #  66    0x40cef  2      
  movl 0x14(%r15,%rbx,1), %eax     #  67    0x40cf1  5      
  testq %rax, %rax                 #  68    0x40cf6  3      
  je .L_40e40                      #  69    0x40cf9  6      
  movl %ebx, %ebx                  #  70    0x40cff  2      
  movl 0x24(%r15,%rbx,1), %edx     #  71    0x40d01  5      
  testq %rdx, %rdx                 #  72    0x40d06  3      
  je .L_40e00                      #  73    0x40d09  6      
  nop                              #  74    0x40d0f  1      
  movl %edx, %edx                  #  75    0x40d10  2      
  movl $0x0, 0x10(%r15,%rdx,1)     #  76    0x40d12  9      
  nop                              #  77    0x40d1b  1      
  nop                              #  78    0x40d1c  1      
.L_40e00:                          #        0x40d1d  0      
  movl 0xfff60a9(%rip), %edx       #  79    0x40d1d  6      
  movl %eax, %eax                  #  80    0x40d23  2      
  movl $0x0, 0x4(%r15,%rax,1)      #  81    0x40d25  9      
  addl $0x1, 0xfff6083(%rip)       #  82    0x40d2e  7      
  nop                              #  83    0x40d35  1      
  movl %eax, %eax                  #  84    0x40d36  2      
  movl $0x0, (%r15,%rax,1)         #  85    0x40d38  8      
  movl %eax, 0xfff6086(%rip)       #  86    0x40d40  6      
  movl %edx, %edx                  #  87    0x40d46  2      
  movl %eax, (%r15,%rdx,1)         #  88    0x40d48  4      
  nop                              #  89    0x40d4c  1      
.L_40e40:                          #        0x40d4d  0      
  testl %r14d, %r14d               #  90    0x40d4d  3      
  je .L_40f40                      #  91    0x40d50  6      
  nop                              #  92    0x40d56  1      
  nop                              #  93    0x40d57  1      
.L_40e60:                          #        0x40d58  0      
  movl 0xfff6066(%rip), %eax       #  94    0x40d58  6      
  addl $0x1, 0xfff604f(%rip)       #  95    0x40d5e  7      
  cmpl $0x1, 0xffef77c(%rip)       #  96    0x40d65  7      
  movl %r12d, %r12d                #  97    0x40d6c  3      
  movl $0x0, (%r15,%r12,1)         #  98    0x40d6f  8      
  nop                              #  99    0x40d77  1      
  movl %r12d, 0xfff6045(%rip)      #  100   0x40d78  7      
  movl %eax, %eax                  #  101   0x40d7f  2      
  movl %r12d, (%r15,%rax,1)        #  102   0x40d81  4      
  je .L_41060                      #  103   0x40d85  6      
  nop                              #  104   0x40d8b  1      
.L_40ea0:                          #        0x40d8c  0      
  movl $0x10036da0, %edi           #  105   0x40d8c  5      
  nop                              #  106   0x40d91  1      
  nop                              #  107   0x40d92  1      
  callq .pthread_mutex_unlock      #  108   0x40d93  5      
  movl 0xfff6036(%rip), %eax       #  109   0x40d98  6      
  leal 0x4(%r12), %edi             #  110   0x40d9e  5      
  nop                              #  111   0x40da3  1      
  andl $0xffffffe0, %eax           #  112   0x40da4  5      
  addq %r15, %rax                  #  113   0x40da9  3      
  callq %rax                       #  114   0x40dac  2      
  ud2                              #  115   0x40dae  2      
  nop                              #  116   0x40db0  1      
  nop                              #  117   0x40db1  1      
.L_40f00:                          #        0x40db2  0      
  leal 0x8(%r13), %edi             #  118   0x40db2  4      
  movl %r13d, %r13d                #  119   0x40db6  3      
  movl $0x1, 0x4(%r15,%r13,1)      #  120   0x40db9  9      
  nop                              #  121   0x40dc2  1      
  callq .pthread_cond_signal       #  122   0x40dc3  5      
  jmpq .L_40dc0                    #  123   0x40dc8  5      
  nop                              #  124   0x40dcd  1      
  nop                              #  125   0x40dce  1      
.L_40f40:                          #        0x40dcf  0      
  movl %r13d, %edi                 #  126   0x40dcf  3      
  nop                              #  127   0x40dd2  1      
  nop                              #  128   0x40dd3  1      
  callq .nc_release_basic_data_mu  #  129   0x40dd4  5      
  jmpq .L_40e60                    #  130   0x40dd9  5      
  nop                              #  131   0x40dde  1      
  nop                              #  132   0x40ddf  1      
.L_40f80:                          #        0x40de0  0      
  movl $0x10036da0, %edi           #  133   0x40de0  5      
  nop                              #  134   0x40de5  1      
  nop                              #  135   0x40de6  1      
  callq .pthread_mutex_lock        #  136   0x40de7  5      
  cmpl $0x1, 0xffef6f5(%rip)       #  137   0x40dec  7      
  je .L_41000                      #  138   0x40df3  6      
  nop                              #  139   0x40df9  1      
  nop                              #  140   0x40dfa  1      
.L_40fc0:                          #        0x40dfb  0      
  movl $0x10036da0, %esi           #  141   0x40dfb  5      
  movl $0x10030d80, %edi           #  142   0x40e00  5      
  xchgw %ax, %ax                   #  143   0x40e05  3      
  nop                              #  144   0x40e08  1      
  callq .pthread_cond_wait         #  145   0x40e09  5      
  cmpl $0x1, 0xffef6d3(%rip)       #  146   0x40e0e  7      
  jne .L_40fc0                     #  147   0x40e15  6      
  nop                              #  148   0x40e1b  1      
  nop                              #  149   0x40e1c  1      
.L_41000:                          #        0x40e1d  0      
  movl $0x10036da0, %ecx           #  150   0x40e1d  5      
  movl $0x10030d80, %edx           #  151   0x40e22  5      
  movl $0x1d4, %esi                #  152   0x40e27  5      
  movl $0x10020940, %edi           #  153   0x40e2c  5      
  nop                              #  154   0x40e31  1      
  callq .NACL_AnnotateCondVarWait  #  155   0x40e32  5      
  movl $0x10036da0, %edi           #  156   0x40e37  5      
  nop                              #  157   0x40e3c  1      
  nop                              #  158   0x40e3d  1      
  callq .pthread_mutex_unlock      #  159   0x40e3e  5      
  xorl %edi, %edi                  #  160   0x40e43  2      
  nop                              #  161   0x40e45  1      
  nop                              #  162   0x40e46  1      
  callq .exit                      #  163   0x40e47  5      
.L_41060:                          #        0x40e4c  0      
  movl $0x10030d80, %edi           #  164   0x40e4c  5      
  nop                              #  165   0x40e51  1      
  nop                              #  166   0x40e52  1      
  callq .pthread_cond_signal       #  167   0x40e53  5      
  jmpq .L_40ea0                    #  168   0x40e58  5      
  nop                              #  169   0x40e5d  1      
  nop                              #  170   0x40e5e  1      
                                                            
.size pthread_exit, .-pthread_exit

