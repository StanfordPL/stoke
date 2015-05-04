  .text
  .globl __libnacl_irt_init
  .type __libnacl_irt_init, @function

#! file-offset 0x68100
#! rip-offset  0x68100
#! capacity    576 bytes

# Text                                  #  Line  RIP      Bytes  
.__libnacl_irt_init:                    #        0x68100  0      
  pushq %rbx                            #  1     0x68100  2      
  movl %edi, %edi                       #  2     0x68102  2      
  subl $0x10, %esp                      #  3     0x68104  3      
  addq %r15, %rsp                       #  4     0x68107  3      
  movl %edi, %edi                       #  5     0x6810a  2      
  movl (%r15,%rdi,1), %eax              #  6     0x6810c  4      
  testl %eax, %eax                      #  7     0x68110  2      
  je .L_68180                           #  8     0x68112  6      
  movl 0xffcece2(%rip), %edx            #  9     0x68118  6      
  jmpq .L_68140                         #  10    0x6811e  5      
  nop                                   #  11    0x68123  1      
.L_68120:                               #        0x68124  0      
  addl $0x8, %edi                       #  12    0x68124  3      
  movl %edi, %edi                       #  13    0x68127  2      
  movl (%r15,%rdi,1), %eax              #  14    0x68129  4      
  testl %eax, %eax                      #  15    0x6812d  2      
  je .L_68160                           #  16    0x6812f  6      
  nop                                   #  17    0x68135  1      
  nop                                   #  18    0x68136  1      
.L_68140:                               #        0x68137  0      
  cmpl $0x20, %eax                      #  19    0x68137  3      
  jne .L_68120                          #  20    0x6813a  6      
  movl %edi, %edi                       #  21    0x68140  2      
  movl 0x4(%r15,%rdi,1), %edx           #  22    0x68142  5      
  addl $0x8, %edi                       #  23    0x68147  3      
  movl %edi, %edi                       #  24    0x6814a  2      
  movl (%r15,%rdi,1), %eax              #  25    0x6814c  4      
  testl %eax, %eax                      #  26    0x68150  2      
  jne .L_68140                          #  27    0x68152  6      
  nop                                   #  28    0x68158  1      
.L_68160:                               #        0x68159  0      
  movl %edx, 0xffceca1(%rip)            #  29    0x68159  6      
  nop                                   #  30    0x6815f  1      
  nop                                   #  31    0x68160  1      
.L_68180:                               #        0x68161  0      
  movl $0x20, %edx                      #  32    0x68161  5      
  movl $0x10030500, %esi                #  33    0x68166  5      
  movl $0x10023404, %edi                #  34    0x6816b  5      
  nop                                   #  35    0x68170  1      
  callq .__libnacl_irt_query            #  36    0x68171  5      
  testl %eax, %eax                      #  37    0x68176  2      
  je .L_682c0                           #  38    0x68178  6      
  nop                                   #  39    0x6817e  1      
  nop                                   #  40    0x6817f  1      
.L_681c0:                               #        0x68180  0      
  movl $0x18, %edx                      #  41    0x68180  5      
  movl $0x10036ec0, %esi                #  42    0x68185  5      
  movl $0x1002342c, %edi                #  43    0x6818a  5      
  nop                                   #  44    0x6818f  1      
  callq .__libnacl_mandatory_irt_query  #  45    0x68190  5      
  movl $0xc, %edx                       #  46    0x68195  5      
  movl $0x10036e68, %esi                #  47    0x6819a  5      
  movl $0x1002343f, %edi                #  48    0x6819f  5      
  nop                                   #  49    0x681a4  1      
  callq .__libnacl_irt_query            #  50    0x681a5  5      
  testl %eax, %eax                      #  51    0x681aa  2      
  je .L_68260                           #  52    0x681ac  6      
  nop                                   #  53    0x681b2  1      
  nop                                   #  54    0x681b3  1      
.L_68220:                               #        0x681b4  0      
  movl $0x8, %edx                       #  55    0x681b4  5      
  movl $0x10036ed8, %esi                #  56    0x681b9  5      
  movl $0x1002347b, %edi                #  57    0x681be  5      
  nop                                   #  58    0x681c3  1      
  callq .__libnacl_mandatory_irt_query  #  59    0x681c4  5      
  addl $0x10, %esp                      #  60    0x681c9  3      
  addq %r15, %rsp                       #  61    0x681cc  3      
  popq %rbx                             #  62    0x681cf  2      
  popq %r11                             #  63    0x681d1  3      
  andl $0xffffffe0, %r11d               #  64    0x681d4  7      
  addq %r15, %r11                       #  65    0x681db  3      
  jmpq %r11                             #  66    0x681de  3      
  nop                                   #  67    0x681e1  1      
.L_68260:                               #        0x681e2  0      
  movl $0x10, %edx                      #  68    0x681e2  5      
  movl %esp, %esi                       #  69    0x681e7  2      
  movl $0x10023453, %edi                #  70    0x681e9  5      
  nop                                   #  71    0x681ee  1      
  callq .__libnacl_irt_query            #  72    0x681ef  5      
  testl %eax, %eax                      #  73    0x681f4  2      
  je .L_68300                           #  74    0x681f6  6      
  nop                                   #  75    0x681fc  1      
  nop                                   #  76    0x681fd  1      
.L_682a0:                               #        0x681fe  0      
  movl 0x4(%rsp), %eax                  #  77    0x681fe  4      
  movl %eax, 0xffcec60(%rip)            #  78    0x68202  6      
  movl 0x8(%rsp), %eax                  #  79    0x68208  4      
  movl %eax, 0xffcec5a(%rip)            #  80    0x6820c  6      
  jmpq .L_68220                         #  81    0x68212  5      
  nop                                   #  82    0x68217  1      
.L_682c0:                               #        0x68218  0      
  movl $0x20, %edx                      #  83    0x68218  5      
  movl $0x10030500, %esi                #  84    0x6821d  5      
  movl $0x10023416, %edi                #  85    0x68222  5      
  nop                                   #  86    0x68227  1      
  callq .__libnacl_irt_query            #  87    0x68228  5      
  jmpq .L_681c0                         #  88    0x6822d  5      
  nop                                   #  89    0x68232  1      
  nop                                   #  90    0x68233  1      
.L_68300:                               #        0x68234  0      
  movl $0xc, %edx                       #  91    0x68234  5      
  movl %esp, %esi                       #  92    0x68239  2      
  movl $0x10023467, %edi                #  93    0x6823b  5      
  nop                                   #  94    0x68240  1      
  callq .__libnacl_mandatory_irt_query  #  95    0x68241  5      
  movl $0x680e0, 0xffcec20(%rip)        #  96    0x68246  10     
  jmpq .L_682a0                         #  97    0x68250  5      
  nop                                   #  98    0x68255  1      
  nop                                   #  99    0x68256  1      
  nop                                   #  100   0x68257  1      
  nop                                   #  101   0x68258  1      
  nop                                   #  102   0x68259  1      
  nop                                   #  103   0x6825a  1      
  nop                                   #  104   0x6825b  1      
  nop                                   #  105   0x6825c  1      
  nop                                   #  106   0x6825d  1      
  nop                                   #  107   0x6825e  1      
  nop                                   #  108   0x6825f  1      
  nop                                   #  109   0x68260  1      
  nop                                   #  110   0x68261  1      
  nop                                   #  111   0x68262  1      
  nop                                   #  112   0x68263  1      
  nop                                   #  113   0x68264  1      
  nop                                   #  114   0x68265  1      
                                                                 
.size __libnacl_irt_init, .-__libnacl_irt_init

