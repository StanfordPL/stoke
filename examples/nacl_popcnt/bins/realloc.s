  .text
  .globl realloc
  .type realloc, @function

#! file-offset 0x665c0
#! rip-offset  0x665c0
#! capacity    704 bytes

# Text                         #  Line  RIP      Bytes  
.realloc:                      #        0x665c0  0      
  movq %r12, -0x18(%rsp)       #  1     0x665c0  5      
  movl %edi, %r12d             #  2     0x665c5  3      
  movq %rbx, -0x20(%rsp)       #  3     0x665c8  5      
  movq %r13, -0x10(%rsp)       #  4     0x665cd  5      
  movq %r14, -0x8(%rsp)        #  5     0x665d2  5      
  subl $0x38, %esp             #  6     0x665d7  3      
  addq %r15, %rsp              #  7     0x665da  3      
  testq %r12, %r12             #  8     0x665dd  3      
  movl %esi, %ebx              #  9     0x665e0  2      
  je .L_66800                  #  10    0x665e2  6      
  cmpl $0xffffffbf, %esi       #  11    0x665e8  6      
  ja .L_66840                  #  12    0x665ee  6      
  cmpl $0xa, %ebx              #  13    0x665f4  3      
  movl $0x10, %esi             #  14    0x665f7  5      
  ja .L_66720                  #  15    0x665fc  6      
  nop                          #  16    0x66602  1      
  testb $0x2, 0xffd0472(%rip)  #  17    0x66603  7      
  jne .L_666c0                 #  18    0x6660a  6      
  nop                          #  19    0x66610  1      
  nop                          #  20    0x66611  1      
.L_66620:                      #        0x66612  0      
  leal -0x8(%r12), %r14d       #  21    0x66612  5      
  movl $0x1, %edx              #  22    0x66617  5      
  movl %r14d, %edi             #  23    0x6661c  3      
  nop                          #  24    0x6661f  1      
  callq .T_276                 #  25    0x66620  5      
  testb $0x2, 0xffd0450(%rip)  #  26    0x66625  7      
  movl %eax, %r13d             #  27    0x6662c  3      
  jne .L_66740                 #  28    0x6662f  6      
  nop                          #  29    0x66635  1      
  nop                          #  30    0x66636  1      
.L_66660:                      #        0x66637  0      
  testq %r13, %r13             #  31    0x66637  3      
  je .L_66760                  #  32    0x6663a  6      
  addl $0x8, %r13d             #  33    0x66640  4      
  nop                          #  34    0x66644  1      
  nop                          #  35    0x66645  1      
.L_66680:                      #        0x66646  0      
  movl %r13d, %eax             #  36    0x66646  3      
  movq 0x18(%rsp), %rbx        #  37    0x66649  5      
  movq 0x20(%rsp), %r12        #  38    0x6664e  5      
  movq 0x28(%rsp), %r13        #  39    0x66653  5      
  movq 0x30(%rsp), %r14        #  40    0x66658  5      
  addl $0x38, %esp             #  41    0x6665d  3      
  addq %r15, %rsp              #  42    0x66660  3      
  popq %r11                    #  43    0x66663  3      
  nop                          #  44    0x66666  1      
  andl $0xffffffe0, %r11d      #  45    0x66667  7      
  addq %r15, %r11              #  46    0x6666e  3      
  jmpq %r11                    #  47    0x66671  3      
  nop                          #  48    0x66674  1      
  nop                          #  49    0x66675  1      
.L_666c0:                      #        0x66676  0      
  movl $0x1, %eax              #  50    0x66676  5      
  xchgl %eax, 0xffd03ff(%rip)  #  51    0x6667b  6      
  testl %eax, %eax             #  52    0x66681  2      
  je .L_66620                  #  53    0x66683  6      
  movl $0x10036a80, %edi       #  54    0x66689  5      
  movl %esi, 0x8(%rsp)         #  55    0x6668e  4      
  xorl %r13d, %r13d            #  56    0x66692  3      
  nop                          #  57    0x66695  1      
  nop                          #  58    0x66696  1      
  nop                          #  59    0x66697  1      
  callq .spin_acquire_lock     #  60    0x66698  5      
  testl %eax, %eax             #  61    0x6669d  2      
  movl 0x8(%rsp), %esi         #  62    0x6669f  4      
  je .L_66620                  #  63    0x666a3  6      
  jmpq .L_66680                #  64    0x666a9  5      
  nop                          #  65    0x666ae  1      
.L_66720:                      #        0x666af  0      
  leal 0xb(%rbx), %esi         #  66    0x666af  3      
  andl $0xfffffff8, %esi       #  67    0x666b2  6      
  testb $0x2, 0xffd03bd(%rip)  #  68    0x666b8  7      
  je .L_66620                  #  69    0x666bf  6      
  jmpq .L_666c0                #  70    0x666c5  5      
  nop                          #  71    0x666ca  1      
.L_66740:                      #        0x666cb  0      
  mfence                       #  72    0x666cb  3      
  movl $0x0, 0xffd03a8(%rip)   #  73    0x666ce  10     
  jmpq .L_66660                #  74    0x666d8  5      
  nop                          #  75    0x666dd  1      
.L_66760:                      #        0x666de  0      
  movl %ebx, %edi              #  76    0x666de  2      
  nop                          #  77    0x666e0  1      
  nop                          #  78    0x666e1  1      
  callq .malloc                #  79    0x666e2  5      
  movl %eax, %r13d             #  80    0x666e7  3      
  testq %r13, %r13             #  81    0x666ea  3      
  je .L_66680                  #  82    0x666ed  6      
  movl %r14d, %r14d            #  83    0x666f3  3      
  movl 0x4(%r15,%r14,1), %edx  #  84    0x666f6  5      
  movl %r13d, %edi             #  85    0x666fb  3      
  movl %r12d, %esi             #  86    0x666fe  3      
  movl %edx, %eax              #  87    0x66701  2      
  andl $0x3, %eax              #  88    0x66703  3      
  nop                          #  89    0x66706  1      
  cmpl $0x1, %eax              #  90    0x66707  3      
  sbbl %eax, %eax              #  91    0x6670a  2      
  andl $0xfffffff8, %edx       #  92    0x6670c  6      
  andl $0x4, %eax              #  93    0x66712  3      
  addl $0x4, %eax              #  94    0x66715  3      
  subl %eax, %edx              #  95    0x66718  2      
  cmpl %ebx, %edx              #  96    0x6671a  2      
  cmoval %ebx, %edx            #  97    0x6671c  3      
  nop                          #  98    0x6671f  1      
  callq .memcpy                #  99    0x66720  5      
  movl %r12d, %edi             #  100   0x66725  3      
  nop                          #  101   0x66728  1      
  nop                          #  102   0x66729  1      
  callq .free                  #  103   0x6672a  5      
  jmpq .L_66680                #  104   0x6672f  5      
  nop                          #  105   0x66734  1      
  nop                          #  106   0x66735  1      
.L_66800:                      #        0x66736  0      
  movq 0x18(%rsp), %rbx        #  107   0x66736  5      
  movq 0x20(%rsp), %r12        #  108   0x6673b  5      
  movl %esi, %edi              #  109   0x66740  2      
  movq 0x28(%rsp), %r13        #  110   0x66742  5      
  movq 0x30(%rsp), %r14        #  111   0x66747  5      
  addl $0x38, %esp             #  112   0x6674c  3      
  addq %r15, %rsp              #  113   0x6674f  3      
  nop                          #  114   0x66752  1      
  jmpq .malloc                 #  115   0x66753  5      
  nop                          #  116   0x66758  1      
  nop                          #  117   0x66759  1      
.L_66840:                      #        0x6675a  0      
  nop                          #  118   0x6675a  1      
  nop                          #  119   0x6675b  1      
  callq .__errno               #  120   0x6675c  5      
  movl %eax, %eax              #  121   0x66761  2      
  xorl %r13d, %r13d            #  122   0x66763  3      
  movl %eax, %eax              #  123   0x66766  2      
  movl $0xc, (%r15,%rax,1)     #  124   0x66768  8      
  jmpq .L_66680                #  125   0x66770  5      
  nop                          #  126   0x66775  1      
                                                        
.size realloc, .-realloc

