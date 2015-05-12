  .text
  .globl _fclose_r
  .type _fclose_r, @function

#! file-offset 0x879e0
#! rip-offset  0x879e0
#! capacity    800 bytes

# Text                                   #  Line  RIP      Bytes  
._fclose_r:                              #        0x879e0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x879e0  5      
  movl %esi, %ebx                        #  2     0x879e5  2      
  movq %r12, -0x10(%rsp)                 #  3     0x879e7  5      
  movq %r13, -0x8(%rsp)                  #  4     0x879ec  5      
  subl $0x18, %esp                       #  5     0x879f1  3      
  addq %r15, %rsp                        #  6     0x879f4  3      
  xorl %r13d, %r13d                      #  7     0x879f7  3      
  testq %rbx, %rbx                       #  8     0x879fa  3      
  movl %edi, %r12d                       #  9     0x879fd  3      
  je .L_87be0                            #  10    0x87a00  6      
  testq %r12, %r12                       #  11    0x87a06  3      
  je .L_87a20                            #  12    0x87a09  6      
  movl %r12d, %r12d                      #  13    0x87a0f  3      
  movl 0x38(%r15,%r12,1), %eax           #  14    0x87a12  5      
  testl %eax, %eax                       #  15    0x87a17  2      
  je .L_87c80                            #  16    0x87a19  6      
  nop                                    #  17    0x87a1f  1      
.L_87a20:                                #        0x87a20  0      
  movl %ebx, %ebx                        #  18    0x87a20  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  19    0x87a22  6      
  je .L_87c20                            #  20    0x87a28  6      
  nop                                    #  21    0x87a2e  1      
  nop                                    #  22    0x87a2f  1      
.L_87a40:                                #        0x87a30  0      
  movl %ebx, %esi                        #  23    0x87a30  2      
  movl %r12d, %edi                       #  24    0x87a32  3      
  nop                                    #  25    0x87a35  1      
  nop                                    #  26    0x87a36  1      
  callq .__sflush_r                      #  27    0x87a37  5      
  movl %eax, %r13d                       #  28    0x87a3c  3      
  movl %ebx, %ebx                        #  29    0x87a3f  2      
  movl 0x2c(%r15,%rbx,1), %eax           #  30    0x87a41  5      
  testq %rax, %rax                       #  31    0x87a46  3      
  je .L_87ac0                            #  32    0x87a49  6      
  movl %ebx, %ebx                        #  33    0x87a4f  2      
  movl 0x1c(%r15,%rbx,1), %esi           #  34    0x87a51  5      
  movl %r12d, %edi                       #  35    0x87a56  3      
  nop                                    #  36    0x87a59  1      
  nop                                    #  37    0x87a5a  1      
  nop                                    #  38    0x87a5b  1      
  andl $0xffffffe0, %eax                 #  39    0x87a5c  5      
  addq %r15, %rax                        #  40    0x87a61  3      
  callq %rax                             #  41    0x87a64  2      
  testl %eax, %eax                       #  42    0x87a66  2      
  movl $0xffffffff, %eax                 #  43    0x87a68  5      
  cmovsl %eax, %r13d                     #  44    0x87a6d  4      
  nop                                    #  45    0x87a71  1      
  nop                                    #  46    0x87a72  1      
.L_87ac0:                                #        0x87a73  0      
  movl %ebx, %ebx                        #  47    0x87a73  2      
  cmpb $0x0, 0xc(%r15,%rbx,1)            #  48    0x87a75  6      
  js .L_87cc0                            #  49    0x87a7b  6      
  nop                                    #  50    0x87a81  1      
  nop                                    #  51    0x87a82  1      
.L_87ae0:                                #        0x87a83  0      
  movl %ebx, %ebx                        #  52    0x87a83  2      
  movl 0x30(%r15,%rbx,1), %esi           #  53    0x87a85  5      
  testq %rsi, %rsi                       #  54    0x87a8a  3      
  je .L_87b20                            #  55    0x87a8d  6      
  leal 0x40(%rbx), %eax                  #  56    0x87a93  3      
  cmpl %esi, %eax                        #  57    0x87a96  2      
  je .L_87b00                            #  58    0x87a98  6      
  movl %r12d, %edi                       #  59    0x87a9e  3      
  nop                                    #  60    0x87aa1  1      
  callq ._free_r                         #  61    0x87aa2  5      
.L_87b00:                                #        0x87aa7  0      
  movl %ebx, %ebx                        #  62    0x87aa7  2      
  movl $0x0, 0x30(%r15,%rbx,1)           #  63    0x87aa9  9      
  nop                                    #  64    0x87ab2  1      
  nop                                    #  65    0x87ab3  1      
.L_87b20:                                #        0x87ab4  0      
  movl %ebx, %ebx                        #  66    0x87ab4  2      
  movl 0x44(%r15,%rbx,1), %esi           #  67    0x87ab6  5      
  testq %rsi, %rsi                       #  68    0x87abb  3      
  je .L_87b60                            #  69    0x87abe  6      
  movl %r12d, %edi                       #  70    0x87ac4  3      
  nop                                    #  71    0x87ac7  1      
  callq ._free_r                         #  72    0x87ac8  5      
  movl %ebx, %ebx                        #  73    0x87acd  2      
  movl $0x0, 0x44(%r15,%rbx,1)           #  74    0x87acf  9      
  nop                                    #  75    0x87ad8  1      
  nop                                    #  76    0x87ad9  1      
.L_87b60:                                #        0x87ada  0      
  nop                                    #  77    0x87ada  1      
  nop                                    #  78    0x87adb  1      
  callq .__sfp_lock_acquire              #  79    0x87adc  5      
  movl %ebx, %ebx                        #  80    0x87ae1  2      
  movw $0x0, 0xc(%r15,%rbx,1)            #  81    0x87ae3  8      
  addl $0x5c, %ebx                       #  82    0x87aeb  3      
  movl %ebx, %edi                        #  83    0x87aee  2      
  nop                                    #  84    0x87af0  1      
  callq .__local_lock_release_recursive  #  85    0x87af1  5      
  movl %ebx, %edi                        #  86    0x87af6  2      
  nop                                    #  87    0x87af8  1      
  nop                                    #  88    0x87af9  1      
  callq .__local_lock_close_recursive    #  89    0x87afa  5      
  nop                                    #  90    0x87aff  1      
  nop                                    #  91    0x87b00  1      
  callq .__sfp_lock_release              #  92    0x87b01  5      
.L_87be0:                                #        0x87b06  0      
  movl %r13d, %eax                       #  93    0x87b06  3      
  movq (%rsp), %rbx                      #  94    0x87b09  4      
  movq 0x8(%rsp), %r12                   #  95    0x87b0d  5      
  movq 0x10(%rsp), %r13                  #  96    0x87b12  5      
  addl $0x18, %esp                       #  97    0x87b17  3      
  addq %r15, %rsp                        #  98    0x87b1a  3      
  popq %r11                              #  99    0x87b1d  3      
  nop                                    #  100   0x87b20  1      
  andl $0xffffffe0, %r11d                #  101   0x87b21  7      
  addq %r15, %r11                        #  102   0x87b28  3      
  jmpq %r11                              #  103   0x87b2b  3      
  nop                                    #  104   0x87b2e  1      
  nop                                    #  105   0x87b2f  1      
.L_87c20:                                #        0x87b30  0      
  leal 0x5c(%rbx), %r13d                 #  106   0x87b30  4      
  movl %r13d, %edi                       #  107   0x87b34  3      
  nop                                    #  108   0x87b37  1      
  nop                                    #  109   0x87b38  1      
  callq .__local_lock_acquire_recursive  #  110   0x87b39  5      
  movl %ebx, %ebx                        #  111   0x87b3e  2      
  cmpw $0x0, 0xc(%r15,%rbx,1)            #  112   0x87b40  7      
  jne .L_87a40                           #  113   0x87b47  6      
  movl %r13d, %edi                       #  114   0x87b4d  3      
  xorl %r13d, %r13d                      #  115   0x87b50  3      
  nop                                    #  116   0x87b53  1      
  callq .__local_lock_release_recursive  #  117   0x87b54  5      
  jmpq .L_87be0                          #  118   0x87b59  5      
  nop                                    #  119   0x87b5e  1      
  nop                                    #  120   0x87b5f  1      
.L_87c80:                                #        0x87b60  0      
  movl %r12d, %edi                       #  121   0x87b60  3      
  nop                                    #  122   0x87b63  1      
  nop                                    #  123   0x87b64  1      
  callq .__sinit                         #  124   0x87b65  5      
  jmpq .L_87a20                          #  125   0x87b6a  5      
  nop                                    #  126   0x87b6f  1      
  nop                                    #  127   0x87b70  1      
.L_87cc0:                                #        0x87b71  0      
  movl %ebx, %ebx                        #  128   0x87b71  2      
  movl 0x10(%r15,%rbx,1), %esi           #  129   0x87b73  5      
  movl %r12d, %edi                       #  130   0x87b78  3      
  xchgw %ax, %ax                         #  131   0x87b7b  3      
  nop                                    #  132   0x87b7e  1      
  callq ._free_r                         #  133   0x87b7f  5      
  jmpq .L_87ae0                          #  134   0x87b84  5      
  nop                                    #  135   0x87b89  1      
  nop                                    #  136   0x87b8a  1      
                                                                  
.size _fclose_r, .-_fclose_r

