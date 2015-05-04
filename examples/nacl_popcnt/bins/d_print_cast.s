  .text
  .globl d_print_cast
  .type d_print_cast, @function

#! file-offset 0x586c0
#! rip-offset  0x586c0
#! capacity    800 bytes

# Text                            #  Line  RIP      Bytes  
.d_print_cast:                    #        0x586c0  0      
  movq %r12, -0x10(%rsp)          #  1     0x586c0  5      
  movl %esi, %r12d                #  2     0x586c5  3      
  movq %rbx, -0x18(%rsp)          #  3     0x586c8  5      
  movq %r13, -0x8(%rsp)           #  4     0x586cd  5      
  subl $0x28, %esp                #  5     0x586d2  3      
  addq %r15, %rsp                 #  6     0x586d5  3      
  movl %r12d, %r12d               #  7     0x586d8  3      
  movl 0x4(%r15,%r12,1), %esi     #  8     0x586db  5      
  movl %edi, %ebx                 #  9     0x586e0  2      
  movl %esi, %esi                 #  10    0x586e2  2      
  cmpl $0x4, (%r15,%rsi,1)        #  11    0x586e4  5      
  je .L_58740                     #  12    0x586e9  6      
  movl %ebx, %edi                 #  13    0x586ef  2      
  nop                             #  14    0x586f1  1      
  callq .d_print_comp             #  15    0x586f2  5      
.L_58700:                         #        0x586f7  0      
  movq 0x10(%rsp), %rbx           #  16    0x586f7  5      
  movq 0x18(%rsp), %r12           #  17    0x586fc  5      
  movq 0x20(%rsp), %r13           #  18    0x58701  5      
  addl $0x28, %esp                #  19    0x58706  3      
  addq %r15, %rsp                 #  20    0x58709  3      
  popq %r11                       #  21    0x5870c  3      
  nop                             #  22    0x5870f  1      
  andl $0xffffffe0, %r11d         #  23    0x58710  7      
  addq %r15, %r11                 #  24    0x58717  3      
  jmpq %r11                       #  25    0x5871a  3      
  nop                             #  26    0x5871d  1      
  nop                             #  27    0x5871e  1      
.L_58740:                         #        0x5871f  0      
  movl %ebx, %ebx                 #  28    0x5871f  2      
  movl 0x114(%r15,%rbx,1), %eax   #  29    0x58721  8      
  movl %ebx, %ebx                 #  30    0x58729  2      
  movl 0x118(%r15,%rbx,1), %r13d  #  31    0x5872b  8      
  movl %ebx, %edi                 #  32    0x58733  2      
  nop                             #  33    0x58735  1      
  movl %ebx, %ebx                 #  34    0x58736  2      
  movl $0x0, 0x118(%r15,%rbx,1)   #  35    0x58738  12     
  movl %ebx, %ebx                 #  36    0x58744  2      
  movl %esp, 0x114(%r15,%rbx,1)   #  37    0x58746  8      
  movl %eax, (%rsp)               #  38    0x5874e  3      
  nop                             #  39    0x58751  1      
  movl %r12d, %r12d               #  40    0x58752  3      
  movl 0x4(%r15,%r12,1), %eax     #  41    0x58755  5      
  movl %eax, 0x4(%rsp)            #  42    0x5875a  4      
  movl %eax, %eax                 #  43    0x5875e  2      
  movl 0x4(%r15,%rax,1), %esi     #  44    0x58760  5      
  nop                             #  45    0x58765  1      
  callq .d_print_comp             #  46    0x58766  5      
  movl %ebx, %ebx                 #  47    0x5876b  2      
  cmpb $0x3c, 0x108(%r15,%rbx,1)  #  48    0x5876d  9      
  movl (%rsp), %eax               #  49    0x58776  3      
  movl %ebx, %ebx                 #  50    0x58779  2      
  movl %eax, 0x114(%r15,%rbx,1)   #  51    0x5877b  8      
  je .L_58960                     #  52    0x58783  6      
  xchgw %ax, %ax                  #  53    0x58789  3      
.L_587c0:                         #        0x5878c  0      
  movl %ebx, %ebx                 #  54    0x5878c  2      
  movl 0x104(%r15,%rbx,1), %eax   #  55    0x5878e  8      
  cmpl $0xff, %eax                #  56    0x58796  3      
  leal 0x1(%rax), %edx            #  57    0x58799  3      
  je .L_588a0                     #  58    0x5879c  6      
  nop                             #  59    0x587a2  1      
.L_587e0:                         #        0x587a3  0      
  cltq                            #  60    0x587a3  2      
  movl %ebx, %ebx                 #  61    0x587a5  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  62    0x587a7  8      
  movl %ebx, %ebx                 #  63    0x587af  2      
  movb $0x3c, 0x108(%r15,%rbx,1)  #  64    0x587b1  9      
  leaq (%rbx,%rax,1), %rax        #  65    0x587ba  4      
  movl %ebx, %edi                 #  66    0x587be  2      
  nop                             #  67    0x587c0  1      
  movl %eax, %eax                 #  68    0x587c1  2      
  movb $0x3c, 0x4(%r15,%rax,1)    #  69    0x587c3  6      
  movl %r12d, %r12d               #  70    0x587c9  3      
  movl 0x4(%r15,%r12,1), %eax     #  71    0x587cc  5      
  movl %eax, %eax                 #  72    0x587d1  2      
  movl 0x8(%r15,%rax,1), %esi     #  73    0x587d3  5      
  nop                             #  74    0x587d8  1      
  callq .d_print_comp             #  75    0x587d9  5      
  movl %ebx, %ebx                 #  76    0x587de  2      
  cmpb $0x3e, 0x108(%r15,%rbx,1)  #  77    0x587e0  9      
  je .L_589a0                     #  78    0x587e9  6      
  nop                             #  79    0x587ef  1      
.L_58840:                         #        0x587f0  0      
  movl %ebx, %ebx                 #  80    0x587f0  2      
  movl 0x104(%r15,%rbx,1), %eax   #  81    0x587f2  8      
  cmpl $0xff, %eax                #  82    0x587fa  3      
  leal 0x1(%rax), %edx            #  83    0x587fd  3      
  je .L_58900                     #  84    0x58800  6      
  nop                             #  85    0x58806  1      
.L_58860:                         #        0x58807  0      
  cltq                            #  86    0x58807  2      
  movl %ebx, %ebx                 #  87    0x58809  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  88    0x5880b  8      
  movl %ebx, %ebx                 #  89    0x58813  2      
  movb $0x3e, 0x108(%r15,%rbx,1)  #  90    0x58815  9      
  leaq (%rbx,%rax,1), %rax        #  91    0x5881e  4      
  nop                             #  92    0x58822  1      
  movl %ebx, %ebx                 #  93    0x58823  2      
  movl %r13d, 0x118(%r15,%rbx,1)  #  94    0x58825  8      
  movl %eax, %eax                 #  95    0x5882d  2      
  movb $0x3e, 0x4(%r15,%rax,1)    #  96    0x5882f  6      
  jmpq .L_58700                   #  97    0x58835  5      
  nop                             #  98    0x5883a  1      
.L_588a0:                         #        0x5883b  0      
  movl %ebx, %ebx                 #  99    0x5883b  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  100   0x5883d  8      
  movl %ebx, %ebx                 #  101   0x58845  2      
  movl 0x110(%r15,%rbx,1), %edx   #  102   0x58847  8      
  leal 0x4(%rbx), %edi            #  103   0x5884f  3      
  nop                             #  104   0x58852  1      
  movl %ebx, %ebx                 #  105   0x58853  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  106   0x58855  9      
  movl $0xff, %esi                #  107   0x5885e  5      
  nop                             #  108   0x58863  1      
  andl $0xffffffe0, %eax          #  109   0x58864  5      
  addq %r15, %rax                 #  110   0x58869  3      
  callq %rax                      #  111   0x5886c  2      
  movl %ebx, %ebx                 #  112   0x5886e  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  113   0x58870  12     
  movl $0x1, %edx                 #  114   0x5887c  5      
  xorl %eax, %eax                 #  115   0x58881  2      
  jmpq .L_587e0                   #  116   0x58883  5      
  nop                             #  117   0x58888  1      
.L_58900:                         #        0x58889  0      
  movl %ebx, %ebx                 #  118   0x58889  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  119   0x5888b  8      
  movl %ebx, %ebx                 #  120   0x58893  2      
  movl 0x110(%r15,%rbx,1), %edx   #  121   0x58895  8      
  leal 0x4(%rbx), %edi            #  122   0x5889d  3      
  nop                             #  123   0x588a0  1      
  movl %ebx, %ebx                 #  124   0x588a1  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  125   0x588a3  9      
  movl $0xff, %esi                #  126   0x588ac  5      
  nop                             #  127   0x588b1  1      
  andl $0xffffffe0, %eax          #  128   0x588b2  5      
  addq %r15, %rax                 #  129   0x588b7  3      
  callq %rax                      #  130   0x588ba  2      
  movl %ebx, %ebx                 #  131   0x588bc  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  132   0x588be  12     
  movl $0x1, %edx                 #  133   0x588ca  5      
  xorl %eax, %eax                 #  134   0x588cf  2      
  jmpq .L_58860                   #  135   0x588d1  5      
  nop                             #  136   0x588d6  1      
.L_58960:                         #        0x588d7  0      
  movl $0x20, %esi                #  137   0x588d7  5      
  movl %ebx, %edi                 #  138   0x588dc  2      
  nop                             #  139   0x588de  1      
  nop                             #  140   0x588df  1      
  callq .d_append_char            #  141   0x588e0  5      
  jmpq .L_587c0                   #  142   0x588e5  5      
  nop                             #  143   0x588ea  1      
  nop                             #  144   0x588eb  1      
.L_589a0:                         #        0x588ec  0      
  movl $0x20, %esi                #  145   0x588ec  5      
  movl %ebx, %edi                 #  146   0x588f1  2      
  nop                             #  147   0x588f3  1      
  nop                             #  148   0x588f4  1      
  callq .d_append_char            #  149   0x588f5  5      
  jmpq .L_58840                   #  150   0x588fa  5      
  nop                             #  151   0x588ff  1      
  nop                             #  152   0x58900  1      
                                                           
.size d_print_cast, .-d_print_cast

