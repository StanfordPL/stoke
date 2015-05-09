  .text
  .globl _ZN2pp18Instance_DidCreateEijPPKcS2_
  .type _ZN2pp18Instance_DidCreateEijPPKcS2_, @function

#! file-offset 0x245a0
#! rip-offset  0x245a0
#! capacity    512 bytes

# Text                                                                                                                                             #  Line  RIP      Bytes  
._ZN2pp18Instance_DidCreateEijPPKcS2_:                                                                                                             #        0x245a0  0      
  pushq %r14                                                                                                                                       #  1     0x245a0  3      
  movl %ecx, %ecx                                                                                                                                  #  2     0x245a3  2      
  movl %esi, %r14d                                                                                                                                 #  3     0x245a5  3      
  pushq %r13                                                                                                                                       #  4     0x245a8  3      
  movl %edx, %r13d                                                                                                                                 #  5     0x245ab  3      
  pushq %r12                                                                                                                                       #  6     0x245ae  3      
  pushq %rbx                                                                                                                                       #  7     0x245b1  2      
  movl %edi, %ebx                                                                                                                                  #  8     0x245b3  2      
  subl $0x28, %esp                                                                                                                                 #  9     0x245b5  3      
  addq %r15, %rsp                                                                                                                                  #  10    0x245b8  3      
  movq %rcx, 0x8(%rsp)                                                                                                                             #  11    0x245bb  5      
  nop                                                                                                                                              #  12    0x245c0  1      
  nop                                                                                                                                              #  13    0x245c1  1      
  nop                                                                                                                                              #  14    0x245c2  1      
  callq ._ZN2pp6Module3GetEv                                                                                                                       #  15    0x245c3  5      
  movl %eax, %ecx                                                                                                                                  #  16    0x245c8  2      
  testq %rcx, %rcx                                                                                                                                 #  17    0x245ca  3      
  je .L_24740                                                                                                                                      #  18    0x245cd  6      
  movl %ecx, %ecx                                                                                                                                  #  19    0x245d3  2      
  movl (%r15,%rcx,1), %eax                                                                                                                         #  20    0x245d5  4      
  movl %ecx, %edi                                                                                                                                  #  21    0x245d9  2      
  movq %rcx, (%rsp)                                                                                                                                #  22    0x245db  4      
  movl %ebx, %esi                                                                                                                                  #  23    0x245df  2      
  movl %eax, %eax                                                                                                                                  #  24    0x245e1  2      
  movl 0xc(%r15,%rax,1), %eax                                                                                                                      #  25    0x245e3  5      
  nop                                                                                                                                              #  26    0x245e8  1      
  nop                                                                                                                                              #  27    0x245e9  1      
  andl $0xffffffe0, %eax                                                                                                                           #  28    0x245ea  5      
  addq %r15, %rax                                                                                                                                  #  29    0x245ef  3      
  callq %rax                                                                                                                                       #  30    0x245f2  2      
  movl %eax, %r12d                                                                                                                                 #  31    0x245f4  3      
  movq (%rsp), %rcx                                                                                                                                #  32    0x245f7  4      
  testq %r12, %r12                                                                                                                                 #  33    0x245fb  3      
  je .L_24740                                                                                                                                      #  34    0x245fe  6      
  movl %ecx, %ecx                                                                                                                                  #  35    0x24604  2      
  movl 0xc(%r15,%rcx,1), %eax                                                                                                                      #  36    0x24606  5      
  leal 0x8(%rcx), %edi                                                                                                                             #  37    0x2460b  3      
  movq %rdi, %rsi                                                                                                                                  #  38    0x2460e  3      
  testq %rax, %rax                                                                                                                                 #  39    0x24611  3      
  jne .L_246a0                                                                                                                                     #  40    0x24614  6      
  jmpq .L_246c0                                                                                                                                    #  41    0x2461a  5      
  nop                                                                                                                                              #  42    0x2461f  1      
  nop                                                                                                                                              #  43    0x24620  1      
.L_24660:                                                                                                                                          #        0x24621  0      
  movl %eax, %eax                                                                                                                                  #  44    0x24621  2      
  movl 0x8(%r15,%rax,1), %edx                                                                                                                      #  45    0x24623  5      
  movq %rax, %rsi                                                                                                                                  #  46    0x24628  3      
  testq %rdx, %rdx                                                                                                                                 #  47    0x2462b  3      
  je .L_246c0                                                                                                                                      #  48    0x2462e  6      
  xchgw %ax, %ax                                                                                                                                   #  49    0x24634  3      
  nop                                                                                                                                              #  50    0x24637  1      
.L_24680:                                                                                                                                          #        0x24638  0      
  movq %rdx, %rax                                                                                                                                  #  51    0x24638  3      
  nop                                                                                                                                              #  52    0x2463b  1      
  nop                                                                                                                                              #  53    0x2463c  1      
.L_246a0:                                                                                                                                          #        0x2463d  0      
  movl %eax, %eax                                                                                                                                  #  54    0x2463d  2      
  cmpl 0x10(%r15,%rax,1), %ebx                                                                                                                     #  55    0x2463f  5      
  jle .L_24660                                                                                                                                     #  56    0x24644  6      
  movl %eax, %eax                                                                                                                                  #  57    0x2464a  2      
  movl 0xc(%r15,%rax,1), %edx                                                                                                                      #  58    0x2464c  5      
  testq %rdx, %rdx                                                                                                                                 #  59    0x24651  3      
  jne .L_24680                                                                                                                                     #  60    0x24654  6      
  nop                                                                                                                                              #  61    0x2465a  1      
.L_246c0:                                                                                                                                          #        0x2465b  0      
  cmpl %esi, %edi                                                                                                                                  #  62    0x2465b  2      
  movq %rsi, %rax                                                                                                                                  #  63    0x2465d  3      
  je .L_24760                                                                                                                                      #  64    0x24660  6      
  movl %esi, %esi                                                                                                                                  #  65    0x24666  2      
  cmpl 0x10(%r15,%rsi,1), %ebx                                                                                                                     #  66    0x24668  5      
  jl .L_24760                                                                                                                                      #  67    0x2466d  6      
  nop                                                                                                                                              #  68    0x24673  1      
.L_246e0:                                                                                                                                          #        0x24674  0      
  movl %eax, %eax                                                                                                                                  #  69    0x24674  2      
  movl %r12d, 0x14(%r15,%rax,1)                                                                                                                    #  70    0x24676  5      
  movl %r12d, %r12d                                                                                                                                #  71    0x2467b  3      
  movl (%r15,%r12,1), %eax                                                                                                                         #  72    0x2467e  4      
  movl %r13d, %edx                                                                                                                                 #  73    0x24682  3      
  movl 0x8(%rsp), %ecx                                                                                                                             #  74    0x24685  4      
  movl %r14d, %esi                                                                                                                                 #  75    0x24689  3      
  movl %r12d, %edi                                                                                                                                 #  76    0x2468c  3      
  nop                                                                                                                                              #  77    0x2468f  1      
  movl %eax, %eax                                                                                                                                  #  78    0x24690  2      
  movl 0x8(%r15,%rax,1), %eax                                                                                                                      #  79    0x24692  5      
  xchgw %ax, %ax                                                                                                                                   #  80    0x24697  3      
  nop                                                                                                                                              #  81    0x2469a  1      
  andl $0xffffffe0, %eax                                                                                                                           #  82    0x2469b  5      
  addq %r15, %rax                                                                                                                                  #  83    0x246a0  3      
  callq %rax                                                                                                                                       #  84    0x246a3  2      
  addl $0x28, %esp                                                                                                                                 #  85    0x246a5  3      
  addq %r15, %rsp                                                                                                                                  #  86    0x246a8  3      
  movzbl %al, %eax                                                                                                                                 #  87    0x246ab  3      
  popq %rbx                                                                                                                                        #  88    0x246ae  2      
  popq %r12                                                                                                                                        #  89    0x246b0  3      
  popq %r13                                                                                                                                        #  90    0x246b3  3      
  popq %r14                                                                                                                                        #  91    0x246b6  3      
  popq %r11                                                                                                                                        #  92    0x246b9  3      
  andl $0xffffffe0, %r11d                                                                                                                          #  93    0x246bc  7      
  addq %r15, %r11                                                                                                                                  #  94    0x246c3  3      
  jmpq %r11                                                                                                                                        #  95    0x246c6  3      
  nop                                                                                                                                              #  96    0x246c9  1      
.L_24740:                                                                                                                                          #        0x246ca  0      
  addl $0x28, %esp                                                                                                                                 #  97    0x246ca  3      
  addq %r15, %rsp                                                                                                                                  #  98    0x246cd  3      
  xorl %eax, %eax                                                                                                                                  #  99    0x246d0  2      
  popq %rbx                                                                                                                                        #  100   0x246d2  2      
  popq %r12                                                                                                                                        #  101   0x246d4  3      
  popq %r13                                                                                                                                        #  102   0x246d7  3      
  popq %r14                                                                                                                                        #  103   0x246da  3      
  popq %r11                                                                                                                                        #  104   0x246dd  3      
  andl $0xffffffe0, %r11d                                                                                                                          #  105   0x246e0  7      
  addq %r15, %r11                                                                                                                                  #  106   0x246e7  3      
  jmpq %r11                                                                                                                                        #  107   0x246ea  3      
  nop                                                                                                                                              #  108   0x246ed  1      
.L_24760:                                                                                                                                          #        0x246ee  0      
  leal 0x10(%rsp), %edx                                                                                                                            #  109   0x246ee  4      
  leal 0x4(%rcx), %edi                                                                                                                             #  110   0x246f2  3      
  movl %ebx, 0x10(%rsp)                                                                                                                            #  111   0x246f5  4      
  movl $0x0, 0x14(%rsp)                                                                                                                            #  112   0x246f9  8      
  nop                                                                                                                                              #  113   0x24701  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_  #  114   0x24702  5      
  movl %eax, %eax                                                                                                                                  #  115   0x24707  2      
  jmpq .L_246e0                                                                                                                                    #  116   0x24709  5      
  nop                                                                                                                                              #  117   0x2470e  1      
  nop                                                                                                                                              #  118   0x2470f  1      
                                                                                                                                                                            
.size _ZN2pp18Instance_DidCreateEijPPKcS2_, .-_ZN2pp18Instance_DidCreateEijPPKcS2_

