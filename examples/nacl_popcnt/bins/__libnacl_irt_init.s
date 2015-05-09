  .text
  .globl __libnacl_irt_init
  .type __libnacl_irt_init, @function

#! file-offset 0x68060
#! rip-offset  0x68060
#! capacity    576 bytes

# Text                                  #  Line  RIP      Bytes  
.__libnacl_irt_init:                    #        0x68060  0      
  pushq %rbx                            #  1     0x68060  2      
  movl %edi, %edi                       #  2     0x68062  2      
  subl $0x10, %esp                      #  3     0x68064  3      
  addq %r15, %rsp                       #  4     0x68067  3      
  movl %edi, %edi                       #  5     0x6806a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x6806c  4      
  testl %eax, %eax                      #  7     0x68070  2      
  je .L_680e0                           #  8     0x68072  6      
  movl 0xffced82(%rip), %edx            #  9     0x68078  6      
  jmpq .L_680a0                         #  10    0x6807e  5      
  nop                                   #  11    0x68083  1      
.L_68080:                               #        0x68084  0      
  addl $0x8, %edi                       #  12    0x68084  3      
  movl %edi, %edi                       #  13    0x68087  2      
  movl (%r15,%rdi,1), %eax              #  14    0x68089  4      
  testl %eax, %eax                      #  15    0x6808d  2      
  je .L_680c0                           #  16    0x6808f  6      
  nop                                   #  17    0x68095  1      
  nop                                   #  18    0x68096  1      
.L_680a0:                               #        0x68097  0      
  cmpl $0x20, %eax                      #  19    0x68097  3      
  jne .L_68080                          #  20    0x6809a  6      
  movl %edi, %edi                       #  21    0x680a0  2      
  movl 0x4(%r15,%rdi,1), %edx           #  22    0x680a2  5      
  addl $0x8, %edi                       #  23    0x680a7  3      
  movl %edi, %edi                       #  24    0x680aa  2      
  movl (%r15,%rdi,1), %eax              #  25    0x680ac  4      
  testl %eax, %eax                      #  26    0x680b0  2      
  jne .L_680a0                          #  27    0x680b2  6      
  nop                                   #  28    0x680b8  1      
.L_680c0:                               #        0x680b9  0      
  movl %edx, 0xffced41(%rip)            #  29    0x680b9  6      
  nop                                   #  30    0x680bf  1      
  nop                                   #  31    0x680c0  1      
.L_680e0:                               #        0x680c1  0      
  movl $0x20, %edx                      #  32    0x680c1  5      
  movl $0x10030500, %esi                #  33    0x680c6  5      
  movl $0x10023404, %edi                #  34    0x680cb  5      
  nop                                   #  35    0x680d0  1      
  callq .__libnacl_irt_query            #  36    0x680d1  5      
  testl %eax, %eax                      #  37    0x680d6  2      
  je .L_68220                           #  38    0x680d8  6      
  nop                                   #  39    0x680de  1      
  nop                                   #  40    0x680df  1      
.L_68120:                               #        0x680e0  0      
  movl $0x18, %edx                      #  41    0x680e0  5      
  movl $0x10036ec0, %esi                #  42    0x680e5  5      
  movl $0x1002342c, %edi                #  43    0x680ea  5      
  nop                                   #  44    0x680ef  1      
  callq .__libnacl_mandatory_irt_query  #  45    0x680f0  5      
  movl $0xc, %edx                       #  46    0x680f5  5      
  movl $0x10036e68, %esi                #  47    0x680fa  5      
  movl $0x1002343f, %edi                #  48    0x680ff  5      
  nop                                   #  49    0x68104  1      
  callq .__libnacl_irt_query            #  50    0x68105  5      
  testl %eax, %eax                      #  51    0x6810a  2      
  je .L_681c0                           #  52    0x6810c  6      
  nop                                   #  53    0x68112  1      
  nop                                   #  54    0x68113  1      
.L_68180:                               #        0x68114  0      
  movl $0x8, %edx                       #  55    0x68114  5      
  movl $0x10036ed8, %esi                #  56    0x68119  5      
  movl $0x1002347b, %edi                #  57    0x6811e  5      
  nop                                   #  58    0x68123  1      
  callq .__libnacl_mandatory_irt_query  #  59    0x68124  5      
  addl $0x10, %esp                      #  60    0x68129  3      
  addq %r15, %rsp                       #  61    0x6812c  3      
  popq %rbx                             #  62    0x6812f  2      
  popq %r11                             #  63    0x68131  3      
  andl $0xffffffe0, %r11d               #  64    0x68134  7      
  addq %r15, %r11                       #  65    0x6813b  3      
  jmpq %r11                             #  66    0x6813e  3      
  nop                                   #  67    0x68141  1      
.L_681c0:                               #        0x68142  0      
  movl $0x10, %edx                      #  68    0x68142  5      
  movl %esp, %esi                       #  69    0x68147  2      
  movl $0x10023453, %edi                #  70    0x68149  5      
  nop                                   #  71    0x6814e  1      
  callq .__libnacl_irt_query            #  72    0x6814f  5      
  testl %eax, %eax                      #  73    0x68154  2      
  je .L_68260                           #  74    0x68156  6      
  nop                                   #  75    0x6815c  1      
  nop                                   #  76    0x6815d  1      
.L_68200:                               #        0x6815e  0      
  movl 0x4(%rsp), %eax                  #  77    0x6815e  4      
  movl %eax, 0xffced00(%rip)            #  78    0x68162  6      
  movl 0x8(%rsp), %eax                  #  79    0x68168  4      
  movl %eax, 0xffcecfa(%rip)            #  80    0x6816c  6      
  jmpq .L_68180                         #  81    0x68172  5      
  nop                                   #  82    0x68177  1      
.L_68220:                               #        0x68178  0      
  movl $0x20, %edx                      #  83    0x68178  5      
  movl $0x10030500, %esi                #  84    0x6817d  5      
  movl $0x10023416, %edi                #  85    0x68182  5      
  nop                                   #  86    0x68187  1      
  callq .__libnacl_irt_query            #  87    0x68188  5      
  jmpq .L_68120                         #  88    0x6818d  5      
  nop                                   #  89    0x68192  1      
  nop                                   #  90    0x68193  1      
.L_68260:                               #        0x68194  0      
  movl $0xc, %edx                       #  91    0x68194  5      
  movl %esp, %esi                       #  92    0x68199  2      
  movl $0x10023467, %edi                #  93    0x6819b  5      
  nop                                   #  94    0x681a0  1      
  callq .__libnacl_mandatory_irt_query  #  95    0x681a1  5      
  movl $0x68040, 0xffcecc0(%rip)        #  96    0x681a6  10     
  jmpq .L_68200                         #  97    0x681b0  5      
  nop                                   #  98    0x681b5  1      
  nop                                   #  99    0x681b6  1      
  nop                                   #  100   0x681b7  1      
  nop                                   #  101   0x681b8  1      
  nop                                   #  102   0x681b9  1      
  nop                                   #  103   0x681ba  1      
  nop                                   #  104   0x681bb  1      
  nop                                   #  105   0x681bc  1      
  nop                                   #  106   0x681bd  1      
  nop                                   #  107   0x681be  1      
  nop                                   #  108   0x681bf  1      
  nop                                   #  109   0x681c0  1      
  nop                                   #  110   0x681c1  1      
  nop                                   #  111   0x681c2  1      
  nop                                   #  112   0x681c3  1      
  nop                                   #  113   0x681c4  1      
  nop                                   #  114   0x681c5  1      
                                                                 
.size __libnacl_irt_init, .-__libnacl_irt_init

