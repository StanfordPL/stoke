  .text
  .globl realloc
  .type realloc, @function

#! file-offset 0x66520
#! rip-offset  0x66520
#! capacity    704 bytes

# Text                         #  Line  RIP      Bytes  
.realloc:                      #        0x66520  0      
  movq %r12, -0x18(%rsp)       #  1     0x66520  5      
  movl %edi, %r12d             #  2     0x66525  3      
  movq %rbx, -0x20(%rsp)       #  3     0x66528  5      
  movq %r13, -0x10(%rsp)       #  4     0x6652d  5      
  movq %r14, -0x8(%rsp)        #  5     0x66532  5      
  subl $0x38, %esp             #  6     0x66537  3      
  addq %r15, %rsp              #  7     0x6653a  3      
  testq %r12, %r12             #  8     0x6653d  3      
  movl %esi, %ebx              #  9     0x66540  2      
  je .L_66760                  #  10    0x66542  6      
  cmpl $0xffffffbf, %esi       #  11    0x66548  6      
  ja .L_667a0                  #  12    0x6654e  6      
  cmpl $0xa, %ebx              #  13    0x66554  3      
  movl $0x10, %esi             #  14    0x66557  5      
  ja .L_66680                  #  15    0x6655c  6      
  nop                          #  16    0x66562  1      
  testb $0x2, 0xffd0512(%rip)  #  17    0x66563  7      
  jne .L_66620                 #  18    0x6656a  6      
  nop                          #  19    0x66570  1      
  nop                          #  20    0x66571  1      
.L_66580:                      #        0x66572  0      
  leal -0x8(%r12), %r14d       #  21    0x66572  5      
  movl $0x1, %edx              #  22    0x66577  5      
  movl %r14d, %edi             #  23    0x6657c  3      
  nop                          #  24    0x6657f  1      
  callq .T_276                 #  25    0x66580  5      
  testb $0x2, 0xffd04f0(%rip)  #  26    0x66585  7      
  movl %eax, %r13d             #  27    0x6658c  3      
  jne .L_666a0                 #  28    0x6658f  6      
  nop                          #  29    0x66595  1      
  nop                          #  30    0x66596  1      
.L_665c0:                      #        0x66597  0      
  testq %r13, %r13             #  31    0x66597  3      
  je .L_666c0                  #  32    0x6659a  6      
  addl $0x8, %r13d             #  33    0x665a0  4      
  nop                          #  34    0x665a4  1      
  nop                          #  35    0x665a5  1      
.L_665e0:                      #        0x665a6  0      
  movl %r13d, %eax             #  36    0x665a6  3      
  movq 0x18(%rsp), %rbx        #  37    0x665a9  5      
  movq 0x20(%rsp), %r12        #  38    0x665ae  5      
  movq 0x28(%rsp), %r13        #  39    0x665b3  5      
  movq 0x30(%rsp), %r14        #  40    0x665b8  5      
  addl $0x38, %esp             #  41    0x665bd  3      
  addq %r15, %rsp              #  42    0x665c0  3      
  popq %r11                    #  43    0x665c3  3      
  nop                          #  44    0x665c6  1      
  andl $0xffffffe0, %r11d      #  45    0x665c7  7      
  addq %r15, %r11              #  46    0x665ce  3      
  jmpq %r11                    #  47    0x665d1  3      
  nop                          #  48    0x665d4  1      
  nop                          #  49    0x665d5  1      
.L_66620:                      #        0x665d6  0      
  movl $0x1, %eax              #  50    0x665d6  5      
  xchgl %eax, 0xffd049f(%rip)  #  51    0x665db  6      
  testl %eax, %eax             #  52    0x665e1  2      
  je .L_66580                  #  53    0x665e3  6      
  movl $0x10036a80, %edi       #  54    0x665e9  5      
  movl %esi, 0x8(%rsp)         #  55    0x665ee  4      
  xorl %r13d, %r13d            #  56    0x665f2  3      
  nop                          #  57    0x665f5  1      
  nop                          #  58    0x665f6  1      
  nop                          #  59    0x665f7  1      
  callq .spin_acquire_lock     #  60    0x665f8  5      
  testl %eax, %eax             #  61    0x665fd  2      
  movl 0x8(%rsp), %esi         #  62    0x665ff  4      
  je .L_66580                  #  63    0x66603  6      
  jmpq .L_665e0                #  64    0x66609  5      
  nop                          #  65    0x6660e  1      
.L_66680:                      #        0x6660f  0      
  leal 0xb(%rbx), %esi         #  66    0x6660f  3      
  andl $0xfffffff8, %esi       #  67    0x66612  6      
  testb $0x2, 0xffd045d(%rip)  #  68    0x66618  7      
  je .L_66580                  #  69    0x6661f  6      
  jmpq .L_66620                #  70    0x66625  5      
  nop                          #  71    0x6662a  1      
.L_666a0:                      #        0x6662b  0      
  mfence                       #  72    0x6662b  3      
  movl $0x0, 0xffd0448(%rip)   #  73    0x6662e  10     
  jmpq .L_665c0                #  74    0x66638  5      
  nop                          #  75    0x6663d  1      
.L_666c0:                      #        0x6663e  0      
  movl %ebx, %edi              #  76    0x6663e  2      
  nop                          #  77    0x66640  1      
  nop                          #  78    0x66641  1      
  callq .malloc                #  79    0x66642  5      
  movl %eax, %r13d             #  80    0x66647  3      
  testq %r13, %r13             #  81    0x6664a  3      
  je .L_665e0                  #  82    0x6664d  6      
  movl %r14d, %r14d            #  83    0x66653  3      
  movl 0x4(%r15,%r14,1), %edx  #  84    0x66656  5      
  movl %r13d, %edi             #  85    0x6665b  3      
  movl %r12d, %esi             #  86    0x6665e  3      
  movl %edx, %eax              #  87    0x66661  2      
  andl $0x3, %eax              #  88    0x66663  3      
  nop                          #  89    0x66666  1      
  cmpl $0x1, %eax              #  90    0x66667  3      
  sbbl %eax, %eax              #  91    0x6666a  2      
  andl $0xfffffff8, %edx       #  92    0x6666c  6      
  andl $0x4, %eax              #  93    0x66672  3      
  addl $0x4, %eax              #  94    0x66675  3      
  subl %eax, %edx              #  95    0x66678  2      
  cmpl %ebx, %edx              #  96    0x6667a  2      
  cmoval %ebx, %edx            #  97    0x6667c  3      
  nop                          #  98    0x6667f  1      
  callq .memcpy                #  99    0x66680  5      
  movl %r12d, %edi             #  100   0x66685  3      
  nop                          #  101   0x66688  1      
  nop                          #  102   0x66689  1      
  callq .free                  #  103   0x6668a  5      
  jmpq .L_665e0                #  104   0x6668f  5      
  nop                          #  105   0x66694  1      
  nop                          #  106   0x66695  1      
.L_66760:                      #        0x66696  0      
  movq 0x18(%rsp), %rbx        #  107   0x66696  5      
  movq 0x20(%rsp), %r12        #  108   0x6669b  5      
  movl %esi, %edi              #  109   0x666a0  2      
  movq 0x28(%rsp), %r13        #  110   0x666a2  5      
  movq 0x30(%rsp), %r14        #  111   0x666a7  5      
  addl $0x38, %esp             #  112   0x666ac  3      
  addq %r15, %rsp              #  113   0x666af  3      
  nop                          #  114   0x666b2  1      
  jmpq .malloc                 #  115   0x666b3  5      
  nop                          #  116   0x666b8  1      
  nop                          #  117   0x666b9  1      
.L_667a0:                      #        0x666ba  0      
  nop                          #  118   0x666ba  1      
  nop                          #  119   0x666bb  1      
  callq .__errno               #  120   0x666bc  5      
  movl %eax, %eax              #  121   0x666c1  2      
  xorl %r13d, %r13d            #  122   0x666c3  3      
  movl %eax, %eax              #  123   0x666c6  2      
  movl $0xc, (%r15,%rax,1)     #  124   0x666c8  8      
  jmpq .L_665e0                #  125   0x666d0  5      
  nop                          #  126   0x666d5  1      
                                                        
.size realloc, .-realloc

