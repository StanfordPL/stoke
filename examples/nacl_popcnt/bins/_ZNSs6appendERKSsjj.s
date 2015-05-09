  .text
  .globl _ZNSs6appendERKSsjj
  .type _ZNSs6appendERKSsjj, @function

#! file-offset 0x46720
#! rip-offset  0x46720
#! capacity    416 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendERKSsjj:                   #        0x46720  0      
  movq %r14, -0x8(%rsp)                 #  1     0x46720  5      
  movl %esi, %r14d                      #  2     0x46725  3      
  movq %rbx, -0x20(%rsp)                #  3     0x46728  5      
  movq %r12, -0x18(%rsp)                #  4     0x4672d  5      
  movq %r13, -0x10(%rsp)                #  5     0x46732  5      
  subl $0x38, %esp                      #  6     0x46737  3      
  addq %r15, %rsp                       #  7     0x4673a  3      
  nop                                   #  8     0x4673d  1      
  movl %r14d, %r14d                     #  9     0x4673e  3      
  movl (%r15,%r14,1), %esi              #  10    0x46741  4      
  movl %edi, %ebx                       #  11    0x46745  2      
  leal -0xc(%rsi), %eax                 #  12    0x46747  3      
  movl %eax, %eax                       #  13    0x4674a  2      
  movl (%r15,%rax,1), %r13d             #  14    0x4674c  4      
  cmpl %r13d, %edx                      #  15    0x46750  3      
  ja .L_468a0                           #  16    0x46753  6      
  subl %edx, %r13d                      #  17    0x46759  3      
  xchgw %ax, %ax                        #  18    0x4675c  3      
  cmpl %ecx, %r13d                      #  19    0x4675f  3      
  cmoval %ecx, %r13d                    #  20    0x46762  4      
  testl %r13d, %r13d                    #  21    0x46766  3      
  je .L_46840                           #  22    0x46769  6      
  movl %ebx, %ebx                       #  23    0x4676f  2      
  movl (%r15,%rbx,1), %eax              #  24    0x46771  4      
  leal -0xc(%rax), %ecx                 #  25    0x46775  3      
  movl %ecx, %ecx                       #  26    0x46778  2      
  movl (%r15,%rcx,1), %edi              #  27    0x4677a  4      
  nop                                   #  28    0x4677e  1      
  leal (%r13,%rdi,1), %r12d             #  29    0x4677f  5      
  movl %ecx, %ecx                       #  30    0x46784  2      
  cmpl 0x4(%r15,%rcx,1), %r12d          #  31    0x46786  5      
  ja .L_467a0                           #  32    0x4678b  6      
  movl %ecx, %ecx                       #  33    0x46791  2      
  movl 0x8(%r15,%rcx,1), %r8d           #  34    0x46793  5      
  testl %r8d, %r8d                      #  35    0x46798  3      
  jle .L_467e0                          #  36    0x4679b  6      
  nop                                   #  37    0x467a1  1      
.L_467a0:                               #        0x467a2  0      
  movl %r12d, %esi                      #  38    0x467a2  3      
  movl %ebx, %edi                       #  39    0x467a5  2      
  movl %edx, 0x8(%rsp)                  #  40    0x467a7  4      
  nop                                   #  41    0x467ab  1      
  nop                                   #  42    0x467ac  1      
  callq ._ZNSs7reserveEj                #  43    0x467ad  5      
  movl %ebx, %ebx                       #  44    0x467b2  2      
  movl (%r15,%rbx,1), %eax              #  45    0x467b4  4      
  movl %r14d, %r14d                     #  46    0x467b8  3      
  movl (%r15,%r14,1), %esi              #  47    0x467bb  4      
  movl 0x8(%rsp), %edx                  #  48    0x467bf  4      
  leal -0xc(%rax), %ecx                 #  49    0x467c3  3      
  movl %ecx, %ecx                       #  50    0x467c6  2      
  movl (%r15,%rcx,1), %edi              #  51    0x467c8  4      
  nop                                   #  52    0x467cc  1      
.L_467e0:                               #        0x467cd  0      
  addl %eax, %edi                       #  53    0x467cd  2      
  cmpl $0x1, %r13d                      #  54    0x467cf  4      
  leal (%rdx,%rsi,1), %esi              #  55    0x467d3  3      
  je .L_46880                           #  56    0x467d6  6      
  movl %r13d, %edx                      #  57    0x467dc  3      
  nop                                   #  58    0x467df  1      
  callq .memcpy                         #  59    0x467e0  5      
.L_46800:                               #        0x467e5  0      
  movl %ebx, %ebx                       #  60    0x467e5  2      
  movl (%r15,%rbx,1), %eax              #  61    0x467e7  4      
  subl $0xc, %eax                       #  62    0x467eb  3      
  movl %eax, %eax                       #  63    0x467ee  2      
  movl %r12d, (%r15,%rax,1)             #  64    0x467f0  4      
  addl %eax, %r12d                      #  65    0x467f4  3      
  movl %eax, %eax                       #  66    0x467f7  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  67    0x467f9  9      
  nop                                   #  68    0x46802  1      
  movl %r12d, %r12d                     #  69    0x46803  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  70    0x46806  6      
  nop                                   #  71    0x4680c  1      
  nop                                   #  72    0x4680d  1      
.L_46840:                               #        0x4680e  0      
  movl %ebx, %eax                       #  73    0x4680e  2      
  movq 0x20(%rsp), %r12                 #  74    0x46810  5      
  movq 0x18(%rsp), %rbx                 #  75    0x46815  5      
  movq 0x28(%rsp), %r13                 #  76    0x4681a  5      
  movq 0x30(%rsp), %r14                 #  77    0x4681f  5      
  addl $0x38, %esp                      #  78    0x46824  3      
  addq %r15, %rsp                       #  79    0x46827  3      
  popq %r11                             #  80    0x4682a  3      
  xchgw %ax, %ax                        #  81    0x4682d  3      
  andl $0xffffffe0, %r11d               #  82    0x46830  7      
  addq %r15, %r11                       #  83    0x46837  3      
  jmpq %r11                             #  84    0x4683a  3      
  nop                                   #  85    0x4683d  1      
  nop                                   #  86    0x4683e  1      
.L_46880:                               #        0x4683f  0      
  movl %esi, %esi                       #  87    0x4683f  2      
  movzbl (%r15,%rsi,1), %eax            #  88    0x46841  5      
  movl %edi, %edi                       #  89    0x46846  2      
  movb %al, (%r15,%rdi,1)               #  90    0x46848  4      
  jmpq .L_46800                         #  91    0x4684c  5      
  nop                                   #  92    0x46851  1      
.L_468a0:                               #        0x46852  0      
  movl $0x100209dd, %edi                #  93    0x46852  5      
  nop                                   #  94    0x46857  1      
  nop                                   #  95    0x46858  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  96    0x46859  5      
                                                                 
.size _ZNSs6appendERKSsjj, .-_ZNSs6appendERKSsjj

