  .text
  .globl d_exprlist
  .type d_exprlist, @function

#! file-offset 0x54460
#! rip-offset  0x54460
#! capacity    384 bytes

# Text                         #  Line  RIP      Bytes  
.d_exprlist:                   #        0x54460  0      
  pushq %r12                   #  1     0x54460  3      
  pushq %rbx                   #  2     0x54463  2      
  movl %edi, %ebx              #  3     0x54465  2      
  subl $0x18, %esp             #  4     0x54467  3      
  addq %r15, %rsp              #  5     0x5446a  3      
  movl %ebx, %ebx              #  6     0x5446d  2      
  movl 0xc(%r15,%rbx,1), %eax  #  7     0x5446f  5      
  movl $0x0, 0xc(%rsp)         #  8     0x54474  8      
  nop                          #  9     0x5447c  1      
  movl %eax, %eax              #  10    0x5447d  2      
  cmpb $0x45, (%r15,%rax,1)    #  11    0x5447f  5      
  jne .L_544e0                 #  12    0x54484  6      
  addl $0x1, %eax              #  13    0x5448a  3      
  movl %ebx, %edi              #  14    0x5448d  2      
  xorl %ecx, %ecx              #  15    0x5448f  2      
  movl %ebx, %ebx              #  16    0x54491  2      
  movl %eax, 0xc(%r15,%rbx,1)  #  17    0x54493  5      
  xorl %edx, %edx              #  18    0x54498  2      
  movl $0x29, %esi             #  19    0x5449a  5      
  xchgw %ax, %ax               #  20    0x5449f  3      
  nop                          #  21    0x544a2  1      
  nop                          #  22    0x544a3  1      
  callq .d_make_comp           #  23    0x544a4  5      
  addl $0x18, %esp             #  24    0x544a9  3      
  addq %r15, %rsp              #  25    0x544ac  3      
  movl %eax, %eax              #  26    0x544af  2      
  popq %rbx                    #  27    0x544b1  2      
  popq %r12                    #  28    0x544b3  3      
  popq %r11                    #  29    0x544b6  3      
  andl $0xffffffe0, %r11d      #  30    0x544b9  7      
  addq %r15, %r11              #  31    0x544c0  3      
  jmpq %r11                    #  32    0x544c3  3      
  nop                          #  33    0x544c6  1      
.L_544e0:                      #        0x544c7  0      
  leal 0xc(%rsp), %r12d        #  34    0x544c7  5      
  jmpq .L_54520                #  35    0x544cc  5      
  nop                          #  36    0x544d1  1      
  nop                          #  37    0x544d2  1      
.L_54500:                      #        0x544d3  0      
  leal 0x8(%rax), %r12d        #  38    0x544d3  4      
  nop                          #  39    0x544d7  1      
  nop                          #  40    0x544d8  1      
.L_54520:                      #        0x544d9  0      
  movl %ebx, %edi              #  41    0x544d9  2      
  nop                          #  42    0x544db  1      
  nop                          #  43    0x544dc  1      
  callq .d_expression          #  44    0x544dd  5      
  movl %eax, %edx              #  45    0x544e2  2      
  testq %rdx, %rdx             #  46    0x544e4  3      
  je .L_545c0                  #  47    0x544e7  6      
  xorl %ecx, %ecx              #  48    0x544ed  2      
  movl $0x29, %esi             #  49    0x544ef  5      
  movl %ebx, %edi              #  50    0x544f4  2      
  nop                          #  51    0x544f6  1      
  callq .d_make_comp           #  52    0x544f7  5      
  movl %eax, %eax              #  53    0x544fc  2      
  testq %rax, %rax             #  54    0x544fe  3      
  movl %r12d, %r12d            #  55    0x54501  3      
  movl %eax, (%r15,%r12,1)     #  56    0x54504  4      
  je .L_545c0                  #  57    0x54508  6      
  movl %ebx, %ebx              #  58    0x5450e  2      
  movl 0xc(%r15,%rbx,1), %edx  #  59    0x54510  5      
  movl %edx, %edx              #  60    0x54515  2      
  cmpb $0x45, (%r15,%rdx,1)    #  61    0x54517  5      
  nop                          #  62    0x5451c  1      
  jne .L_54500                 #  63    0x5451d  6      
  addl $0x1, %edx              #  64    0x54523  3      
  movl 0xc(%rsp), %eax         #  65    0x54526  4      
  movl %ebx, %ebx              #  66    0x5452a  2      
  movl %edx, 0xc(%r15,%rbx,1)  #  67    0x5452c  5      
  addl $0x18, %esp             #  68    0x54531  3      
  addq %r15, %rsp              #  69    0x54534  3      
  popq %rbx                    #  70    0x54537  2      
  popq %r12                    #  71    0x54539  3      
  popq %r11                    #  72    0x5453c  3      
  nop                          #  73    0x5453f  1      
  andl $0xffffffe0, %r11d      #  74    0x54540  7      
  addq %r15, %r11              #  75    0x54547  3      
  jmpq %r11                    #  76    0x5454a  3      
  nop                          #  77    0x5454d  1      
  nop                          #  78    0x5454e  1      
.L_545c0:                      #        0x5454f  0      
  addl $0x18, %esp             #  79    0x5454f  3      
  addq %r15, %rsp              #  80    0x54552  3      
  xorl %eax, %eax              #  81    0x54555  2      
  popq %rbx                    #  82    0x54557  2      
  popq %r12                    #  83    0x54559  3      
  popq %r11                    #  84    0x5455c  3      
  andl $0xffffffe0, %r11d      #  85    0x5455f  7      
  addq %r15, %r11              #  86    0x54566  3      
  jmpq %r11                    #  87    0x54569  3      
  nop                          #  88    0x5456c  1      
                                                        
.size d_exprlist, .-d_exprlist

