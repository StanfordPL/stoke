  .text
  .globl _fclose_r
  .type _fclose_r, @function

#! file-offset 0x879c0
#! rip-offset  0x879c0
#! capacity    800 bytes

# Text                                   #  Line  RIP      Bytes  
._fclose_r:                              #        0x879c0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x879c0  5      
  movl %esi, %ebx                        #  2     0x879c5  2      
  movq %r12, -0x10(%rsp)                 #  3     0x879c7  5      
  movq %r13, -0x8(%rsp)                  #  4     0x879cc  5      
  subl $0x18, %esp                       #  5     0x879d1  3      
  addq %r15, %rsp                        #  6     0x879d4  3      
  xorl %r13d, %r13d                      #  7     0x879d7  3      
  testq %rbx, %rbx                       #  8     0x879da  3      
  movl %edi, %r12d                       #  9     0x879dd  3      
  je .L_87bc0                            #  10    0x879e0  6      
  testq %r12, %r12                       #  11    0x879e6  3      
  je .L_87a00                            #  12    0x879e9  6      
  movl %r12d, %r12d                      #  13    0x879ef  3      
  movl 0x38(%r15,%r12,1), %eax           #  14    0x879f2  5      
  testl %eax, %eax                       #  15    0x879f7  2      
  je .L_87c60                            #  16    0x879f9  6      
  nop                                    #  17    0x879ff  1      
.L_87a00:                                #        0x87a00  0      
  movl %ebx, %ebx                        #  18    0x87a00  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  19    0x87a02  6      
  je .L_87c00                            #  20    0x87a08  6      
  nop                                    #  21    0x87a0e  1      
  nop                                    #  22    0x87a0f  1      
.L_87a20:                                #        0x87a10  0      
  movl %ebx, %esi                        #  23    0x87a10  2      
  movl %r12d, %edi                       #  24    0x87a12  3      
  nop                                    #  25    0x87a15  1      
  nop                                    #  26    0x87a16  1      
  callq .__sflush_r                      #  27    0x87a17  5      
  movl %eax, %r13d                       #  28    0x87a1c  3      
  movl %ebx, %ebx                        #  29    0x87a1f  2      
  movl 0x2c(%r15,%rbx,1), %eax           #  30    0x87a21  5      
  testq %rax, %rax                       #  31    0x87a26  3      
  je .L_87aa0                            #  32    0x87a29  6      
  movl %ebx, %ebx                        #  33    0x87a2f  2      
  movl 0x1c(%r15,%rbx,1), %esi           #  34    0x87a31  5      
  movl %r12d, %edi                       #  35    0x87a36  3      
  nop                                    #  36    0x87a39  1      
  nop                                    #  37    0x87a3a  1      
  nop                                    #  38    0x87a3b  1      
  andl $0xffffffe0, %eax                 #  39    0x87a3c  5      
  addq %r15, %rax                        #  40    0x87a41  3      
  callq %rax                             #  41    0x87a44  2      
  testl %eax, %eax                       #  42    0x87a46  2      
  movl $0xffffffff, %eax                 #  43    0x87a48  5      
  cmovsl %eax, %r13d                     #  44    0x87a4d  4      
  nop                                    #  45    0x87a51  1      
  nop                                    #  46    0x87a52  1      
.L_87aa0:                                #        0x87a53  0      
  movl %ebx, %ebx                        #  47    0x87a53  2      
  cmpb $0x0, 0xc(%r15,%rbx,1)            #  48    0x87a55  6      
  js .L_87ca0                            #  49    0x87a5b  6      
  nop                                    #  50    0x87a61  1      
  nop                                    #  51    0x87a62  1      
.L_87ac0:                                #        0x87a63  0      
  movl %ebx, %ebx                        #  52    0x87a63  2      
  movl 0x30(%r15,%rbx,1), %esi           #  53    0x87a65  5      
  testq %rsi, %rsi                       #  54    0x87a6a  3      
  je .L_87b00                            #  55    0x87a6d  6      
  leal 0x40(%rbx), %eax                  #  56    0x87a73  3      
  cmpl %esi, %eax                        #  57    0x87a76  2      
  je .L_87ae0                            #  58    0x87a78  6      
  movl %r12d, %edi                       #  59    0x87a7e  3      
  nop                                    #  60    0x87a81  1      
  callq ._free_r                         #  61    0x87a82  5      
.L_87ae0:                                #        0x87a87  0      
  movl %ebx, %ebx                        #  62    0x87a87  2      
  movl $0x0, 0x30(%r15,%rbx,1)           #  63    0x87a89  9      
  nop                                    #  64    0x87a92  1      
  nop                                    #  65    0x87a93  1      
.L_87b00:                                #        0x87a94  0      
  movl %ebx, %ebx                        #  66    0x87a94  2      
  movl 0x44(%r15,%rbx,1), %esi           #  67    0x87a96  5      
  testq %rsi, %rsi                       #  68    0x87a9b  3      
  je .L_87b40                            #  69    0x87a9e  6      
  movl %r12d, %edi                       #  70    0x87aa4  3      
  nop                                    #  71    0x87aa7  1      
  callq ._free_r                         #  72    0x87aa8  5      
  movl %ebx, %ebx                        #  73    0x87aad  2      
  movl $0x0, 0x44(%r15,%rbx,1)           #  74    0x87aaf  9      
  nop                                    #  75    0x87ab8  1      
  nop                                    #  76    0x87ab9  1      
.L_87b40:                                #        0x87aba  0      
  nop                                    #  77    0x87aba  1      
  nop                                    #  78    0x87abb  1      
  callq .__sfp_lock_acquire              #  79    0x87abc  5      
  movl %ebx, %ebx                        #  80    0x87ac1  2      
  movw $0x0, 0xc(%r15,%rbx,1)            #  81    0x87ac3  8      
  addl $0x5c, %ebx                       #  82    0x87acb  3      
  movl %ebx, %edi                        #  83    0x87ace  2      
  nop                                    #  84    0x87ad0  1      
  callq .__local_lock_release_recursive  #  85    0x87ad1  5      
  movl %ebx, %edi                        #  86    0x87ad6  2      
  nop                                    #  87    0x87ad8  1      
  nop                                    #  88    0x87ad9  1      
  callq .__local_lock_close_recursive    #  89    0x87ada  5      
  nop                                    #  90    0x87adf  1      
  nop                                    #  91    0x87ae0  1      
  callq .__sfp_lock_release              #  92    0x87ae1  5      
.L_87bc0:                                #        0x87ae6  0      
  movl %r13d, %eax                       #  93    0x87ae6  3      
  movq (%rsp), %rbx                      #  94    0x87ae9  4      
  movq 0x8(%rsp), %r12                   #  95    0x87aed  5      
  movq 0x10(%rsp), %r13                  #  96    0x87af2  5      
  addl $0x18, %esp                       #  97    0x87af7  3      
  addq %r15, %rsp                        #  98    0x87afa  3      
  popq %r11                              #  99    0x87afd  3      
  nop                                    #  100   0x87b00  1      
  andl $0xffffffe0, %r11d                #  101   0x87b01  7      
  addq %r15, %r11                        #  102   0x87b08  3      
  jmpq %r11                              #  103   0x87b0b  3      
  nop                                    #  104   0x87b0e  1      
  nop                                    #  105   0x87b0f  1      
.L_87c00:                                #        0x87b10  0      
  leal 0x5c(%rbx), %r13d                 #  106   0x87b10  4      
  movl %r13d, %edi                       #  107   0x87b14  3      
  nop                                    #  108   0x87b17  1      
  nop                                    #  109   0x87b18  1      
  callq .__local_lock_acquire_recursive  #  110   0x87b19  5      
  movl %ebx, %ebx                        #  111   0x87b1e  2      
  cmpw $0x0, 0xc(%r15,%rbx,1)            #  112   0x87b20  7      
  jne .L_87a20                           #  113   0x87b27  6      
  movl %r13d, %edi                       #  114   0x87b2d  3      
  xorl %r13d, %r13d                      #  115   0x87b30  3      
  nop                                    #  116   0x87b33  1      
  callq .__local_lock_release_recursive  #  117   0x87b34  5      
  jmpq .L_87bc0                          #  118   0x87b39  5      
  nop                                    #  119   0x87b3e  1      
  nop                                    #  120   0x87b3f  1      
.L_87c60:                                #        0x87b40  0      
  movl %r12d, %edi                       #  121   0x87b40  3      
  nop                                    #  122   0x87b43  1      
  nop                                    #  123   0x87b44  1      
  callq .__sinit                         #  124   0x87b45  5      
  jmpq .L_87a00                          #  125   0x87b4a  5      
  nop                                    #  126   0x87b4f  1      
  nop                                    #  127   0x87b50  1      
.L_87ca0:                                #        0x87b51  0      
  movl %ebx, %ebx                        #  128   0x87b51  2      
  movl 0x10(%r15,%rbx,1), %esi           #  129   0x87b53  5      
  movl %r12d, %edi                       #  130   0x87b58  3      
  xchgw %ax, %ax                         #  131   0x87b5b  3      
  nop                                    #  132   0x87b5e  1      
  callq ._free_r                         #  133   0x87b5f  5      
  jmpq .L_87ac0                          #  134   0x87b64  5      
  nop                                    #  135   0x87b69  1      
  nop                                    #  136   0x87b6a  1      
                                                                  
.size _fclose_r, .-_fclose_r

