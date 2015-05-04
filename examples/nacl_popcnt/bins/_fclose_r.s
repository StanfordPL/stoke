  .text
  .globl _fclose_r
  .type _fclose_r, @function

#! file-offset 0x87a60
#! rip-offset  0x87a60
#! capacity    800 bytes

# Text                                   #  Line  RIP      Bytes  
._fclose_r:                              #        0x87a60  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x87a60  5      
  movl %esi, %ebx                        #  2     0x87a65  2      
  movq %r12, -0x10(%rsp)                 #  3     0x87a67  5      
  movq %r13, -0x8(%rsp)                  #  4     0x87a6c  5      
  subl $0x18, %esp                       #  5     0x87a71  3      
  addq %r15, %rsp                        #  6     0x87a74  3      
  xorl %r13d, %r13d                      #  7     0x87a77  3      
  testq %rbx, %rbx                       #  8     0x87a7a  3      
  movl %edi, %r12d                       #  9     0x87a7d  3      
  je .L_87c60                            #  10    0x87a80  6      
  testq %r12, %r12                       #  11    0x87a86  3      
  je .L_87aa0                            #  12    0x87a89  6      
  movl %r12d, %r12d                      #  13    0x87a8f  3      
  movl 0x38(%r15,%r12,1), %eax           #  14    0x87a92  5      
  testl %eax, %eax                       #  15    0x87a97  2      
  je .L_87d00                            #  16    0x87a99  6      
  nop                                    #  17    0x87a9f  1      
.L_87aa0:                                #        0x87aa0  0      
  movl %ebx, %ebx                        #  18    0x87aa0  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  19    0x87aa2  6      
  je .L_87ca0                            #  20    0x87aa8  6      
  nop                                    #  21    0x87aae  1      
  nop                                    #  22    0x87aaf  1      
.L_87ac0:                                #        0x87ab0  0      
  movl %ebx, %esi                        #  23    0x87ab0  2      
  movl %r12d, %edi                       #  24    0x87ab2  3      
  nop                                    #  25    0x87ab5  1      
  nop                                    #  26    0x87ab6  1      
  callq .__sflush_r                      #  27    0x87ab7  5      
  movl %eax, %r13d                       #  28    0x87abc  3      
  movl %ebx, %ebx                        #  29    0x87abf  2      
  movl 0x2c(%r15,%rbx,1), %eax           #  30    0x87ac1  5      
  testq %rax, %rax                       #  31    0x87ac6  3      
  je .L_87b40                            #  32    0x87ac9  6      
  movl %ebx, %ebx                        #  33    0x87acf  2      
  movl 0x1c(%r15,%rbx,1), %esi           #  34    0x87ad1  5      
  movl %r12d, %edi                       #  35    0x87ad6  3      
  nop                                    #  36    0x87ad9  1      
  nop                                    #  37    0x87ada  1      
  nop                                    #  38    0x87adb  1      
  andl $0xffffffe0, %eax                 #  39    0x87adc  5      
  addq %r15, %rax                        #  40    0x87ae1  3      
  callq %rax                             #  41    0x87ae4  2      
  testl %eax, %eax                       #  42    0x87ae6  2      
  movl $0xffffffff, %eax                 #  43    0x87ae8  5      
  cmovsl %eax, %r13d                     #  44    0x87aed  4      
  nop                                    #  45    0x87af1  1      
  nop                                    #  46    0x87af2  1      
.L_87b40:                                #        0x87af3  0      
  movl %ebx, %ebx                        #  47    0x87af3  2      
  cmpb $0x0, 0xc(%r15,%rbx,1)            #  48    0x87af5  6      
  js .L_87d40                            #  49    0x87afb  6      
  nop                                    #  50    0x87b01  1      
  nop                                    #  51    0x87b02  1      
.L_87b60:                                #        0x87b03  0      
  movl %ebx, %ebx                        #  52    0x87b03  2      
  movl 0x30(%r15,%rbx,1), %esi           #  53    0x87b05  5      
  testq %rsi, %rsi                       #  54    0x87b0a  3      
  je .L_87ba0                            #  55    0x87b0d  6      
  leal 0x40(%rbx), %eax                  #  56    0x87b13  3      
  cmpl %esi, %eax                        #  57    0x87b16  2      
  je .L_87b80                            #  58    0x87b18  6      
  movl %r12d, %edi                       #  59    0x87b1e  3      
  nop                                    #  60    0x87b21  1      
  callq ._free_r                         #  61    0x87b22  5      
.L_87b80:                                #        0x87b27  0      
  movl %ebx, %ebx                        #  62    0x87b27  2      
  movl $0x0, 0x30(%r15,%rbx,1)           #  63    0x87b29  9      
  nop                                    #  64    0x87b32  1      
  nop                                    #  65    0x87b33  1      
.L_87ba0:                                #        0x87b34  0      
  movl %ebx, %ebx                        #  66    0x87b34  2      
  movl 0x44(%r15,%rbx,1), %esi           #  67    0x87b36  5      
  testq %rsi, %rsi                       #  68    0x87b3b  3      
  je .L_87be0                            #  69    0x87b3e  6      
  movl %r12d, %edi                       #  70    0x87b44  3      
  nop                                    #  71    0x87b47  1      
  callq ._free_r                         #  72    0x87b48  5      
  movl %ebx, %ebx                        #  73    0x87b4d  2      
  movl $0x0, 0x44(%r15,%rbx,1)           #  74    0x87b4f  9      
  nop                                    #  75    0x87b58  1      
  nop                                    #  76    0x87b59  1      
.L_87be0:                                #        0x87b5a  0      
  nop                                    #  77    0x87b5a  1      
  nop                                    #  78    0x87b5b  1      
  callq .__sfp_lock_acquire              #  79    0x87b5c  5      
  movl %ebx, %ebx                        #  80    0x87b61  2      
  movw $0x0, 0xc(%r15,%rbx,1)            #  81    0x87b63  8      
  addl $0x5c, %ebx                       #  82    0x87b6b  3      
  movl %ebx, %edi                        #  83    0x87b6e  2      
  nop                                    #  84    0x87b70  1      
  callq .__local_lock_release_recursive  #  85    0x87b71  5      
  movl %ebx, %edi                        #  86    0x87b76  2      
  nop                                    #  87    0x87b78  1      
  nop                                    #  88    0x87b79  1      
  callq .__local_lock_close_recursive    #  89    0x87b7a  5      
  nop                                    #  90    0x87b7f  1      
  nop                                    #  91    0x87b80  1      
  callq .__sfp_lock_release              #  92    0x87b81  5      
.L_87c60:                                #        0x87b86  0      
  movl %r13d, %eax                       #  93    0x87b86  3      
  movq (%rsp), %rbx                      #  94    0x87b89  4      
  movq 0x8(%rsp), %r12                   #  95    0x87b8d  5      
  movq 0x10(%rsp), %r13                  #  96    0x87b92  5      
  addl $0x18, %esp                       #  97    0x87b97  3      
  addq %r15, %rsp                        #  98    0x87b9a  3      
  popq %r11                              #  99    0x87b9d  3      
  nop                                    #  100   0x87ba0  1      
  andl $0xffffffe0, %r11d                #  101   0x87ba1  7      
  addq %r15, %r11                        #  102   0x87ba8  3      
  jmpq %r11                              #  103   0x87bab  3      
  nop                                    #  104   0x87bae  1      
  nop                                    #  105   0x87baf  1      
.L_87ca0:                                #        0x87bb0  0      
  leal 0x5c(%rbx), %r13d                 #  106   0x87bb0  4      
  movl %r13d, %edi                       #  107   0x87bb4  3      
  nop                                    #  108   0x87bb7  1      
  nop                                    #  109   0x87bb8  1      
  callq .__local_lock_acquire_recursive  #  110   0x87bb9  5      
  movl %ebx, %ebx                        #  111   0x87bbe  2      
  cmpw $0x0, 0xc(%r15,%rbx,1)            #  112   0x87bc0  7      
  jne .L_87ac0                           #  113   0x87bc7  6      
  movl %r13d, %edi                       #  114   0x87bcd  3      
  xorl %r13d, %r13d                      #  115   0x87bd0  3      
  nop                                    #  116   0x87bd3  1      
  callq .__local_lock_release_recursive  #  117   0x87bd4  5      
  jmpq .L_87c60                          #  118   0x87bd9  5      
  nop                                    #  119   0x87bde  1      
  nop                                    #  120   0x87bdf  1      
.L_87d00:                                #        0x87be0  0      
  movl %r12d, %edi                       #  121   0x87be0  3      
  nop                                    #  122   0x87be3  1      
  nop                                    #  123   0x87be4  1      
  callq .__sinit                         #  124   0x87be5  5      
  jmpq .L_87aa0                          #  125   0x87bea  5      
  nop                                    #  126   0x87bef  1      
  nop                                    #  127   0x87bf0  1      
.L_87d40:                                #        0x87bf1  0      
  movl %ebx, %ebx                        #  128   0x87bf1  2      
  movl 0x10(%r15,%rbx,1), %esi           #  129   0x87bf3  5      
  movl %r12d, %edi                       #  130   0x87bf8  3      
  xchgw %ax, %ax                         #  131   0x87bfb  3      
  nop                                    #  132   0x87bfe  1      
  callq ._free_r                         #  133   0x87bff  5      
  jmpq .L_87b60                          #  134   0x87c04  5      
  nop                                    #  135   0x87c09  1      
  nop                                    #  136   0x87c0a  1      
                                                                  
.size _fclose_r, .-_fclose_r

