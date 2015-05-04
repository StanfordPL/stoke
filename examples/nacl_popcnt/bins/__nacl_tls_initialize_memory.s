  .text
  .globl __nacl_tls_initialize_memory
  .type __nacl_tls_initialize_memory, @function

#! file-offset 0x67ec0
#! rip-offset  0x67ec0
#! capacity    352 bytes

# Text                             #  Line  RIP      Bytes  
.__nacl_tls_initialize_memory:     #        0x67ec0  0      
  movq %rbx, -0x20(%rsp)           #  1     0x67ec0  5      
  movq %r12, -0x18(%rsp)           #  2     0x67ec5  5      
  movl %esi, %r12d                 #  3     0x67eca  3      
  movq %r13, -0x10(%rsp)           #  4     0x67ecd  5      
  movq %r14, -0x8(%rsp)            #  5     0x67ed2  5      
  subl $0x38, %esp                 #  6     0x67ed7  3      
  addq %r15, %rsp                  #  7     0x67eda  3      
  movl %edi, %r14d                 #  8     0x67edd  3      
  nop                              #  9     0x67ee0  1      
  nop                              #  10    0x67ee1  1      
  callq .get_tls_info              #  11    0x67ee2  5      
  movl %eax, %ebx                  #  12    0x67ee7  2      
  movl %r12d, %edi                 #  13    0x67ee9  3      
  movl %ebx, %ebx                  #  14    0x67eec  2      
  movl 0x8(%r15,%rbx,1), %ecx      #  15    0x67eee  5      
  movl %ebx, %ebx                  #  16    0x67ef3  2      
  movl 0x4(%r15,%rbx,1), %r13d     #  17    0x67ef5  5      
  movl %ecx, 0x8(%rsp)             #  18    0x67efa  4      
  nop                              #  19    0x67efe  1      
  callq .__nacl_tls_combined_size  #  20    0x67eff  5      
  movl %ebx, %ebx                  #  21    0x67f04  2      
  movl 0xc(%r15,%rbx,1), %edi      #  22    0x67f06  5      
  movl %ebx, %ebx                  #  23    0x67f0b  2      
  movl 0x4(%r15,%rbx,1), %edx      #  24    0x67f0d  5      
  movl %ebx, %ebx                  #  25    0x67f12  2      
  movl 0x8(%r15,%rbx,1), %r9d      #  26    0x67f14  5      
  movl 0x8(%rsp), %ecx             #  27    0x67f19  4      
  leal -0x1(%rdi), %r12d           #  28    0x67f1d  4      
  movl %edi, %esi                  #  29    0x67f21  2      
  nop                              #  30    0x67f23  1      
  addl %edx, %r9d                  #  31    0x67f24  3      
  negl %esi                        #  32    0x67f27  2      
  leal -0x1(%rcx,%r13,1), %r13d    #  33    0x67f29  5      
  leal (%r12,%r9,1), %r8d          #  34    0x67f2e  4      
  addl %r14d, %r12d                #  35    0x67f32  3      
  leal (%rax,%r14,1), %r14d        #  36    0x67f35  4      
  andl %esi, %r12d                 #  37    0x67f39  3      
  addl %edi, %r13d                 #  38    0x67f3c  3      
  andl %esi, %r8d                  #  39    0x67f3f  3      
  xchgw %ax, %ax                   #  40    0x67f42  3      
  andl %esi, %r13d                 #  41    0x67f45  3      
  addl %r8d, %r12d                 #  42    0x67f48  3      
  movl %r12d, %ecx                 #  43    0x67f4b  3      
  subl %r13d, %ecx                 #  44    0x67f4e  3      
  addl %ecx, %r9d                  #  45    0x67f51  3      
  movq %rcx, %r13                  #  46    0x67f54  3      
  cmpl %r9d, %r14d                 #  47    0x67f57  3      
  jb .L_68000                      #  48    0x67f5a  6      
  nop                              #  49    0x67f60  1      
  movl %ebx, %ebx                  #  50    0x67f61  2      
  movl (%r15,%rbx,1), %esi         #  51    0x67f63  4      
  movl %ecx, %edi                  #  52    0x67f67  2      
  nop                              #  53    0x67f69  1      
  nop                              #  54    0x67f6a  1      
  callq .memcpy                    #  55    0x67f6b  5      
  movl %ebx, %ebx                  #  56    0x67f70  2      
  movl 0x4(%r15,%rbx,1), %edi      #  57    0x67f72  5      
  movl %ebx, %ebx                  #  58    0x67f77  2      
  movl 0x8(%r15,%rbx,1), %edx      #  59    0x67f79  5      
  xorl %esi, %esi                  #  60    0x67f7e  2      
  addl %r13d, %edi                 #  61    0x67f80  3      
  nop                              #  62    0x67f83  1      
  callq .memset                    #  63    0x67f84  5      
  movl %r12d, %r12d                #  64    0x67f89  3      
  movl %r12d, (%r15,%r12,1)        #  65    0x67f8c  4      
  movl %r12d, %eax                 #  66    0x67f90  3      
  movq 0x18(%rsp), %rbx            #  67    0x67f93  5      
  movq 0x20(%rsp), %r12            #  68    0x67f98  5      
  movq 0x28(%rsp), %r13            #  69    0x67f9d  5      
  movq 0x30(%rsp), %r14            #  70    0x67fa2  5      
  xchgw %ax, %ax                   #  71    0x67fa7  3      
  addl $0x38, %esp                 #  72    0x67faa  3      
  addq %r15, %rsp                  #  73    0x67fad  3      
  popq %r11                        #  74    0x67fb0  3      
  andl $0xffffffe0, %r11d          #  75    0x67fb3  7      
  addq %r15, %r11                  #  76    0x67fba  3      
  jmpq %r11                        #  77    0x67fbd  3      
  nop                              #  78    0x67fc0  1      
.L_68000:                          #        0x67fc1  0      
  ud2                              #  79    0x67fc1  2      
  nop                              #  80    0x67fc3  1      
  nop                              #  81    0x67fc4  1      
  nop                              #  82    0x67fc5  1      
  nop                              #  83    0x67fc6  1      
  nop                              #  84    0x67fc7  1      
  nop                              #  85    0x67fc8  1      
  nop                              #  86    0x67fc9  1      
  nop                              #  87    0x67fca  1      
  nop                              #  88    0x67fcb  1      
  nop                              #  89    0x67fcc  1      
  nop                              #  90    0x67fcd  1      
  nop                              #  91    0x67fce  1      
  nop                              #  92    0x67fcf  1      
  nop                              #  93    0x67fd0  1      
  nop                              #  94    0x67fd1  1      
  nop                              #  95    0x67fd2  1      
  nop                              #  96    0x67fd3  1      
  nop                              #  97    0x67fd4  1      
  nop                              #  98    0x67fd5  1      
  nop                              #  99    0x67fd6  1      
  nop                              #  100   0x67fd7  1      
  nop                              #  101   0x67fd8  1      
  nop                              #  102   0x67fd9  1      
  nop                              #  103   0x67fda  1      
  nop                              #  104   0x67fdb  1      
  nop                              #  105   0x67fdc  1      
  nop                              #  106   0x67fdd  1      
  nop                              #  107   0x67fde  1      
  nop                              #  108   0x67fdf  1      
  nop                              #  109   0x67fe0  1      
                                                            
.size __nacl_tls_initialize_memory, .-__nacl_tls_initialize_memory

