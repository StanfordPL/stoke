  .text
  .globl __nacl_tls_initialize_memory
  .type __nacl_tls_initialize_memory, @function

#! file-offset 0x67e40
#! rip-offset  0x67e40
#! capacity    352 bytes

# Text                             #  Line  RIP      Bytes  
.__nacl_tls_initialize_memory:     #        0x67e40  0      
  movq %rbx, -0x20(%rsp)           #  1     0x67e40  5      
  movq %r12, -0x18(%rsp)           #  2     0x67e45  5      
  movl %esi, %r12d                 #  3     0x67e4a  3      
  movq %r13, -0x10(%rsp)           #  4     0x67e4d  5      
  movq %r14, -0x8(%rsp)            #  5     0x67e52  5      
  subl $0x38, %esp                 #  6     0x67e57  3      
  addq %r15, %rsp                  #  7     0x67e5a  3      
  movl %edi, %r14d                 #  8     0x67e5d  3      
  nop                              #  9     0x67e60  1      
  nop                              #  10    0x67e61  1      
  callq .get_tls_info              #  11    0x67e62  5      
  movl %eax, %ebx                  #  12    0x67e67  2      
  movl %r12d, %edi                 #  13    0x67e69  3      
  movl %ebx, %ebx                  #  14    0x67e6c  2      
  movl 0x8(%r15,%rbx,1), %ecx      #  15    0x67e6e  5      
  movl %ebx, %ebx                  #  16    0x67e73  2      
  movl 0x4(%r15,%rbx,1), %r13d     #  17    0x67e75  5      
  movl %ecx, 0x8(%rsp)             #  18    0x67e7a  4      
  nop                              #  19    0x67e7e  1      
  callq .__nacl_tls_combined_size  #  20    0x67e7f  5      
  movl %ebx, %ebx                  #  21    0x67e84  2      
  movl 0xc(%r15,%rbx,1), %edi      #  22    0x67e86  5      
  movl %ebx, %ebx                  #  23    0x67e8b  2      
  movl 0x4(%r15,%rbx,1), %edx      #  24    0x67e8d  5      
  movl %ebx, %ebx                  #  25    0x67e92  2      
  movl 0x8(%r15,%rbx,1), %r9d      #  26    0x67e94  5      
  movl 0x8(%rsp), %ecx             #  27    0x67e99  4      
  leal -0x1(%rdi), %r12d           #  28    0x67e9d  4      
  movl %edi, %esi                  #  29    0x67ea1  2      
  nop                              #  30    0x67ea3  1      
  addl %edx, %r9d                  #  31    0x67ea4  3      
  negl %esi                        #  32    0x67ea7  2      
  leal -0x1(%rcx,%r13,1), %r13d    #  33    0x67ea9  5      
  leal (%r12,%r9,1), %r8d          #  34    0x67eae  4      
  addl %r14d, %r12d                #  35    0x67eb2  3      
  leal (%rax,%r14,1), %r14d        #  36    0x67eb5  4      
  andl %esi, %r12d                 #  37    0x67eb9  3      
  addl %edi, %r13d                 #  38    0x67ebc  3      
  andl %esi, %r8d                  #  39    0x67ebf  3      
  xchgw %ax, %ax                   #  40    0x67ec2  3      
  andl %esi, %r13d                 #  41    0x67ec5  3      
  addl %r8d, %r12d                 #  42    0x67ec8  3      
  movl %r12d, %ecx                 #  43    0x67ecb  3      
  subl %r13d, %ecx                 #  44    0x67ece  3      
  addl %ecx, %r9d                  #  45    0x67ed1  3      
  movq %rcx, %r13                  #  46    0x67ed4  3      
  cmpl %r9d, %r14d                 #  47    0x67ed7  3      
  jb .L_67f80                      #  48    0x67eda  6      
  nop                              #  49    0x67ee0  1      
  movl %ebx, %ebx                  #  50    0x67ee1  2      
  movl (%r15,%rbx,1), %esi         #  51    0x67ee3  4      
  movl %ecx, %edi                  #  52    0x67ee7  2      
  nop                              #  53    0x67ee9  1      
  nop                              #  54    0x67eea  1      
  callq .memcpy                    #  55    0x67eeb  5      
  movl %ebx, %ebx                  #  56    0x67ef0  2      
  movl 0x4(%r15,%rbx,1), %edi      #  57    0x67ef2  5      
  movl %ebx, %ebx                  #  58    0x67ef7  2      
  movl 0x8(%r15,%rbx,1), %edx      #  59    0x67ef9  5      
  xorl %esi, %esi                  #  60    0x67efe  2      
  addl %r13d, %edi                 #  61    0x67f00  3      
  nop                              #  62    0x67f03  1      
  callq .memset                    #  63    0x67f04  5      
  movl %r12d, %r12d                #  64    0x67f09  3      
  movl %r12d, (%r15,%r12,1)        #  65    0x67f0c  4      
  movl %r12d, %eax                 #  66    0x67f10  3      
  movq 0x18(%rsp), %rbx            #  67    0x67f13  5      
  movq 0x20(%rsp), %r12            #  68    0x67f18  5      
  movq 0x28(%rsp), %r13            #  69    0x67f1d  5      
  movq 0x30(%rsp), %r14            #  70    0x67f22  5      
  xchgw %ax, %ax                   #  71    0x67f27  3      
  addl $0x38, %esp                 #  72    0x67f2a  3      
  addq %r15, %rsp                  #  73    0x67f2d  3      
  popq %r11                        #  74    0x67f30  3      
  andl $0xffffffe0, %r11d          #  75    0x67f33  7      
  addq %r15, %r11                  #  76    0x67f3a  3      
  jmpq %r11                        #  77    0x67f3d  3      
  nop                              #  78    0x67f40  1      
.L_67f80:                          #        0x67f41  0      
  ud2                              #  79    0x67f41  2      
  nop                              #  80    0x67f43  1      
  nop                              #  81    0x67f44  1      
  nop                              #  82    0x67f45  1      
  nop                              #  83    0x67f46  1      
  nop                              #  84    0x67f47  1      
  nop                              #  85    0x67f48  1      
  nop                              #  86    0x67f49  1      
  nop                              #  87    0x67f4a  1      
  nop                              #  88    0x67f4b  1      
  nop                              #  89    0x67f4c  1      
  nop                              #  90    0x67f4d  1      
  nop                              #  91    0x67f4e  1      
  nop                              #  92    0x67f4f  1      
  nop                              #  93    0x67f50  1      
  nop                              #  94    0x67f51  1      
  nop                              #  95    0x67f52  1      
  nop                              #  96    0x67f53  1      
  nop                              #  97    0x67f54  1      
  nop                              #  98    0x67f55  1      
  nop                              #  99    0x67f56  1      
  nop                              #  100   0x67f57  1      
  nop                              #  101   0x67f58  1      
  nop                              #  102   0x67f59  1      
  nop                              #  103   0x67f5a  1      
  nop                              #  104   0x67f5b  1      
  nop                              #  105   0x67f5c  1      
  nop                              #  106   0x67f5d  1      
  nop                              #  107   0x67f5e  1      
  nop                              #  108   0x67f5f  1      
  nop                              #  109   0x67f60  1      
                                                            
.size __nacl_tls_initialize_memory, .-__nacl_tls_initialize_memory

