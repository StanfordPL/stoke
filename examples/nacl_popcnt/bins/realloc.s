  .text
  .globl realloc
  .type realloc, @function

#! file-offset 0x66540
#! rip-offset  0x66540
#! capacity    704 bytes

# Text                         #  Line  RIP      Bytes  
.realloc:                      #        0x66540  0      
  movq %r12, -0x18(%rsp)       #  1     0x66540  5      
  movl %edi, %r12d             #  2     0x66545  3      
  movq %rbx, -0x20(%rsp)       #  3     0x66548  5      
  movq %r13, -0x10(%rsp)       #  4     0x6654d  5      
  movq %r14, -0x8(%rsp)        #  5     0x66552  5      
  subl $0x38, %esp             #  6     0x66557  3      
  addq %r15, %rsp              #  7     0x6655a  3      
  testq %r12, %r12             #  8     0x6655d  3      
  movl %esi, %ebx              #  9     0x66560  2      
  je .L_66780                  #  10    0x66562  6      
  cmpl $0xffffffbf, %esi       #  11    0x66568  6      
  ja .L_667c0                  #  12    0x6656e  6      
  cmpl $0xa, %ebx              #  13    0x66574  3      
  movl $0x10, %esi             #  14    0x66577  5      
  ja .L_666a0                  #  15    0x6657c  6      
  nop                          #  16    0x66582  1      
  testb $0x2, 0xffd04f2(%rip)  #  17    0x66583  7      
  jne .L_66640                 #  18    0x6658a  6      
  nop                          #  19    0x66590  1      
  nop                          #  20    0x66591  1      
.L_665a0:                      #        0x66592  0      
  leal -0x8(%r12), %r14d       #  21    0x66592  5      
  movl $0x1, %edx              #  22    0x66597  5      
  movl %r14d, %edi             #  23    0x6659c  3      
  nop                          #  24    0x6659f  1      
  callq .T_276                 #  25    0x665a0  5      
  testb $0x2, 0xffd04d0(%rip)  #  26    0x665a5  7      
  movl %eax, %r13d             #  27    0x665ac  3      
  jne .L_666c0                 #  28    0x665af  6      
  nop                          #  29    0x665b5  1      
  nop                          #  30    0x665b6  1      
.L_665e0:                      #        0x665b7  0      
  testq %r13, %r13             #  31    0x665b7  3      
  je .L_666e0                  #  32    0x665ba  6      
  addl $0x8, %r13d             #  33    0x665c0  4      
  nop                          #  34    0x665c4  1      
  nop                          #  35    0x665c5  1      
.L_66600:                      #        0x665c6  0      
  movl %r13d, %eax             #  36    0x665c6  3      
  movq 0x18(%rsp), %rbx        #  37    0x665c9  5      
  movq 0x20(%rsp), %r12        #  38    0x665ce  5      
  movq 0x28(%rsp), %r13        #  39    0x665d3  5      
  movq 0x30(%rsp), %r14        #  40    0x665d8  5      
  addl $0x38, %esp             #  41    0x665dd  3      
  addq %r15, %rsp              #  42    0x665e0  3      
  popq %r11                    #  43    0x665e3  3      
  nop                          #  44    0x665e6  1      
  andl $0xffffffe0, %r11d      #  45    0x665e7  7      
  addq %r15, %r11              #  46    0x665ee  3      
  jmpq %r11                    #  47    0x665f1  3      
  nop                          #  48    0x665f4  1      
  nop                          #  49    0x665f5  1      
.L_66640:                      #        0x665f6  0      
  movl $0x1, %eax              #  50    0x665f6  5      
  xchgl %eax, 0xffd047f(%rip)  #  51    0x665fb  6      
  testl %eax, %eax             #  52    0x66601  2      
  je .L_665a0                  #  53    0x66603  6      
  movl $0x10036a80, %edi       #  54    0x66609  5      
  movl %esi, 0x8(%rsp)         #  55    0x6660e  4      
  xorl %r13d, %r13d            #  56    0x66612  3      
  nop                          #  57    0x66615  1      
  nop                          #  58    0x66616  1      
  nop                          #  59    0x66617  1      
  callq .spin_acquire_lock     #  60    0x66618  5      
  testl %eax, %eax             #  61    0x6661d  2      
  movl 0x8(%rsp), %esi         #  62    0x6661f  4      
  je .L_665a0                  #  63    0x66623  6      
  jmpq .L_66600                #  64    0x66629  5      
  nop                          #  65    0x6662e  1      
.L_666a0:                      #        0x6662f  0      
  leal 0xb(%rbx), %esi         #  66    0x6662f  3      
  andl $0xfffffff8, %esi       #  67    0x66632  6      
  testb $0x2, 0xffd043d(%rip)  #  68    0x66638  7      
  je .L_665a0                  #  69    0x6663f  6      
  jmpq .L_66640                #  70    0x66645  5      
  nop                          #  71    0x6664a  1      
.L_666c0:                      #        0x6664b  0      
  mfence                       #  72    0x6664b  3      
  movl $0x0, 0xffd0428(%rip)   #  73    0x6664e  10     
  jmpq .L_665e0                #  74    0x66658  5      
  nop                          #  75    0x6665d  1      
.L_666e0:                      #        0x6665e  0      
  movl %ebx, %edi              #  76    0x6665e  2      
  nop                          #  77    0x66660  1      
  nop                          #  78    0x66661  1      
  callq .malloc                #  79    0x66662  5      
  movl %eax, %r13d             #  80    0x66667  3      
  testq %r13, %r13             #  81    0x6666a  3      
  je .L_66600                  #  82    0x6666d  6      
  movl %r14d, %r14d            #  83    0x66673  3      
  movl 0x4(%r15,%r14,1), %edx  #  84    0x66676  5      
  movl %r13d, %edi             #  85    0x6667b  3      
  movl %r12d, %esi             #  86    0x6667e  3      
  movl %edx, %eax              #  87    0x66681  2      
  andl $0x3, %eax              #  88    0x66683  3      
  nop                          #  89    0x66686  1      
  cmpl $0x1, %eax              #  90    0x66687  3      
  sbbl %eax, %eax              #  91    0x6668a  2      
  andl $0xfffffff8, %edx       #  92    0x6668c  6      
  andl $0x4, %eax              #  93    0x66692  3      
  addl $0x4, %eax              #  94    0x66695  3      
  subl %eax, %edx              #  95    0x66698  2      
  cmpl %ebx, %edx              #  96    0x6669a  2      
  cmoval %ebx, %edx            #  97    0x6669c  3      
  nop                          #  98    0x6669f  1      
  callq .memcpy                #  99    0x666a0  5      
  movl %r12d, %edi             #  100   0x666a5  3      
  nop                          #  101   0x666a8  1      
  nop                          #  102   0x666a9  1      
  callq .free                  #  103   0x666aa  5      
  jmpq .L_66600                #  104   0x666af  5      
  nop                          #  105   0x666b4  1      
  nop                          #  106   0x666b5  1      
.L_66780:                      #        0x666b6  0      
  movq 0x18(%rsp), %rbx        #  107   0x666b6  5      
  movq 0x20(%rsp), %r12        #  108   0x666bb  5      
  movl %esi, %edi              #  109   0x666c0  2      
  movq 0x28(%rsp), %r13        #  110   0x666c2  5      
  movq 0x30(%rsp), %r14        #  111   0x666c7  5      
  addl $0x38, %esp             #  112   0x666cc  3      
  addq %r15, %rsp              #  113   0x666cf  3      
  nop                          #  114   0x666d2  1      
  jmpq .malloc                 #  115   0x666d3  5      
  nop                          #  116   0x666d8  1      
  nop                          #  117   0x666d9  1      
.L_667c0:                      #        0x666da  0      
  nop                          #  118   0x666da  1      
  nop                          #  119   0x666db  1      
  callq .__errno               #  120   0x666dc  5      
  movl %eax, %eax              #  121   0x666e1  2      
  xorl %r13d, %r13d            #  122   0x666e3  3      
  movl %eax, %eax              #  123   0x666e6  2      
  movl $0xc, (%r15,%rax,1)     #  124   0x666e8  8      
  jmpq .L_66600                #  125   0x666f0  5      
  nop                          #  126   0x666f5  1      
                                                        
.size realloc, .-realloc

