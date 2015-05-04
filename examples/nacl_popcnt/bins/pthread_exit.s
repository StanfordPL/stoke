  .text
  .globl pthread_exit
  .type pthread_exit, @function

#! file-offset 0x40ca0
#! rip-offset  0x40ca0
#! capacity    1152 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_exit:                     #        0x40ca0  0      
  pushq %r14                       #  1     0x40ca0  3      
  movl %edi, %edi                  #  2     0x40ca3  2      
  pushq %r13                       #  3     0x40ca5  3      
  pushq %r12                       #  4     0x40ca8  3      
  pushq %rbx                       #  5     0x40cab  2      
  subl $0x18, %esp                 #  6     0x40cad  3      
  addq %r15, %rsp                  #  7     0x40cb0  3      
  movq %rdi, 0x8(%rsp)             #  8     0x40cb3  5      
  nop                              #  9     0x40cb8  1      
  callq .__nacl_read_tp            #  10    0x40cb9  5      
  movl %eax, %ebx                  #  11    0x40cbe  2      
  nop                              #  12    0x40cc0  1      
  nop                              #  13    0x40cc1  1      
  callq .__nacl_read_tp            #  14    0x40cc2  5      
  movl %eax, %eax                  #  15    0x40cc7  2      
  movl -0x8(%r15,%rax,1), %r11d    #  16    0x40cc9  5      
  movl %ebx, %ebx                  #  17    0x40cce  2      
  movl 0x10(%r15,%rbx,1), %r12d    #  18    0x40cd0  5      
  movl %ebx, %ebx                  #  19    0x40cd5  2      
  movl 0x24(%r15,%rbx,1), %r13d    #  20    0x40cd7  5      
  movl %ebx, %ebx                  #  21    0x40cdc  2      
  movl 0x8(%r15,%rbx,1), %r14d     #  22    0x40cde  5      
  nop                              #  23    0x40ce3  1      
  testl %r11d, %r11d               #  24    0x40ce4  3      
  je .L_40d80                      #  25    0x40ce7  6      
  nop                              #  26    0x40ced  1      
  nop                              #  27    0x40cee  1      
.L_40d20:                          #        0x40cef  0      
  movl $0x1, %edi                  #  28    0x40cef  5      
  nop                              #  29    0x40cf4  1      
  nop                              #  30    0x40cf5  1      
  callq .pthread_cleanup_pop       #  31    0x40cf6  5      
  nop                              #  32    0x40cfb  1      
  nop                              #  33    0x40cfc  1      
  callq .__nacl_read_tp            #  34    0x40cfd  5      
  movl %eax, %eax                  #  35    0x40d02  2      
  movl -0x8(%r15,%rax,1), %r10d    #  36    0x40d04  5      
  testl %r10d, %r10d               #  37    0x40d09  3      
  jne .L_40d20                     #  38    0x40d0c  6      
  xchgw %ax, %ax                   #  39    0x40d12  3      
  nop                              #  40    0x40d15  1      
.L_40d80:                          #        0x40d16  0      
  nop                              #  41    0x40d16  1      
  nop                              #  42    0x40d17  1      
  callq .__nc_tsd_exit             #  43    0x40d18  5      
  nop                              #  44    0x40d1d  1      
  nop                              #  45    0x40d1e  1      
  callq .__newlib_thread_exit      #  46    0x40d1f  5      
  cmpl %r13d, 0xfff6091(%rip)      #  47    0x40d24  7      
  je .L_41000                      #  48    0x40d2b  6      
  movl $0x10036da0, %edi           #  49    0x40d31  5      
  nop                              #  50    0x40d36  1      
  callq .pthread_mutex_lock        #  51    0x40d37  5      
  movl $0x10036da0, %edi           #  52    0x40d3c  5      
  subl $0x1, 0xffef7a0(%rip)       #  53    0x40d41  7      
  nop                              #  54    0x40d48  1      
  callq .pthread_mutex_unlock      #  55    0x40d49  5      
  movl $0x10036da0, %edi           #  56    0x40d4e  5      
  nop                              #  57    0x40d53  1      
  nop                              #  58    0x40d54  1      
  callq .pthread_mutex_lock        #  59    0x40d55  5      
  movl 0x8(%rsp), %eax             #  60    0x40d5a  4      
  testl %r14d, %r14d               #  61    0x40d5e  3      
  movl %r13d, %r13d                #  62    0x40d61  3      
  movl %eax, (%r15,%r13,1)         #  63    0x40d64  4      
  jne .L_40f80                     #  64    0x40d68  6      
  nop                              #  65    0x40d6e  1      
.L_40e40:                          #        0x40d6f  0      
  movl %ebx, %ebx                  #  66    0x40d6f  2      
  movl 0x14(%r15,%rbx,1), %eax     #  67    0x40d71  5      
  testq %rax, %rax                 #  68    0x40d76  3      
  je .L_40ec0                      #  69    0x40d79  6      
  movl %ebx, %ebx                  #  70    0x40d7f  2      
  movl 0x24(%r15,%rbx,1), %edx     #  71    0x40d81  5      
  testq %rdx, %rdx                 #  72    0x40d86  3      
  je .L_40e80                      #  73    0x40d89  6      
  nop                              #  74    0x40d8f  1      
  movl %edx, %edx                  #  75    0x40d90  2      
  movl $0x0, 0x10(%r15,%rdx,1)     #  76    0x40d92  9      
  nop                              #  77    0x40d9b  1      
  nop                              #  78    0x40d9c  1      
.L_40e80:                          #        0x40d9d  0      
  movl 0xfff6029(%rip), %edx       #  79    0x40d9d  6      
  movl %eax, %eax                  #  80    0x40da3  2      
  movl $0x0, 0x4(%r15,%rax,1)      #  81    0x40da5  9      
  addl $0x1, 0xfff6003(%rip)       #  82    0x40dae  7      
  nop                              #  83    0x40db5  1      
  movl %eax, %eax                  #  84    0x40db6  2      
  movl $0x0, (%r15,%rax,1)         #  85    0x40db8  8      
  movl %eax, 0xfff6006(%rip)       #  86    0x40dc0  6      
  movl %edx, %edx                  #  87    0x40dc6  2      
  movl %eax, (%r15,%rdx,1)         #  88    0x40dc8  4      
  nop                              #  89    0x40dcc  1      
.L_40ec0:                          #        0x40dcd  0      
  testl %r14d, %r14d               #  90    0x40dcd  3      
  je .L_40fc0                      #  91    0x40dd0  6      
  nop                              #  92    0x40dd6  1      
  nop                              #  93    0x40dd7  1      
.L_40ee0:                          #        0x40dd8  0      
  movl 0xfff5fe6(%rip), %eax       #  94    0x40dd8  6      
  addl $0x1, 0xfff5fcf(%rip)       #  95    0x40dde  7      
  cmpl $0x1, 0xffef6fc(%rip)       #  96    0x40de5  7      
  movl %r12d, %r12d                #  97    0x40dec  3      
  movl $0x0, (%r15,%r12,1)         #  98    0x40def  8      
  nop                              #  99    0x40df7  1      
  movl %r12d, 0xfff5fc5(%rip)      #  100   0x40df8  7      
  movl %eax, %eax                  #  101   0x40dff  2      
  movl %r12d, (%r15,%rax,1)        #  102   0x40e01  4      
  je .L_410e0                      #  103   0x40e05  6      
  nop                              #  104   0x40e0b  1      
.L_40f20:                          #        0x40e0c  0      
  movl $0x10036da0, %edi           #  105   0x40e0c  5      
  nop                              #  106   0x40e11  1      
  nop                              #  107   0x40e12  1      
  callq .pthread_mutex_unlock      #  108   0x40e13  5      
  movl 0xfff5fb6(%rip), %eax       #  109   0x40e18  6      
  leal 0x4(%r12), %edi             #  110   0x40e1e  5      
  nop                              #  111   0x40e23  1      
  andl $0xffffffe0, %eax           #  112   0x40e24  5      
  addq %r15, %rax                  #  113   0x40e29  3      
  callq %rax                       #  114   0x40e2c  2      
  ud2                              #  115   0x40e2e  2      
  nop                              #  116   0x40e30  1      
  nop                              #  117   0x40e31  1      
.L_40f80:                          #        0x40e32  0      
  leal 0x8(%r13), %edi             #  118   0x40e32  4      
  movl %r13d, %r13d                #  119   0x40e36  3      
  movl $0x1, 0x4(%r15,%r13,1)      #  120   0x40e39  9      
  nop                              #  121   0x40e42  1      
  callq .pthread_cond_signal       #  122   0x40e43  5      
  jmpq .L_40e40                    #  123   0x40e48  5      
  nop                              #  124   0x40e4d  1      
  nop                              #  125   0x40e4e  1      
.L_40fc0:                          #        0x40e4f  0      
  movl %r13d, %edi                 #  126   0x40e4f  3      
  nop                              #  127   0x40e52  1      
  nop                              #  128   0x40e53  1      
  callq .nc_release_basic_data_mu  #  129   0x40e54  5      
  jmpq .L_40ee0                    #  130   0x40e59  5      
  nop                              #  131   0x40e5e  1      
  nop                              #  132   0x40e5f  1      
.L_41000:                          #        0x40e60  0      
  movl $0x10036da0, %edi           #  133   0x40e60  5      
  nop                              #  134   0x40e65  1      
  nop                              #  135   0x40e66  1      
  callq .pthread_mutex_lock        #  136   0x40e67  5      
  cmpl $0x1, 0xffef675(%rip)       #  137   0x40e6c  7      
  je .L_41080                      #  138   0x40e73  6      
  nop                              #  139   0x40e79  1      
  nop                              #  140   0x40e7a  1      
.L_41040:                          #        0x40e7b  0      
  movl $0x10036da0, %esi           #  141   0x40e7b  5      
  movl $0x10030d80, %edi           #  142   0x40e80  5      
  xchgw %ax, %ax                   #  143   0x40e85  3      
  nop                              #  144   0x40e88  1      
  callq .pthread_cond_wait         #  145   0x40e89  5      
  cmpl $0x1, 0xffef653(%rip)       #  146   0x40e8e  7      
  jne .L_41040                     #  147   0x40e95  6      
  nop                              #  148   0x40e9b  1      
  nop                              #  149   0x40e9c  1      
.L_41080:                          #        0x40e9d  0      
  movl $0x10036da0, %ecx           #  150   0x40e9d  5      
  movl $0x10030d80, %edx           #  151   0x40ea2  5      
  movl $0x1d4, %esi                #  152   0x40ea7  5      
  movl $0x10020940, %edi           #  153   0x40eac  5      
  nop                              #  154   0x40eb1  1      
  callq .NACL_AnnotateCondVarWait  #  155   0x40eb2  5      
  movl $0x10036da0, %edi           #  156   0x40eb7  5      
  nop                              #  157   0x40ebc  1      
  nop                              #  158   0x40ebd  1      
  callq .pthread_mutex_unlock      #  159   0x40ebe  5      
  xorl %edi, %edi                  #  160   0x40ec3  2      
  nop                              #  161   0x40ec5  1      
  nop                              #  162   0x40ec6  1      
  callq .exit                      #  163   0x40ec7  5      
.L_410e0:                          #        0x40ecc  0      
  movl $0x10030d80, %edi           #  164   0x40ecc  5      
  nop                              #  165   0x40ed1  1      
  nop                              #  166   0x40ed2  1      
  callq .pthread_cond_signal       #  167   0x40ed3  5      
  jmpq .L_40f20                    #  168   0x40ed8  5      
  nop                              #  169   0x40edd  1      
  nop                              #  170   0x40ede  1      
                                                            
.size pthread_exit, .-pthread_exit

