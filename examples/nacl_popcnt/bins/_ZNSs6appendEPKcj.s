  .text
  .globl _ZNSs6appendEPKcj
  .type _ZNSs6appendEPKcj, @function

#! file-offset 0x46520
#! rip-offset  0x46520
#! capacity    544 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs6appendEPKcj:                     #        0x46520  0      
  movq %rbx, -0x18(%rsp)                #  1     0x46520  5      
  movq %r13, -0x8(%rsp)                 #  2     0x46525  5      
  movl %edi, %ebx                       #  3     0x4652a  2      
  movq %r12, -0x10(%rsp)                #  4     0x4652c  5      
  subl $0x28, %esp                      #  5     0x46531  3      
  addq %r15, %rsp                       #  6     0x46534  3      
  testl %edx, %edx                      #  7     0x46537  2      
  movl %esi, %r13d                      #  8     0x46539  3      
  nop                                   #  9     0x4653c  1      
  jne .L_465a0                          #  10    0x4653d  6      
  nop                                   #  11    0x46543  1      
  nop                                   #  12    0x46544  1      
.L_46560:                               #        0x46545  0      
  movl %ebx, %eax                       #  13    0x46545  2      
  movq 0x18(%rsp), %r12                 #  14    0x46547  5      
  movq 0x10(%rsp), %rbx                 #  15    0x4654c  5      
  movq 0x20(%rsp), %r13                 #  16    0x46551  5      
  addl $0x28, %esp                      #  17    0x46556  3      
  addq %r15, %rsp                       #  18    0x46559  3      
  popq %r11                             #  19    0x4655c  3      
  nop                                   #  20    0x4655f  1      
  andl $0xffffffe0, %r11d               #  21    0x46560  7      
  addq %r15, %r11                       #  22    0x46567  3      
  jmpq %r11                             #  23    0x4656a  3      
  nop                                   #  24    0x4656d  1      
  nop                                   #  25    0x4656e  1      
.L_465a0:                               #        0x4656f  0      
  movl %ebx, %ebx                       #  26    0x4656f  2      
  movl (%r15,%rbx,1), %eax              #  27    0x46571  4      
  leal -0xc(%rax), %ecx                 #  28    0x46575  3      
  movl %ecx, %ecx                       #  29    0x46578  2      
  movl (%r15,%rcx,1), %edi              #  30    0x4657a  4      
  movl %edi, %esi                       #  31    0x4657e  2      
  negl %esi                             #  32    0x46580  2      
  addl $0x3ffffffc, %esi                #  33    0x46582  6      
  cmpl %esi, %edx                       #  34    0x46588  2      
  nop                                   #  35    0x4658a  1      
  ja .L_46720                           #  36    0x4658b  6      
  leal (%rdx,%rdi,1), %r12d             #  37    0x46591  4      
  movl %ecx, %ecx                       #  38    0x46595  2      
  cmpl 0x4(%r15,%rcx,1), %r12d          #  39    0x46597  5      
  ja .L_46600                           #  40    0x4659c  6      
  movl %ecx, %ecx                       #  41    0x465a2  2      
  movl 0x8(%r15,%rcx,1), %ecx           #  42    0x465a4  5      
  testl %ecx, %ecx                      #  43    0x465a9  2      
  nop                                   #  44    0x465ab  1      
  jle .L_46660                          #  45    0x465ac  6      
  nop                                   #  46    0x465b2  1      
  nop                                   #  47    0x465b3  1      
.L_46600:                               #        0x465b4  0      
  cmpl %eax, %r13d                      #  48    0x465b4  3      
  jb .L_46620                           #  49    0x465b7  6      
  addl %eax, %edi                       #  50    0x465bd  2      
  cmpl %r13d, %edi                      #  51    0x465bf  3      
  jae .L_466e0                          #  52    0x465c2  6      
  nop                                   #  53    0x465c8  1      
  nop                                   #  54    0x465c9  1      
.L_46620:                               #        0x465ca  0      
  movl %ebx, %edi                       #  55    0x465ca  2      
  movl %r12d, %esi                      #  56    0x465cc  3      
  movl %edx, 0x8(%rsp)                  #  57    0x465cf  4      
  nop                                   #  58    0x465d3  1      
  nop                                   #  59    0x465d4  1      
  callq ._ZNSs7reserveEj                #  60    0x465d5  5      
  movl %ebx, %ebx                       #  61    0x465da  2      
  movl (%r15,%rbx,1), %eax              #  62    0x465dc  4      
  movl 0x8(%rsp), %edx                  #  63    0x465e0  4      
  leal -0xc(%rax), %ecx                 #  64    0x465e4  3      
  movl %ecx, %ecx                       #  65    0x465e7  2      
  movl (%r15,%rcx,1), %edi              #  66    0x465e9  4      
  nop                                   #  67    0x465ed  1      
.L_46660:                               #        0x465ee  0      
  addl %eax, %edi                       #  68    0x465ee  2      
  cmpl $0x1, %edx                       #  69    0x465f0  3      
  je .L_466c0                           #  70    0x465f3  6      
  movl %r13d, %esi                      #  71    0x465f9  3      
  xchgw %ax, %ax                        #  72    0x465fc  3      
  nop                                   #  73    0x465ff  1      
  callq .memcpy                         #  74    0x46600  5      
.L_46680:                               #        0x46605  0      
  movl %ebx, %ebx                       #  75    0x46605  2      
  movl (%r15,%rbx,1), %eax              #  76    0x46607  4      
  subl $0xc, %eax                       #  77    0x4660b  3      
  movl %eax, %eax                       #  78    0x4660e  2      
  movl %r12d, (%r15,%rax,1)             #  79    0x46610  4      
  addl %eax, %r12d                      #  80    0x46614  3      
  movl %eax, %eax                       #  81    0x46617  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  82    0x46619  9      
  nop                                   #  83    0x46622  1      
  movl %r12d, %r12d                     #  84    0x46623  3      
  movb $0x0, 0xc(%r15,%r12,1)           #  85    0x46626  6      
  jmpq .L_46560                         #  86    0x4662c  5      
  nop                                   #  87    0x46631  1      
  nop                                   #  88    0x46632  1      
.L_466c0:                               #        0x46633  0      
  movl %r13d, %r13d                     #  89    0x46633  3      
  movzbl (%r15,%r13,1), %eax            #  90    0x46636  5      
  movl %edi, %edi                       #  91    0x4663b  2      
  movb %al, (%r15,%rdi,1)               #  92    0x4663d  4      
  jmpq .L_46680                         #  93    0x46641  5      
  nop                                   #  94    0x46646  1      
  nop                                   #  95    0x46647  1      
.L_466e0:                               #        0x46648  0      
  movl %ebx, %edi                       #  96    0x46648  2      
  movl %r12d, %esi                      #  97    0x4664a  3      
  subl %eax, %r13d                      #  98    0x4664d  3      
  movl %edx, 0x8(%rsp)                  #  99    0x46650  4      
  nop                                   #  100   0x46654  1      
  callq ._ZNSs7reserveEj                #  101   0x46655  5      
  movl %ebx, %ebx                       #  102   0x4665a  2      
  movl (%r15,%rbx,1), %eax              #  103   0x4665c  4      
  movl 0x8(%rsp), %edx                  #  104   0x46660  4      
  leal -0xc(%rax), %ecx                 #  105   0x46664  3      
  addl %eax, %r13d                      #  106   0x46667  3      
  movl %ecx, %ecx                       #  107   0x4666a  2      
  movl (%r15,%rcx,1), %edi              #  108   0x4666c  4      
  jmpq .L_46660                         #  109   0x46670  5      
  nop                                   #  110   0x46675  1      
.L_46720:                               #        0x46676  0      
  movl $0x100209dd, %edi                #  111   0x46676  5      
  nop                                   #  112   0x4667b  1      
  nop                                   #  113   0x4667c  1      
  callq ._ZSt20__throw_length_errorPKc  #  114   0x4667d  5      
                                                                 
.size _ZNSs6appendEPKcj, .-_ZNSs6appendEPKcj

