  .text
  .globl d_print_cast
  .type d_print_cast, @function

#! file-offset 0x58640
#! rip-offset  0x58640
#! capacity    800 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_cast:                    #        0x58640  0      
  movq %r12, -0x10(%rsp)          #  1     0x58640  5      
  movl %esi, %r12d                #  2     0x58645  3      
  movq %rbx, -0x18(%rsp)          #  3     0x58648  5      
  movq %r13, -0x8(%rsp)           #  4     0x5864d  5      
  subl $0x28, %esp                #  5     0x58652  3      
  addq %r15, %rsp                 #  6     0x58655  3      
  movl %r12d, %r12d               #  7     0x58658  3      
  movl 0x4(%r15,%r12,1), %esi     #  8     0x5865b  5      
  movl %edi, %ebx                 #  9     0x58660  2      
  movl %esi, %esi                 #  10    0x58662  2      
  cmpl $0x4, (%r15,%rsi,1)        #  11    0x58664  5      
  je .L_586c0                     #  12    0x58669  6      
  movl %ebx, %edi                 #  13    0x5866f  2      
  nop                             #  14    0x58671  1      
  callq .d_print_comp             #  15    0x58672  5      
.L_58680:                         #        0x58677  0      
  movq 0x10(%rsp), %rbx           #  16    0x58677  5      
  movq 0x18(%rsp), %r12           #  17    0x5867c  5      
  movq 0x20(%rsp), %r13           #  18    0x58681  5      
  addl $0x28, %esp                #  19    0x58686  3      
  addq %r15, %rsp                 #  20    0x58689  3      
  popq %r11                       #  21    0x5868c  3      
  nop                             #  22    0x5868f  1      
  andl $0xffffffe0, %r11d         #  23    0x58690  7      
  addq %r15, %r11                 #  24    0x58697  3      
  jmpq %r11                       #  25    0x5869a  3      
  nop                             #  26    0x5869d  1      
  nop                             #  27    0x5869e  1      
.L_586c0:                         #        0x5869f  0      
  movl %ebx, %ebx                 #  28    0x5869f  2      
  movl 0x114(%r15,%rbx,1), %eax   #  29    0x586a1  8      
  movl %ebx, %ebx                 #  30    0x586a9  2      
  movl 0x118(%r15,%rbx,1), %r13d  #  31    0x586ab  8      
  movl %ebx, %edi                 #  32    0x586b3  2      
  nop                             #  33    0x586b5  1      
  movl %ebx, %ebx                 #  34    0x586b6  2      
  movl $0x0, 0x118(%r15,%rbx,1)   #  35    0x586b8  12     
  movl %ebx, %ebx                 #  36    0x586c4  2      
  movl %esp, 0x114(%r15,%rbx,1)   #  37    0x586c6  8      
  movl %eax, (%rsp)               #  38    0x586ce  3      
  nop                             #  39    0x586d1  1      
  movl %r12d, %r12d               #  40    0x586d2  3      
  movl 0x4(%r15,%r12,1), %eax     #  41    0x586d5  5      
  movl %eax, 0x4(%rsp)            #  42    0x586da  4      
  movl %eax, %eax                 #  43    0x586de  2      
  movl 0x4(%r15,%rax,1), %esi     #  44    0x586e0  5      
  nop                             #  45    0x586e5  1      
  callq .d_print_comp             #  46    0x586e6  5      
  movl %ebx, %ebx                 #  47    0x586eb  2      
  cmpb $0x3c, 0x108(%r15,%rbx,1)  #  48    0x586ed  9      
  movl (%rsp), %eax               #  49    0x586f6  3      
  movl %ebx, %ebx                 #  50    0x586f9  2      
  movl %eax, 0x114(%r15,%rbx,1)   #  51    0x586fb  8      
  je .L_588e0                     #  52    0x58703  6      
  xchgw %ax, %ax                  #  53    0x58709  3      
.L_58740:                         #        0x5870c  0      
  movl %ebx, %ebx                 #  54    0x5870c  2      
  movl 0x104(%r15,%rbx,1), %eax   #  55    0x5870e  8      
  cmpl $0xff, %eax                #  56    0x58716  3      
  leal 0x1(%rax), %edx            #  57    0x58719  3      
  je .L_58820                     #  58    0x5871c  6      
  nop                             #  59    0x58722  1      
.L_58760:                         #        0x58723  0      
  cltq                            #  60    0x58723  2      
  movl %ebx, %ebx                 #  61    0x58725  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  62    0x58727  8      
  movl %ebx, %ebx                 #  63    0x5872f  2      
  movb $0x3c, 0x108(%r15,%rbx,1)  #  64    0x58731  9      
  leaq (%rbx,%rax,1), %rax        #  65    0x5873a  4      
  movl %ebx, %edi                 #  66    0x5873e  2      
  nop                             #  67    0x58740  1      
  movl %eax, %eax                 #  68    0x58741  2      
  movb $0x3c, 0x4(%r15,%rax,1)    #  69    0x58743  6      
  movl %r12d, %r12d               #  70    0x58749  3      
  movl 0x4(%r15,%r12,1), %eax     #  71    0x5874c  5      
  movl %eax, %eax                 #  72    0x58751  2      
  movl 0x8(%r15,%rax,1), %esi     #  73    0x58753  5      
  nop                             #  74    0x58758  1      
  callq .d_print_comp             #  75    0x58759  5      
  movl %ebx, %ebx                 #  76    0x5875e  2      
  cmpb $0x3e, 0x108(%r15,%rbx,1)  #  77    0x58760  9      
  je .L_58920                     #  78    0x58769  6      
  nop                             #  79    0x5876f  1      
.L_587c0:                         #        0x58770  0      
  movl %ebx, %ebx                 #  80    0x58770  2      
  movl 0x104(%r15,%rbx,1), %eax   #  81    0x58772  8      
  cmpl $0xff, %eax                #  82    0x5877a  3      
  leal 0x1(%rax), %edx            #  83    0x5877d  3      
  je .L_58880                     #  84    0x58780  6      
  nop                             #  85    0x58786  1      
.L_587e0:                         #        0x58787  0      
  cltq                            #  86    0x58787  2      
  movl %ebx, %ebx                 #  87    0x58789  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  88    0x5878b  8      
  movl %ebx, %ebx                 #  89    0x58793  2      
  movb $0x3e, 0x108(%r15,%rbx,1)  #  90    0x58795  9      
  leaq (%rbx,%rax,1), %rax        #  91    0x5879e  4      
  nop                             #  92    0x587a2  1      
  movl %ebx, %ebx                 #  93    0x587a3  2      
  movl %r13d, 0x118(%r15,%rbx,1)  #  94    0x587a5  8      
  movl %eax, %eax                 #  95    0x587ad  2      
  movb $0x3e, 0x4(%r15,%rax,1)    #  96    0x587af  6      
  jmpq .L_58680                   #  97    0x587b5  5      
  nop                             #  98    0x587ba  1      
.L_58820:                         #        0x587bb  0      
  movl %ebx, %ebx                 #  99    0x587bb  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  100   0x587bd  8      
  movl %ebx, %ebx                 #  101   0x587c5  2      
  movl 0x110(%r15,%rbx,1), %edx   #  102   0x587c7  8      
  leal 0x4(%rbx), %edi            #  103   0x587cf  3      
  nop                             #  104   0x587d2  1      
  movl %ebx, %ebx                 #  105   0x587d3  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  106   0x587d5  9      
  movl $0xff, %esi                #  107   0x587de  5      
  nop                             #  108   0x587e3  1      
  andl $0xffffffe0, %eax          #  109   0x587e4  5      
  addq %r15, %rax                 #  110   0x587e9  3      
  callq %rax                      #  111   0x587ec  2      
  movl %ebx, %ebx                 #  112   0x587ee  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  113   0x587f0  12     
  movl $0x1, %edx                 #  114   0x587fc  5      
  xorl %eax, %eax                 #  115   0x58801  2      
  jmpq .L_58760                   #  116   0x58803  5      
  nop                             #  117   0x58808  1      
.L_58880:                         #        0x58809  0      
  movl %ebx, %ebx                 #  118   0x58809  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  119   0x5880b  8      
  movl %ebx, %ebx                 #  120   0x58813  2      
  movl 0x110(%r15,%rbx,1), %edx   #  121   0x58815  8      
  leal 0x4(%rbx), %edi            #  122   0x5881d  3      
  nop                             #  123   0x58820  1      
  movl %ebx, %ebx                 #  124   0x58821  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  125   0x58823  9      
  movl $0xff, %esi                #  126   0x5882c  5      
  nop                             #  127   0x58831  1      
  andl $0xffffffe0, %eax          #  128   0x58832  5      
  addq %r15, %rax                 #  129   0x58837  3      
  callq %rax                      #  130   0x5883a  2      
  movl %ebx, %ebx                 #  131   0x5883c  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  132   0x5883e  12     
  movl $0x1, %edx                 #  133   0x5884a  5      
  xorl %eax, %eax                 #  134   0x5884f  2      
  jmpq .L_587e0                   #  135   0x58851  5      
  nop                             #  136   0x58856  1      
.L_588e0:                         #        0x58857  0      
  movl $0x20, %esi                #  137   0x58857  5      
  movl %ebx, %edi                 #  138   0x5885c  2      
  nop                             #  139   0x5885e  1      
  nop                             #  140   0x5885f  1      
  callq .d_append_char            #  141   0x58860  5      
  jmpq .L_58740                   #  142   0x58865  5      
  nop                             #  143   0x5886a  1      
  nop                             #  144   0x5886b  1      
.L_58920:                         #        0x5886c  0      
  movl $0x20, %esi                #  145   0x5886c  5      
  movl %ebx, %edi                 #  146   0x58871  2      
  nop                             #  147   0x58873  1      
  nop                             #  148   0x58874  1      
  callq .d_append_char            #  149   0x58875  5      
  jmpq .L_587c0                   #  150   0x5887a  5      
  nop                             #  151   0x5887f  1      
  nop                             #  152   0x58880  1      
                                                           
.size d_print_cast, .-d_print_cast

