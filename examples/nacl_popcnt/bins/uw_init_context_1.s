  .text
  .globl uw_init_context_1
  .type uw_init_context_1, @function

#! file-offset 0x5cda0
#! rip-offset  0x5cda0
#! capacity    608 bytes

# Text                            #  Line  RIP      Bytes  
.uw_init_context_1:               #        0x5cda0  0      
  movq %rbx, -0x20(%rsp)          #  1     0x5cda0  5      
  movl %edi, %ebx                 #  2     0x5cda5  2      
  xorl %eax, %eax                 #  3     0x5cda7  2      
  movl $0x12, %ecx                #  4     0x5cda9  5      
  movq %rbx, %rdi                 #  5     0x5cdae  3      
  movq %r12, -0x18(%rsp)          #  6     0x5cdb1  5      
  movq %r13, -0x10(%rsp)          #  7     0x5cdb6  5      
  movq %r14, -0x8(%rsp)           #  8     0x5cdbb  5      
  subl $0x1a8, %esp               #  9     0x5cdc0  6      
  addq %r15, %rsp                 #  10    0x5cdc6  3      
  movl %edi, %edi                 #  11    0x5cdc9  2      
  leaq (%r15,%rdi,1), %rdi        #  12    0x5cdcb  4      
  rep stosq %es:(%rdi)            #  13    0x5cdcf  4      
  movl %edi, %edi                 #  14    0x5cdd3  2      
  movl %esi, %r13d                #  15    0x5cdd5  3      
  movl %ebx, %edi                 #  16    0x5cdd8  2      
  movl %esp, %esi                 #  17    0x5cdda  2      
  movl %edx, %r12d                #  18    0x5cddc  3      
  xchgw %ax, %ax                  #  19    0x5cddf  3      
  movl %esp, %r14d                #  20    0x5cde2  3      
  movq 0x1a8(%rsp), %rax          #  21    0x5cde5  8      
  movl %ebx, %ebx                 #  22    0x5cded  2      
  movl %eax, 0x4c(%r15,%rbx,1)    #  23    0x5cdef  5      
  movq $0x4000000000000000, %rax  #  24    0x5cdf4  10     
  nop                             #  25    0x5cdfe  1      
  movl %ebx, %ebx                 #  26    0x5cdff  2      
  movq %rax, 0x60(%r15,%rbx,1)    #  27    0x5ce01  5      
  nop                             #  28    0x5ce06  1      
  nop                             #  29    0x5ce07  1      
  callq .uw_frame_state_for       #  30    0x5ce08  5      
  testl %eax, %eax                #  31    0x5ce0d  2      
  jne .L_5cfe0                    #  32    0x5ce0f  6      
  cmpb $0x0, 0xffd9a24(%rip)      #  33    0x5ce15  7      
  jne .L_5cec0                    #  34    0x5ce1c  6      
  movb $0x8, 0xffd9a17(%rip)      #  35    0x5ce22  7      
  nop                             #  36    0x5ce29  1      
  movb $0x8, 0xffd9a10(%rip)      #  37    0x5ce2a  7      
  movb $0x8, 0xffd9a0a(%rip)      #  38    0x5ce31  7      
  movb $0x8, 0xffd9a04(%rip)      #  39    0x5ce38  7      
  movb $0x8, 0xffd99fe(%rip)      #  40    0x5ce3f  7      
  nop                             #  41    0x5ce46  1      
  movb $0x8, 0xffd99f7(%rip)      #  42    0x5ce47  7      
  movb $0x8, 0xffd99f1(%rip)      #  43    0x5ce4e  7      
  movb $0x8, 0xffd99eb(%rip)      #  44    0x5ce55  7      
  movb $0x8, 0xffd99e5(%rip)      #  45    0x5ce5c  7      
  nop                             #  46    0x5ce63  1      
  movb $0x8, 0xffd99de(%rip)      #  47    0x5ce64  7      
  movb $0x8, 0xffd99d8(%rip)      #  48    0x5ce6b  7      
  movb $0x8, 0xffd99d2(%rip)      #  49    0x5ce72  7      
  movb $0x8, 0xffd99cc(%rip)      #  50    0x5ce79  7      
  nop                             #  51    0x5ce80  1      
  movb $0x8, 0xffd99c5(%rip)      #  52    0x5ce81  7      
  movb $0x8, 0xffd99bf(%rip)      #  53    0x5ce88  7      
  movb $0x8, 0xffd99b9(%rip)      #  54    0x5ce8f  7      
  movb $0x8, 0xffd99b3(%rip)      #  55    0x5ce96  7      
  nop                             #  56    0x5ce9d  1      
.L_5cec0:                         #        0x5ce9e  0      
  movzbl 0xffd99a2(%rip), %eax    #  57    0x5ce9e  7      
  cmpl $0x4, %eax                 #  58    0x5cea5  3      
  je .L_5cfc0                     #  59    0x5cea8  6      
  cmpl $0x8, %eax                 #  60    0x5ceae  3      
  jne .L_5cfe0                    #  61    0x5ceb1  6      
  nop                             #  62    0x5ceb7  1      
  movq %r13, 0x170(%rsp)          #  63    0x5ceb8  8      
  nop                             #  64    0x5cec0  1      
  nop                             #  65    0x5cec1  1      
.L_5cf00:                         #        0x5cec2  0      
  movl %ebx, %ebx                 #  66    0x5cec2  2      
  testb $0x40, 0x67(%r15,%rbx,1)  #  67    0x5cec4  6      
  je .L_5cf20                     #  68    0x5ceca  6      
  movl %ebx, %ebx                 #  69    0x5ced0  2      
  movb $0x0, 0x7f(%r15,%rbx,1)    #  70    0x5ced2  6      
  nop                             #  71    0x5ced8  1      
.L_5cf20:                         #        0x5ced9  0      
  leal 0x170(%rsp), %eax          #  72    0x5ced9  7      
  movl %r14d, %esi                #  73    0x5cee0  3      
  movl %ebx, %edi                 #  74    0x5cee3  2      
  movl $0x1, 0x13c(%rsp)          #  75    0x5cee5  11     
  nop                             #  76    0x5cef0  1      
  movq $0x7, 0x130(%rsp)          #  77    0x5cef1  12     
  movl %ebx, %ebx                 #  78    0x5cefd  2      
  movl %eax, 0x1c(%r15,%rbx,1)    #  79    0x5ceff  5      
  movq $0x0, 0x128(%rsp)          #  80    0x5cf04  12     
  nop                             #  81    0x5cf10  1      
  nop                             #  82    0x5cf11  1      
  nop                             #  83    0x5cf12  1      
  callq .uw_update_context_1      #  84    0x5cf13  5      
  movl %ebx, %ebx                 #  85    0x5cf18  2      
  movl %r12d, 0x4c(%r15,%rbx,1)   #  86    0x5cf1a  5      
  movq 0x198(%rsp), %r13          #  87    0x5cf1f  8      
  movq 0x188(%rsp), %rbx          #  88    0x5cf27  8      
  movq 0x190(%rsp), %r12          #  89    0x5cf2f  8      
  nop                             #  90    0x5cf37  1      
  movq 0x1a0(%rsp), %r14          #  91    0x5cf38  8      
  addl $0x1a8, %esp               #  92    0x5cf40  6      
  addq %r15, %rsp                 #  93    0x5cf46  3      
  popq %r11                       #  94    0x5cf49  3      
  andl $0xffffffe0, %r11d         #  95    0x5cf4c  7      
  addq %r15, %r11                 #  96    0x5cf53  3      
  jmpq %r11                       #  97    0x5cf56  3      
  nop                             #  98    0x5cf59  1      
.L_5cfc0:                         #        0x5cf5a  0      
  movl %r13d, 0x170(%rsp)         #  99    0x5cf5a  8      
  jmpq .L_5cf00                   #  100   0x5cf62  5      
  nop                             #  101   0x5cf67  1      
  nop                             #  102   0x5cf68  1      
.L_5cfe0:                         #        0x5cf69  0      
  nop                             #  103   0x5cf69  1      
  nop                             #  104   0x5cf6a  1      
  callq .abort                    #  105   0x5cf6b  5      
                                                           
.size uw_init_context_1, .-uw_init_context_1

