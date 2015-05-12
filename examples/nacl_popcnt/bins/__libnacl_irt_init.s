  .text
  .globl __libnacl_irt_init
  .type __libnacl_irt_init, @function

#! file-offset 0x68080
#! rip-offset  0x68080
#! capacity    576 bytes

# Text                                  #  Line  RIP      Bytes  
.__libnacl_irt_init:                    #        0x68080  0      
  pushq %rbx                            #  1     0x68080  2      
  movl %edi, %edi                       #  2     0x68082  2      
  subl $0x10, %esp                      #  3     0x68084  3      
  addq %r15, %rsp                       #  4     0x68087  3      
  movl %edi, %edi                       #  5     0x6808a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x6808c  4      
  testl %eax, %eax                      #  7     0x68090  2      
  je .L_68100                           #  8     0x68092  6      
  movl 0xffced62(%rip), %edx            #  9     0x68098  6      
  jmpq .L_680c0                         #  10    0x6809e  5      
  nop                                   #  11    0x680a3  1      
.L_680a0:                               #        0x680a4  0      
  addl $0x8, %edi                       #  12    0x680a4  3      
  movl %edi, %edi                       #  13    0x680a7  2      
  movl (%r15,%rdi,1), %eax              #  14    0x680a9  4      
  testl %eax, %eax                      #  15    0x680ad  2      
  je .L_680e0                           #  16    0x680af  6      
  nop                                   #  17    0x680b5  1      
  nop                                   #  18    0x680b6  1      
.L_680c0:                               #        0x680b7  0      
  cmpl $0x20, %eax                      #  19    0x680b7  3      
  jne .L_680a0                          #  20    0x680ba  6      
  movl %edi, %edi                       #  21    0x680c0  2      
  movl 0x4(%r15,%rdi,1), %edx           #  22    0x680c2  5      
  addl $0x8, %edi                       #  23    0x680c7  3      
  movl %edi, %edi                       #  24    0x680ca  2      
  movl (%r15,%rdi,1), %eax              #  25    0x680cc  4      
  testl %eax, %eax                      #  26    0x680d0  2      
  jne .L_680c0                          #  27    0x680d2  6      
  nop                                   #  28    0x680d8  1      
.L_680e0:                               #        0x680d9  0      
  movl %edx, 0xffced21(%rip)            #  29    0x680d9  6      
  nop                                   #  30    0x680df  1      
  nop                                   #  31    0x680e0  1      
.L_68100:                               #        0x680e1  0      
  movl $0x20, %edx                      #  32    0x680e1  5      
  movl $0x10030500, %esi                #  33    0x680e6  5      
  movl $0x10023404, %edi                #  34    0x680eb  5      
  nop                                   #  35    0x680f0  1      
  callq .__libnacl_irt_query            #  36    0x680f1  5      
  testl %eax, %eax                      #  37    0x680f6  2      
  je .L_68240                           #  38    0x680f8  6      
  nop                                   #  39    0x680fe  1      
  nop                                   #  40    0x680ff  1      
.L_68140:                               #        0x68100  0      
  movl $0x18, %edx                      #  41    0x68100  5      
  movl $0x10036ec0, %esi                #  42    0x68105  5      
  movl $0x1002342c, %edi                #  43    0x6810a  5      
  nop                                   #  44    0x6810f  1      
  callq .__libnacl_mandatory_irt_query  #  45    0x68110  5      
  movl $0xc, %edx                       #  46    0x68115  5      
  movl $0x10036e68, %esi                #  47    0x6811a  5      
  movl $0x1002343f, %edi                #  48    0x6811f  5      
  nop                                   #  49    0x68124  1      
  callq .__libnacl_irt_query            #  50    0x68125  5      
  testl %eax, %eax                      #  51    0x6812a  2      
  je .L_681e0                           #  52    0x6812c  6      
  nop                                   #  53    0x68132  1      
  nop                                   #  54    0x68133  1      
.L_681a0:                               #        0x68134  0      
  movl $0x8, %edx                       #  55    0x68134  5      
  movl $0x10036ed8, %esi                #  56    0x68139  5      
  movl $0x1002347b, %edi                #  57    0x6813e  5      
  nop                                   #  58    0x68143  1      
  callq .__libnacl_mandatory_irt_query  #  59    0x68144  5      
  addl $0x10, %esp                      #  60    0x68149  3      
  addq %r15, %rsp                       #  61    0x6814c  3      
  popq %rbx                             #  62    0x6814f  2      
  popq %r11                             #  63    0x68151  3      
  andl $0xffffffe0, %r11d               #  64    0x68154  7      
  addq %r15, %r11                       #  65    0x6815b  3      
  jmpq %r11                             #  66    0x6815e  3      
  nop                                   #  67    0x68161  1      
.L_681e0:                               #        0x68162  0      
  movl $0x10, %edx                      #  68    0x68162  5      
  movl %esp, %esi                       #  69    0x68167  2      
  movl $0x10023453, %edi                #  70    0x68169  5      
  nop                                   #  71    0x6816e  1      
  callq .__libnacl_irt_query            #  72    0x6816f  5      
  testl %eax, %eax                      #  73    0x68174  2      
  je .L_68280                           #  74    0x68176  6      
  nop                                   #  75    0x6817c  1      
  nop                                   #  76    0x6817d  1      
.L_68220:                               #        0x6817e  0      
  movl 0x4(%rsp), %eax                  #  77    0x6817e  4      
  movl %eax, 0xffcece0(%rip)            #  78    0x68182  6      
  movl 0x8(%rsp), %eax                  #  79    0x68188  4      
  movl %eax, 0xffcecda(%rip)            #  80    0x6818c  6      
  jmpq .L_681a0                         #  81    0x68192  5      
  nop                                   #  82    0x68197  1      
.L_68240:                               #        0x68198  0      
  movl $0x20, %edx                      #  83    0x68198  5      
  movl $0x10030500, %esi                #  84    0x6819d  5      
  movl $0x10023416, %edi                #  85    0x681a2  5      
  nop                                   #  86    0x681a7  1      
  callq .__libnacl_irt_query            #  87    0x681a8  5      
  jmpq .L_68140                         #  88    0x681ad  5      
  nop                                   #  89    0x681b2  1      
  nop                                   #  90    0x681b3  1      
.L_68280:                               #        0x681b4  0      
  movl $0xc, %edx                       #  91    0x681b4  5      
  movl %esp, %esi                       #  92    0x681b9  2      
  movl $0x10023467, %edi                #  93    0x681bb  5      
  nop                                   #  94    0x681c0  1      
  callq .__libnacl_mandatory_irt_query  #  95    0x681c1  5      
  movl $0x68060, 0xffceca0(%rip)        #  96    0x681c6  10     
  jmpq .L_68220                         #  97    0x681d0  5      
  nop                                   #  98    0x681d5  1      
  nop                                   #  99    0x681d6  1      
  nop                                   #  100   0x681d7  1      
  nop                                   #  101   0x681d8  1      
  nop                                   #  102   0x681d9  1      
  nop                                   #  103   0x681da  1      
  nop                                   #  104   0x681db  1      
  nop                                   #  105   0x681dc  1      
  nop                                   #  106   0x681dd  1      
  nop                                   #  107   0x681de  1      
  nop                                   #  108   0x681df  1      
  nop                                   #  109   0x681e0  1      
  nop                                   #  110   0x681e1  1      
  nop                                   #  111   0x681e2  1      
  nop                                   #  112   0x681e3  1      
  nop                                   #  113   0x681e4  1      
  nop                                   #  114   0x681e5  1      
                                                                 
.size __libnacl_irt_init, .-__libnacl_irt_init

