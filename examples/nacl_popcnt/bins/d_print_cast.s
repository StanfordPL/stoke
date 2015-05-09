  .text
  .globl d_print_cast
  .type d_print_cast, @function

#! file-offset 0x58620
#! rip-offset  0x58620
#! capacity    800 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_cast:                    #        0x58620  0      
  movq %r12, -0x10(%rsp)          #  1     0x58620  5      
  movl %esi, %r12d                #  2     0x58625  3      
  movq %rbx, -0x18(%rsp)          #  3     0x58628  5      
  movq %r13, -0x8(%rsp)           #  4     0x5862d  5      
  subl $0x28, %esp                #  5     0x58632  3      
  addq %r15, %rsp                 #  6     0x58635  3      
  movl %r12d, %r12d               #  7     0x58638  3      
  movl 0x4(%r15,%r12,1), %esi     #  8     0x5863b  5      
  movl %edi, %ebx                 #  9     0x58640  2      
  movl %esi, %esi                 #  10    0x58642  2      
  cmpl $0x4, (%r15,%rsi,1)        #  11    0x58644  5      
  je .L_586a0                     #  12    0x58649  6      
  movl %ebx, %edi                 #  13    0x5864f  2      
  nop                             #  14    0x58651  1      
  callq .d_print_comp             #  15    0x58652  5      
.L_58660:                         #        0x58657  0      
  movq 0x10(%rsp), %rbx           #  16    0x58657  5      
  movq 0x18(%rsp), %r12           #  17    0x5865c  5      
  movq 0x20(%rsp), %r13           #  18    0x58661  5      
  addl $0x28, %esp                #  19    0x58666  3      
  addq %r15, %rsp                 #  20    0x58669  3      
  popq %r11                       #  21    0x5866c  3      
  nop                             #  22    0x5866f  1      
  andl $0xffffffe0, %r11d         #  23    0x58670  7      
  addq %r15, %r11                 #  24    0x58677  3      
  jmpq %r11                       #  25    0x5867a  3      
  nop                             #  26    0x5867d  1      
  nop                             #  27    0x5867e  1      
.L_586a0:                         #        0x5867f  0      
  movl %ebx, %ebx                 #  28    0x5867f  2      
  movl 0x114(%r15,%rbx,1), %eax   #  29    0x58681  8      
  movl %ebx, %ebx                 #  30    0x58689  2      
  movl 0x118(%r15,%rbx,1), %r13d  #  31    0x5868b  8      
  movl %ebx, %edi                 #  32    0x58693  2      
  nop                             #  33    0x58695  1      
  movl %ebx, %ebx                 #  34    0x58696  2      
  movl $0x0, 0x118(%r15,%rbx,1)   #  35    0x58698  12     
  movl %ebx, %ebx                 #  36    0x586a4  2      
  movl %esp, 0x114(%r15,%rbx,1)   #  37    0x586a6  8      
  movl %eax, (%rsp)               #  38    0x586ae  3      
  nop                             #  39    0x586b1  1      
  movl %r12d, %r12d               #  40    0x586b2  3      
  movl 0x4(%r15,%r12,1), %eax     #  41    0x586b5  5      
  movl %eax, 0x4(%rsp)            #  42    0x586ba  4      
  movl %eax, %eax                 #  43    0x586be  2      
  movl 0x4(%r15,%rax,1), %esi     #  44    0x586c0  5      
  nop                             #  45    0x586c5  1      
  callq .d_print_comp             #  46    0x586c6  5      
  movl %ebx, %ebx                 #  47    0x586cb  2      
  cmpb $0x3c, 0x108(%r15,%rbx,1)  #  48    0x586cd  9      
  movl (%rsp), %eax               #  49    0x586d6  3      
  movl %ebx, %ebx                 #  50    0x586d9  2      
  movl %eax, 0x114(%r15,%rbx,1)   #  51    0x586db  8      
  je .L_588c0                     #  52    0x586e3  6      
  xchgw %ax, %ax                  #  53    0x586e9  3      
.L_58720:                         #        0x586ec  0      
  movl %ebx, %ebx                 #  54    0x586ec  2      
  movl 0x104(%r15,%rbx,1), %eax   #  55    0x586ee  8      
  cmpl $0xff, %eax                #  56    0x586f6  3      
  leal 0x1(%rax), %edx            #  57    0x586f9  3      
  je .L_58800                     #  58    0x586fc  6      
  nop                             #  59    0x58702  1      
.L_58740:                         #        0x58703  0      
  cltq                            #  60    0x58703  2      
  movl %ebx, %ebx                 #  61    0x58705  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  62    0x58707  8      
  movl %ebx, %ebx                 #  63    0x5870f  2      
  movb $0x3c, 0x108(%r15,%rbx,1)  #  64    0x58711  9      
  leaq (%rbx,%rax,1), %rax        #  65    0x5871a  4      
  movl %ebx, %edi                 #  66    0x5871e  2      
  nop                             #  67    0x58720  1      
  movl %eax, %eax                 #  68    0x58721  2      
  movb $0x3c, 0x4(%r15,%rax,1)    #  69    0x58723  6      
  movl %r12d, %r12d               #  70    0x58729  3      
  movl 0x4(%r15,%r12,1), %eax     #  71    0x5872c  5      
  movl %eax, %eax                 #  72    0x58731  2      
  movl 0x8(%r15,%rax,1), %esi     #  73    0x58733  5      
  nop                             #  74    0x58738  1      
  callq .d_print_comp             #  75    0x58739  5      
  movl %ebx, %ebx                 #  76    0x5873e  2      
  cmpb $0x3e, 0x108(%r15,%rbx,1)  #  77    0x58740  9      
  je .L_58900                     #  78    0x58749  6      
  nop                             #  79    0x5874f  1      
.L_587a0:                         #        0x58750  0      
  movl %ebx, %ebx                 #  80    0x58750  2      
  movl 0x104(%r15,%rbx,1), %eax   #  81    0x58752  8      
  cmpl $0xff, %eax                #  82    0x5875a  3      
  leal 0x1(%rax), %edx            #  83    0x5875d  3      
  je .L_58860                     #  84    0x58760  6      
  nop                             #  85    0x58766  1      
.L_587c0:                         #        0x58767  0      
  cltq                            #  86    0x58767  2      
  movl %ebx, %ebx                 #  87    0x58769  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  88    0x5876b  8      
  movl %ebx, %ebx                 #  89    0x58773  2      
  movb $0x3e, 0x108(%r15,%rbx,1)  #  90    0x58775  9      
  leaq (%rbx,%rax,1), %rax        #  91    0x5877e  4      
  nop                             #  92    0x58782  1      
  movl %ebx, %ebx                 #  93    0x58783  2      
  movl %r13d, 0x118(%r15,%rbx,1)  #  94    0x58785  8      
  movl %eax, %eax                 #  95    0x5878d  2      
  movb $0x3e, 0x4(%r15,%rax,1)    #  96    0x5878f  6      
  jmpq .L_58660                   #  97    0x58795  5      
  nop                             #  98    0x5879a  1      
.L_58800:                         #        0x5879b  0      
  movl %ebx, %ebx                 #  99    0x5879b  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  100   0x5879d  8      
  movl %ebx, %ebx                 #  101   0x587a5  2      
  movl 0x110(%r15,%rbx,1), %edx   #  102   0x587a7  8      
  leal 0x4(%rbx), %edi            #  103   0x587af  3      
  nop                             #  104   0x587b2  1      
  movl %ebx, %ebx                 #  105   0x587b3  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  106   0x587b5  9      
  movl $0xff, %esi                #  107   0x587be  5      
  nop                             #  108   0x587c3  1      
  andl $0xffffffe0, %eax          #  109   0x587c4  5      
  addq %r15, %rax                 #  110   0x587c9  3      
  callq %rax                      #  111   0x587cc  2      
  movl %ebx, %ebx                 #  112   0x587ce  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  113   0x587d0  12     
  movl $0x1, %edx                 #  114   0x587dc  5      
  xorl %eax, %eax                 #  115   0x587e1  2      
  jmpq .L_58740                   #  116   0x587e3  5      
  nop                             #  117   0x587e8  1      
.L_58860:                         #        0x587e9  0      
  movl %ebx, %ebx                 #  118   0x587e9  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  119   0x587eb  8      
  movl %ebx, %ebx                 #  120   0x587f3  2      
  movl 0x110(%r15,%rbx,1), %edx   #  121   0x587f5  8      
  leal 0x4(%rbx), %edi            #  122   0x587fd  3      
  nop                             #  123   0x58800  1      
  movl %ebx, %ebx                 #  124   0x58801  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  125   0x58803  9      
  movl $0xff, %esi                #  126   0x5880c  5      
  nop                             #  127   0x58811  1      
  andl $0xffffffe0, %eax          #  128   0x58812  5      
  addq %r15, %rax                 #  129   0x58817  3      
  callq %rax                      #  130   0x5881a  2      
  movl %ebx, %ebx                 #  131   0x5881c  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  132   0x5881e  12     
  movl $0x1, %edx                 #  133   0x5882a  5      
  xorl %eax, %eax                 #  134   0x5882f  2      
  jmpq .L_587c0                   #  135   0x58831  5      
  nop                             #  136   0x58836  1      
.L_588c0:                         #        0x58837  0      
  movl $0x20, %esi                #  137   0x58837  5      
  movl %ebx, %edi                 #  138   0x5883c  2      
  nop                             #  139   0x5883e  1      
  nop                             #  140   0x5883f  1      
  callq .d_append_char            #  141   0x58840  5      
  jmpq .L_58720                   #  142   0x58845  5      
  nop                             #  143   0x5884a  1      
  nop                             #  144   0x5884b  1      
.L_58900:                         #        0x5884c  0      
  movl $0x20, %esi                #  145   0x5884c  5      
  movl %ebx, %edi                 #  146   0x58851  2      
  nop                             #  147   0x58853  1      
  nop                             #  148   0x58854  1      
  callq .d_append_char            #  149   0x58855  5      
  jmpq .L_587a0                   #  150   0x5885a  5      
  nop                             #  151   0x5885f  1      
  nop                             #  152   0x58860  1      
                                                           
.size d_print_cast, .-d_print_cast

