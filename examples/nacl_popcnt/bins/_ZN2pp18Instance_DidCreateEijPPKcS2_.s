  .text
  .globl _ZN2pp18Instance_DidCreateEijPPKcS2_
  .type _ZN2pp18Instance_DidCreateEijPPKcS2_, @function

#! file-offset 0x24640
#! rip-offset  0x24640
#! capacity    512 bytes

# Text                                                                                                                                             #  Line  RIP      Bytes  
._ZN2pp18Instance_DidCreateEijPPKcS2_:                                                                                                             #        0x24640  0      
  pushq %r14                                                                                                                                       #  1     0x24640  3      
  movl %ecx, %ecx                                                                                                                                  #  2     0x24643  2      
  movl %esi, %r14d                                                                                                                                 #  3     0x24645  3      
  pushq %r13                                                                                                                                       #  4     0x24648  3      
  movl %edx, %r13d                                                                                                                                 #  5     0x2464b  3      
  pushq %r12                                                                                                                                       #  6     0x2464e  3      
  pushq %rbx                                                                                                                                       #  7     0x24651  2      
  movl %edi, %ebx                                                                                                                                  #  8     0x24653  2      
  subl $0x28, %esp                                                                                                                                 #  9     0x24655  3      
  addq %r15, %rsp                                                                                                                                  #  10    0x24658  3      
  movq %rcx, 0x8(%rsp)                                                                                                                             #  11    0x2465b  5      
  nop                                                                                                                                              #  12    0x24660  1      
  nop                                                                                                                                              #  13    0x24661  1      
  nop                                                                                                                                              #  14    0x24662  1      
  callq ._ZN2pp6Module3GetEv                                                                                                                       #  15    0x24663  5      
  movl %eax, %ecx                                                                                                                                  #  16    0x24668  2      
  testq %rcx, %rcx                                                                                                                                 #  17    0x2466a  3      
  je .L_247e0                                                                                                                                      #  18    0x2466d  6      
  movl %ecx, %ecx                                                                                                                                  #  19    0x24673  2      
  movl (%r15,%rcx,1), %eax                                                                                                                         #  20    0x24675  4      
  movl %ecx, %edi                                                                                                                                  #  21    0x24679  2      
  movq %rcx, (%rsp)                                                                                                                                #  22    0x2467b  4      
  movl %ebx, %esi                                                                                                                                  #  23    0x2467f  2      
  movl %eax, %eax                                                                                                                                  #  24    0x24681  2      
  movl 0xc(%r15,%rax,1), %eax                                                                                                                      #  25    0x24683  5      
  nop                                                                                                                                              #  26    0x24688  1      
  nop                                                                                                                                              #  27    0x24689  1      
  andl $0xffffffe0, %eax                                                                                                                           #  28    0x2468a  5      
  addq %r15, %rax                                                                                                                                  #  29    0x2468f  3      
  callq %rax                                                                                                                                       #  30    0x24692  2      
  movl %eax, %r12d                                                                                                                                 #  31    0x24694  3      
  movq (%rsp), %rcx                                                                                                                                #  32    0x24697  4      
  testq %r12, %r12                                                                                                                                 #  33    0x2469b  3      
  je .L_247e0                                                                                                                                      #  34    0x2469e  6      
  movl %ecx, %ecx                                                                                                                                  #  35    0x246a4  2      
  movl 0xc(%r15,%rcx,1), %eax                                                                                                                      #  36    0x246a6  5      
  leal 0x8(%rcx), %edi                                                                                                                             #  37    0x246ab  3      
  movq %rdi, %rsi                                                                                                                                  #  38    0x246ae  3      
  testq %rax, %rax                                                                                                                                 #  39    0x246b1  3      
  jne .L_24740                                                                                                                                     #  40    0x246b4  6      
  jmpq .L_24760                                                                                                                                    #  41    0x246ba  5      
  nop                                                                                                                                              #  42    0x246bf  1      
  nop                                                                                                                                              #  43    0x246c0  1      
.L_24700:                                                                                                                                          #        0x246c1  0      
  movl %eax, %eax                                                                                                                                  #  44    0x246c1  2      
  movl 0x8(%r15,%rax,1), %edx                                                                                                                      #  45    0x246c3  5      
  movq %rax, %rsi                                                                                                                                  #  46    0x246c8  3      
  testq %rdx, %rdx                                                                                                                                 #  47    0x246cb  3      
  je .L_24760                                                                                                                                      #  48    0x246ce  6      
  xchgw %ax, %ax                                                                                                                                   #  49    0x246d4  3      
  nop                                                                                                                                              #  50    0x246d7  1      
.L_24720:                                                                                                                                          #        0x246d8  0      
  movq %rdx, %rax                                                                                                                                  #  51    0x246d8  3      
  nop                                                                                                                                              #  52    0x246db  1      
  nop                                                                                                                                              #  53    0x246dc  1      
.L_24740:                                                                                                                                          #        0x246dd  0      
  movl %eax, %eax                                                                                                                                  #  54    0x246dd  2      
  cmpl 0x10(%r15,%rax,1), %ebx                                                                                                                     #  55    0x246df  5      
  jle .L_24700                                                                                                                                     #  56    0x246e4  6      
  movl %eax, %eax                                                                                                                                  #  57    0x246ea  2      
  movl 0xc(%r15,%rax,1), %edx                                                                                                                      #  58    0x246ec  5      
  testq %rdx, %rdx                                                                                                                                 #  59    0x246f1  3      
  jne .L_24720                                                                                                                                     #  60    0x246f4  6      
  nop                                                                                                                                              #  61    0x246fa  1      
.L_24760:                                                                                                                                          #        0x246fb  0      
  cmpl %esi, %edi                                                                                                                                  #  62    0x246fb  2      
  movq %rsi, %rax                                                                                                                                  #  63    0x246fd  3      
  je .L_24800                                                                                                                                      #  64    0x24700  6      
  movl %esi, %esi                                                                                                                                  #  65    0x24706  2      
  cmpl 0x10(%r15,%rsi,1), %ebx                                                                                                                     #  66    0x24708  5      
  jl .L_24800                                                                                                                                      #  67    0x2470d  6      
  nop                                                                                                                                              #  68    0x24713  1      
.L_24780:                                                                                                                                          #        0x24714  0      
  movl %eax, %eax                                                                                                                                  #  69    0x24714  2      
  movl %r12d, 0x14(%r15,%rax,1)                                                                                                                    #  70    0x24716  5      
  movl %r12d, %r12d                                                                                                                                #  71    0x2471b  3      
  movl (%r15,%r12,1), %eax                                                                                                                         #  72    0x2471e  4      
  movl %r13d, %edx                                                                                                                                 #  73    0x24722  3      
  movl 0x8(%rsp), %ecx                                                                                                                             #  74    0x24725  4      
  movl %r14d, %esi                                                                                                                                 #  75    0x24729  3      
  movl %r12d, %edi                                                                                                                                 #  76    0x2472c  3      
  nop                                                                                                                                              #  77    0x2472f  1      
  movl %eax, %eax                                                                                                                                  #  78    0x24730  2      
  movl 0x8(%r15,%rax,1), %eax                                                                                                                      #  79    0x24732  5      
  xchgw %ax, %ax                                                                                                                                   #  80    0x24737  3      
  nop                                                                                                                                              #  81    0x2473a  1      
  andl $0xffffffe0, %eax                                                                                                                           #  82    0x2473b  5      
  addq %r15, %rax                                                                                                                                  #  83    0x24740  3      
  callq %rax                                                                                                                                       #  84    0x24743  2      
  addl $0x28, %esp                                                                                                                                 #  85    0x24745  3      
  addq %r15, %rsp                                                                                                                                  #  86    0x24748  3      
  movzbl %al, %eax                                                                                                                                 #  87    0x2474b  3      
  popq %rbx                                                                                                                                        #  88    0x2474e  2      
  popq %r12                                                                                                                                        #  89    0x24750  3      
  popq %r13                                                                                                                                        #  90    0x24753  3      
  popq %r14                                                                                                                                        #  91    0x24756  3      
  popq %r11                                                                                                                                        #  92    0x24759  3      
  andl $0xffffffe0, %r11d                                                                                                                          #  93    0x2475c  7      
  addq %r15, %r11                                                                                                                                  #  94    0x24763  3      
  jmpq %r11                                                                                                                                        #  95    0x24766  3      
  nop                                                                                                                                              #  96    0x24769  1      
.L_247e0:                                                                                                                                          #        0x2476a  0      
  addl $0x28, %esp                                                                                                                                 #  97    0x2476a  3      
  addq %r15, %rsp                                                                                                                                  #  98    0x2476d  3      
  xorl %eax, %eax                                                                                                                                  #  99    0x24770  2      
  popq %rbx                                                                                                                                        #  100   0x24772  2      
  popq %r12                                                                                                                                        #  101   0x24774  3      
  popq %r13                                                                                                                                        #  102   0x24777  3      
  popq %r14                                                                                                                                        #  103   0x2477a  3      
  popq %r11                                                                                                                                        #  104   0x2477d  3      
  andl $0xffffffe0, %r11d                                                                                                                          #  105   0x24780  7      
  addq %r15, %r11                                                                                                                                  #  106   0x24787  3      
  jmpq %r11                                                                                                                                        #  107   0x2478a  3      
  nop                                                                                                                                              #  108   0x2478d  1      
.L_24800:                                                                                                                                          #        0x2478e  0      
  leal 0x10(%rsp), %edx                                                                                                                            #  109   0x2478e  4      
  leal 0x4(%rcx), %edi                                                                                                                             #  110   0x24792  3      
  movl %ebx, 0x10(%rsp)                                                                                                                            #  111   0x24795  4      
  movl $0x0, 0x14(%rsp)                                                                                                                            #  112   0x24799  8      
  nop                                                                                                                                              #  113   0x247a1  1      
  callq ._ZNSt8_Rb_treeIiSt4pairIKiPN2pp8InstanceEESt10_Select1stIS5_ESt4lessIiESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_  #  114   0x247a2  5      
  movl %eax, %eax                                                                                                                                  #  115   0x247a7  2      
  jmpq .L_24780                                                                                                                                    #  116   0x247a9  5      
  nop                                                                                                                                              #  117   0x247ae  1      
  nop                                                                                                                                              #  118   0x247af  1      
                                                                                                                                                                            
.size _ZN2pp18Instance_DidCreateEijPPKcS2_, .-_ZN2pp18Instance_DidCreateEijPPKcS2_

