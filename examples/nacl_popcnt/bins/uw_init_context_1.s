  .text
  .globl uw_init_context_1
  .type uw_init_context_1, @function

#! file-offset 0x5ce20
#! rip-offset  0x5ce20
#! capacity    608 bytes

# Text                            #  Line  RIP      Bytes  
.uw_init_context_1:               #        0x5ce20  0      
  movq %rbx, -0x20(%rsp)          #  1     0x5ce20  5      
  movl %edi, %ebx                 #  2     0x5ce25  2      
  xorl %eax, %eax                 #  3     0x5ce27  2      
  movl $0x12, %ecx                #  4     0x5ce29  5      
  movq %rbx, %rdi                 #  5     0x5ce2e  3      
  movq %r12, -0x18(%rsp)          #  6     0x5ce31  5      
  movq %r13, -0x10(%rsp)          #  7     0x5ce36  5      
  movq %r14, -0x8(%rsp)           #  8     0x5ce3b  5      
  subl $0x1a8, %esp               #  9     0x5ce40  6      
  addq %r15, %rsp                 #  10    0x5ce46  3      
  movl %edi, %edi                 #  11    0x5ce49  2      
  leaq (%r15,%rdi,1), %rdi        #  12    0x5ce4b  4      
  rep stosq %es:(%rdi)            #  13    0x5ce4f  4      
  movl %edi, %edi                 #  14    0x5ce53  2      
  movl %esi, %r13d                #  15    0x5ce55  3      
  movl %ebx, %edi                 #  16    0x5ce58  2      
  movl %esp, %esi                 #  17    0x5ce5a  2      
  movl %edx, %r12d                #  18    0x5ce5c  3      
  xchgw %ax, %ax                  #  19    0x5ce5f  3      
  movl %esp, %r14d                #  20    0x5ce62  3      
  movq 0x1a8(%rsp), %rax          #  21    0x5ce65  8      
  movl %ebx, %ebx                 #  22    0x5ce6d  2      
  movl %eax, 0x4c(%r15,%rbx,1)    #  23    0x5ce6f  5      
  movq $0x4000000000000000, %rax  #  24    0x5ce74  10     
  nop                             #  25    0x5ce7e  1      
  movl %ebx, %ebx                 #  26    0x5ce7f  2      
  movq %rax, 0x60(%r15,%rbx,1)    #  27    0x5ce81  5      
  nop                             #  28    0x5ce86  1      
  nop                             #  29    0x5ce87  1      
  callq .uw_frame_state_for       #  30    0x5ce88  5      
  testl %eax, %eax                #  31    0x5ce8d  2      
  jne .L_5d060                    #  32    0x5ce8f  6      
  cmpb $0x0, 0xffd99a4(%rip)      #  33    0x5ce95  7      
  jne .L_5cf40                    #  34    0x5ce9c  6      
  movb $0x8, 0xffd9997(%rip)      #  35    0x5cea2  7      
  nop                             #  36    0x5cea9  1      
  movb $0x8, 0xffd9990(%rip)      #  37    0x5ceaa  7      
  movb $0x8, 0xffd998a(%rip)      #  38    0x5ceb1  7      
  movb $0x8, 0xffd9984(%rip)      #  39    0x5ceb8  7      
  movb $0x8, 0xffd997e(%rip)      #  40    0x5cebf  7      
  nop                             #  41    0x5cec6  1      
  movb $0x8, 0xffd9977(%rip)      #  42    0x5cec7  7      
  movb $0x8, 0xffd9971(%rip)      #  43    0x5cece  7      
  movb $0x8, 0xffd996b(%rip)      #  44    0x5ced5  7      
  movb $0x8, 0xffd9965(%rip)      #  45    0x5cedc  7      
  nop                             #  46    0x5cee3  1      
  movb $0x8, 0xffd995e(%rip)      #  47    0x5cee4  7      
  movb $0x8, 0xffd9958(%rip)      #  48    0x5ceeb  7      
  movb $0x8, 0xffd9952(%rip)      #  49    0x5cef2  7      
  movb $0x8, 0xffd994c(%rip)      #  50    0x5cef9  7      
  nop                             #  51    0x5cf00  1      
  movb $0x8, 0xffd9945(%rip)      #  52    0x5cf01  7      
  movb $0x8, 0xffd993f(%rip)      #  53    0x5cf08  7      
  movb $0x8, 0xffd9939(%rip)      #  54    0x5cf0f  7      
  movb $0x8, 0xffd9933(%rip)      #  55    0x5cf16  7      
  nop                             #  56    0x5cf1d  1      
.L_5cf40:                         #        0x5cf1e  0      
  movzbl 0xffd9922(%rip), %eax    #  57    0x5cf1e  7      
  cmpl $0x4, %eax                 #  58    0x5cf25  3      
  je .L_5d040                     #  59    0x5cf28  6      
  cmpl $0x8, %eax                 #  60    0x5cf2e  3      
  jne .L_5d060                    #  61    0x5cf31  6      
  nop                             #  62    0x5cf37  1      
  movq %r13, 0x170(%rsp)          #  63    0x5cf38  8      
  nop                             #  64    0x5cf40  1      
  nop                             #  65    0x5cf41  1      
.L_5cf80:                         #        0x5cf42  0      
  movl %ebx, %ebx                 #  66    0x5cf42  2      
  testb $0x40, 0x67(%r15,%rbx,1)  #  67    0x5cf44  6      
  je .L_5cfa0                     #  68    0x5cf4a  6      
  movl %ebx, %ebx                 #  69    0x5cf50  2      
  movb $0x0, 0x7f(%r15,%rbx,1)    #  70    0x5cf52  6      
  nop                             #  71    0x5cf58  1      
.L_5cfa0:                         #        0x5cf59  0      
  leal 0x170(%rsp), %eax          #  72    0x5cf59  7      
  movl %r14d, %esi                #  73    0x5cf60  3      
  movl %ebx, %edi                 #  74    0x5cf63  2      
  movl $0x1, 0x13c(%rsp)          #  75    0x5cf65  11     
  nop                             #  76    0x5cf70  1      
  movq $0x7, 0x130(%rsp)          #  77    0x5cf71  12     
  movl %ebx, %ebx                 #  78    0x5cf7d  2      
  movl %eax, 0x1c(%r15,%rbx,1)    #  79    0x5cf7f  5      
  movq $0x0, 0x128(%rsp)          #  80    0x5cf84  12     
  nop                             #  81    0x5cf90  1      
  nop                             #  82    0x5cf91  1      
  nop                             #  83    0x5cf92  1      
  callq .uw_update_context_1      #  84    0x5cf93  5      
  movl %ebx, %ebx                 #  85    0x5cf98  2      
  movl %r12d, 0x4c(%r15,%rbx,1)   #  86    0x5cf9a  5      
  movq 0x198(%rsp), %r13          #  87    0x5cf9f  8      
  movq 0x188(%rsp), %rbx          #  88    0x5cfa7  8      
  movq 0x190(%rsp), %r12          #  89    0x5cfaf  8      
  nop                             #  90    0x5cfb7  1      
  movq 0x1a0(%rsp), %r14          #  91    0x5cfb8  8      
  addl $0x1a8, %esp               #  92    0x5cfc0  6      
  addq %r15, %rsp                 #  93    0x5cfc6  3      
  popq %r11                       #  94    0x5cfc9  3      
  andl $0xffffffe0, %r11d         #  95    0x5cfcc  7      
  addq %r15, %r11                 #  96    0x5cfd3  3      
  jmpq %r11                       #  97    0x5cfd6  3      
  nop                             #  98    0x5cfd9  1      
.L_5d040:                         #        0x5cfda  0      
  movl %r13d, 0x170(%rsp)         #  99    0x5cfda  8      
  jmpq .L_5cf80                   #  100   0x5cfe2  5      
  nop                             #  101   0x5cfe7  1      
  nop                             #  102   0x5cfe8  1      
.L_5d060:                         #        0x5cfe9  0      
  nop                             #  103   0x5cfe9  1      
  nop                             #  104   0x5cfea  1      
  callq .abort                    #  105   0x5cfeb  5      
                                                           
.size uw_init_context_1, .-uw_init_context_1

