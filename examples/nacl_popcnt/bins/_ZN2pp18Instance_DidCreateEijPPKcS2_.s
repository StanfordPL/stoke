  .text
  .globl _ZN2pp18Instance_DidCreateEijPPKcS2_
  .type _ZN2pp18Instance_DidCreateEijPPKcS2_, @function

#! file-offset 0x245c0
#! rip-offset  0x245c0
#! capacity    512 bytes

# Text                                                                                                                                             #  Line  RIP      Bytes  
._ZN2pp18Instance_DidCreateEijPPKcS2_:                                                                                                             #        0x245c0  0      
  pushq %r14                                                                                                                                       #  1     0x245c0  3      
  movl %ecx, %ecx                                                                                                                                  #  2     0x245c3  2      
  movl %esi, %r14d                                                                                                                                 #  3     0x245c5  3      
  pushq %r13                                                                                                                                       #  4     0x245c8  3      
  movl %edx, %r13d                                                                                                                                 #  5     0x245cb  3      
  pushq %r12                                                                                                                                       #  6     0x245ce  3      
  pushq %rbx                                                                                                                                       #  7     0x245d1  2      
  movl %edi, %ebx                                                                                                                                  #  8     0x245d3  2      
  subl $0x28, %esp                                                                                                                                 #  9     0x245d5  3      
  addq %r15, %rsp                                                                                                                                  #  10    0x245d8  3      
  movq %rcx, 0x8(%rsp)                                                                                                                             #  11    0x245db  5      
  nop                                                                                                                                              #  12    0x245e0  1      
  nop                                                                                                                                              #  13    0x245e1  1      
  nop                                                                                                                                              #  14    0x245e2  1      
  callq ._ZN2pp6Module3GetEv                                                                                                                       #  15    0x245e3  5      
  movl %eax, %ecx                                                                                                                                  #  16    0x245e8  2      
  testq %rcx, %rcx                                                                                                                                 #  17    0x245ea  3      
  je .L_24760                                                                                                                                      #  18    0x245ed  6      
  movl %ecx, %ecx                                                                                                                                  #  19    0x245f3  2      
  movl (%r15,%rcx,1), %eax                                                                                                                         #  20    0x245f5  4      
  movl %ecx, %edi                                                                                                                                  #  21    0x245f9  2      
  movq %rcx, (%rsp)                                                                                                                                #  22    0x245fb  4      
  movl %ebx, %esi                                                                                                                                  #  23    0x245ff  2      
  movl %eax, %eax                                                                                                                                  #  24    0x24601  2      
  movl 0xc(%r15,%rax,1), %eax                                                                                                                      #  25    0x24603  5      
  nop                                                                                                                                              #  26    0x24608  1      
  nop                                                                                                                                              #  27    0x24609  1      
  andl $0xffffffe0, %eax                                                                                                                           #  28    0x2460a  5      
  addq %r15, %rax                                                                                                                                  #  29    0x2460f  3      
  callq %rax                                                                                                                                       #  30    0x24612  2      
  movl %eax, %r12d                                                                                                                                 #  31    0x24614  3      
  movq (%rsp), %rcx                                                                                                                                #  32    0x24617  4      
  testq %r12, %r12                                                                                                                                 #  33    0x2461b  3      
  je .L_24760                                                                                                                                      #  34    0x2461e  6      
  movl %ecx, %ecx                                                                                                                                  #  35    0x24624  2      
  movl 0xc(%r15,%rcx,1), %eax                                                                                                                      #  36    0x24626  5      
  leal 0x8(%rcx), %edi                                                                                                                             #  37    0x2462b  3      
  movq %rdi, %rsi                                                                                                                                  #  38    0x2462e  3      
  testq %rax, %rax                                                                                                                                 #  39    0x24631  3      
  jne .L_246c0                                                                                                                                     #  40    0x24634  6      
  jmpq .L_246e0                                                                                                                                    #  41    0x2463a  5      
  nop                                                                                                                                              #  42    0x2463f  1      
  nop                                                                                                                                              #  43    0x24640  1      
.L_24680:                                                                                                                                          #        0x24641  0      
  movl %eax, %eax                                                                                                                                  #  44    0x24641  2      
  movl 0x8(%r15,%rax,1), %edx                                                                                                                      #  45    0x24643  5      
  movq %rax, %rsi                                                                                                                                  #  46    0x24648  3      
  testq %rdx, %rdx                                                                                                                                 #  47    0x2464b  3      
  je .L_246e0                                                                                                                                      #  48    0x2464e  6      
  xchgw %ax, %ax                                                                                                                                   #  49    0x24654  3      
  nop                                                                                                                                              #  50    0x24657  1      
.L_246a0:                                                                                                                                          #        0x24658  0      
  movq %rdx, %rax                                                                                                                                  #  51    0x24658  3      
  nop                                                                                                                                              #  52    0x2465b  1      
  nop                                                                                                                                              #  53    0x2465c  1      
.L_246c0:                                                                                                                                          #        0x2465d  0      
  movl %eax, %eax                                                                                                                                  #  54    0x2465d  2      
  cmpl 0x10(%r15,%rax,1), %ebx                                                                                                                     #  55    0x2465f  5      
  jle .L_24680                                                                                                                                     #  56    0x24664  6      
  movl %eax, %eax                                                                                                                                  #  57    0x2466a  2      
  movl 0xc(%r15,%rax,1), %edx                                                                                                                      #  58    0x2466c  5      
  testq %rdx, %rdx                                                                                                                                 #  59    0x24671  3      
  jne .L_246a0                                                                                                                                     #  60    0x24674  6      
  nop                                                                                                                                              #  61    0x2467a  1      
.L_246e0:                                                                                                                                          #        0x2467b  0      
  cmpl %esi, %edi                                                                                                                                  #  62    0x2467b  2      
  movq %rsi, %rax                                                                                                                                  #  63    0x2467d  3      
  je .L_24780                                                                                                                                      #  64    0x24680  6      
  movl %esi, %esi                                                                                                                                  #  65    0x24686  2      
  cmpl 0x10(%r15,%rsi,1), %ebx                                                                                                                     #  66    0x24688  5      
  jl .L_24780                                                                                                                                      #  67    0x2468d  6      
  nop                                                                                                                                              #  68    0x24693  1      
.L_24700:                                                                                                                                          #        0x24694  0      
  movl %eax, %eax                                                                                                                                  #  69    0x24694  2      
  movl %r12d, 0x14(%r15,%rax,1)                                                                                                                    #  70    0x24696  5      
  movl %r12d, %r12d                                                                                                                                #  71    0x2469b  3      
  movl (%r15,%r12,1), %eax                                                                                                                         #  72    0x2469e  4      
  movl %r13d, %edx                                                                                                                                 #  73    0x246a2  3      
  movl 0x8(%rsp), %ecx                                                                                                                             #  74    0x246a5  4      
  movl %r14d, %esi                                                                                                                                 #  75    0x246a9  3      
  movl %r12d, %edi                                                                                                                                 #  76    0x246ac  3      
  nop                                                                                                                                              #  77    0x246af  1      
  movl %eax, %eax                                                                                                                                  #  78    0x246b0  2      
  movl 0x8(%r15,%rax,1), %eax                                                                                                                      #  79    0x246b2  5      
  xchgw %ax, %ax                                                                                                                                   #  80    0x246b7  3      
  nop                                                                                                                                              #  81    0x246ba  1      
  andl $0xffffffe0, %eax                                                                                                                           #  82    0x246bb  5      
  addq %r15, %rax                                                                                                                                  #  83    0x246c0  3      
  callq %rax                                                                                                                                       #  84    0x246c3  2      
  addl $0x28, %esp                                                                                                                                 #  85    0x246c5  3      
  addq %r15, %rsp                                                                                                                                  #  86    0x246c8  3      
  movzbl %al, %eax                                                                                                                                 #  87    0x246cb  3      
  popq %rbx                                                                                                                                        #  88    0x246ce  2      
  popq %r12                                                                                                                                        #  89    0x246d0  3      
  popq %r13                                                                                                                                        #  90    0x246d3  3      
  popq %r14                                                                                                                                        #  91    0x246d6  3      
  popq %r11                                                                                                                                        #  92    0x246d9  3      
  andl $0xffffffe0, %r11d                                                                                                                          #  93    0x246dc  7      
  addq %r15, %r11                                                                                                                                  #  94    0x246e3  3      
  jmpq %r11                                                                                                                                        #  95    0x246e6  3      
  nop                                                                                                                                              #  96    0x246e9  1      
.L_24760:                                                                                                                                          #        0x246ea  0      
  addl $0x28, %esp                                                                                                                                 #  97    0x246ea  3      
  addq %r15, %rsp                                                                                                                                  #  98    0x246ed  3      
  xorl %eax, %eax                                                                                                                                  #  99    0x246f0  2      
  popq %rbx                                                                                                                                        #  100   0x246f2  2      
  popq %r12                                                                                                                                        #  101   0x246f4  3      
  popq %r13                                                                                                                                        #  102   0x246f7  3      
  popq %r14                                                                                                                                        #  103   0x246fa  3      
  popq %r11                                                                                                                                        #  104   0x246fd  3      
  andl $0xffffffe0, %r11d                                                                                                                          #  105   0x24700  7      
  addq %r15, %r11                                                                                                                                  #  106   0x24707  3      
  jmpq %r11                                                                                                                                        #  107   0x2470a  3      
  nop                                                                                                                                              #  108   0x2470d  1      
.L_24780:                                                                                                                                          #        0x2470e  0      
  leal 0x10(%rsp), %edx                                                                                                                            #  109   0x2470e  4      
  leal 0x4(%rcx), %edi                                                                                                                             #  110   0x24712  3      
  movl %ebx, 0x10(%rsp)                                                                                                                            #  111   0x24715  4      
  movl $0x0, 0x14(%rsp)                                                                                                                            #  112   0x24719  8      
  nop                                                                                                                                              #  113   0x24721  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_  #  114   0x24722  5      
  movl %eax, %eax                                                                                                                                  #  115   0x24727  2      
  jmpq .L_24700                                                                                                                                    #  116   0x24729  5      
  nop                                                                                                                                              #  117   0x2472e  1      
  nop                                                                                                                                              #  118   0x2472f  1      
                                                                                                                                                                            
.size _ZN2pp18Instance_DidCreateEijPPKcS2_, .-_ZN2pp18Instance_DidCreateEijPPKcS2_

