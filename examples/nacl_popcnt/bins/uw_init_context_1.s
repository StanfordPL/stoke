  .text
  .globl uw_init_context_1
  .type uw_init_context_1, @function

#! file-offset 0x5cd80
#! rip-offset  0x5cd80
#! capacity    608 bytes

# Text                            #  Line  RIP      Bytes  
.uw_init_context_1:               #        0x5cd80  0      
  movq %rbx, -0x20(%rsp)          #  1     0x5cd80  5      
  movl %edi, %ebx                 #  2     0x5cd85  2      
  xorl %eax, %eax                 #  3     0x5cd87  2      
  movl $0x12, %ecx                #  4     0x5cd89  5      
  movq %rbx, %rdi                 #  5     0x5cd8e  3      
  movq %r12, -0x18(%rsp)          #  6     0x5cd91  5      
  movq %r13, -0x10(%rsp)          #  7     0x5cd96  5      
  movq %r14, -0x8(%rsp)           #  8     0x5cd9b  5      
  subl $0x1a8, %esp               #  9     0x5cda0  6      
  addq %r15, %rsp                 #  10    0x5cda6  3      
  movl %edi, %edi                 #  11    0x5cda9  2      
  leaq (%r15,%rdi,1), %rdi        #  12    0x5cdab  4      
  rep stosq %es:(%rdi)            #  13    0x5cdaf  4      
  movl %edi, %edi                 #  14    0x5cdb3  2      
  movl %esi, %r13d                #  15    0x5cdb5  3      
  movl %ebx, %edi                 #  16    0x5cdb8  2      
  movl %esp, %esi                 #  17    0x5cdba  2      
  movl %edx, %r12d                #  18    0x5cdbc  3      
  xchgw %ax, %ax                  #  19    0x5cdbf  3      
  movl %esp, %r14d                #  20    0x5cdc2  3      
  movq 0x1a8(%rsp), %rax          #  21    0x5cdc5  8      
  movl %ebx, %ebx                 #  22    0x5cdcd  2      
  movl %eax, 0x4c(%r15,%rbx,1)    #  23    0x5cdcf  5      
  movq $0x4000000000000000, %rax  #  24    0x5cdd4  10     
  nop                             #  25    0x5cdde  1      
  movl %ebx, %ebx                 #  26    0x5cddf  2      
  movq %rax, 0x60(%r15,%rbx,1)    #  27    0x5cde1  5      
  nop                             #  28    0x5cde6  1      
  nop                             #  29    0x5cde7  1      
  callq .uw_frame_state_for       #  30    0x5cde8  5      
  testl %eax, %eax                #  31    0x5cded  2      
  jne .L_5cfc0                    #  32    0x5cdef  6      
  cmpb $0x0, 0xffd9a44(%rip)      #  33    0x5cdf5  7      
  jne .L_5cea0                    #  34    0x5cdfc  6      
  movb $0x8, 0xffd9a37(%rip)      #  35    0x5ce02  7      
  nop                             #  36    0x5ce09  1      
  movb $0x8, 0xffd9a30(%rip)      #  37    0x5ce0a  7      
  movb $0x8, 0xffd9a2a(%rip)      #  38    0x5ce11  7      
  movb $0x8, 0xffd9a24(%rip)      #  39    0x5ce18  7      
  movb $0x8, 0xffd9a1e(%rip)      #  40    0x5ce1f  7      
  nop                             #  41    0x5ce26  1      
  movb $0x8, 0xffd9a17(%rip)      #  42    0x5ce27  7      
  movb $0x8, 0xffd9a11(%rip)      #  43    0x5ce2e  7      
  movb $0x8, 0xffd9a0b(%rip)      #  44    0x5ce35  7      
  movb $0x8, 0xffd9a05(%rip)      #  45    0x5ce3c  7      
  nop                             #  46    0x5ce43  1      
  movb $0x8, 0xffd99fe(%rip)      #  47    0x5ce44  7      
  movb $0x8, 0xffd99f8(%rip)      #  48    0x5ce4b  7      
  movb $0x8, 0xffd99f2(%rip)      #  49    0x5ce52  7      
  movb $0x8, 0xffd99ec(%rip)      #  50    0x5ce59  7      
  nop                             #  51    0x5ce60  1      
  movb $0x8, 0xffd99e5(%rip)      #  52    0x5ce61  7      
  movb $0x8, 0xffd99df(%rip)      #  53    0x5ce68  7      
  movb $0x8, 0xffd99d9(%rip)      #  54    0x5ce6f  7      
  movb $0x8, 0xffd99d3(%rip)      #  55    0x5ce76  7      
  nop                             #  56    0x5ce7d  1      
.L_5cea0:                         #        0x5ce7e  0      
  movzbl 0xffd99c2(%rip), %eax    #  57    0x5ce7e  7      
  cmpl $0x4, %eax                 #  58    0x5ce85  3      
  je .L_5cfa0                     #  59    0x5ce88  6      
  cmpl $0x8, %eax                 #  60    0x5ce8e  3      
  jne .L_5cfc0                    #  61    0x5ce91  6      
  nop                             #  62    0x5ce97  1      
  movq %r13, 0x170(%rsp)          #  63    0x5ce98  8      
  nop                             #  64    0x5cea0  1      
  nop                             #  65    0x5cea1  1      
.L_5cee0:                         #        0x5cea2  0      
  movl %ebx, %ebx                 #  66    0x5cea2  2      
  testb $0x40, 0x67(%r15,%rbx,1)  #  67    0x5cea4  6      
  je .L_5cf00                     #  68    0x5ceaa  6      
  movl %ebx, %ebx                 #  69    0x5ceb0  2      
  movb $0x0, 0x7f(%r15,%rbx,1)    #  70    0x5ceb2  6      
  nop                             #  71    0x5ceb8  1      
.L_5cf00:                         #        0x5ceb9  0      
  leal 0x170(%rsp), %eax          #  72    0x5ceb9  7      
  movl %r14d, %esi                #  73    0x5cec0  3      
  movl %ebx, %edi                 #  74    0x5cec3  2      
  movl $0x1, 0x13c(%rsp)          #  75    0x5cec5  11     
  nop                             #  76    0x5ced0  1      
  movq $0x7, 0x130(%rsp)          #  77    0x5ced1  12     
  movl %ebx, %ebx                 #  78    0x5cedd  2      
  movl %eax, 0x1c(%r15,%rbx,1)    #  79    0x5cedf  5      
  movq $0x0, 0x128(%rsp)          #  80    0x5cee4  12     
  nop                             #  81    0x5cef0  1      
  nop                             #  82    0x5cef1  1      
  nop                             #  83    0x5cef2  1      
  callq .uw_update_context_1      #  84    0x5cef3  5      
  movl %ebx, %ebx                 #  85    0x5cef8  2      
  movl %r12d, 0x4c(%r15,%rbx,1)   #  86    0x5cefa  5      
  movq 0x198(%rsp), %r13          #  87    0x5ceff  8      
  movq 0x188(%rsp), %rbx          #  88    0x5cf07  8      
  movq 0x190(%rsp), %r12          #  89    0x5cf0f  8      
  nop                             #  90    0x5cf17  1      
  movq 0x1a0(%rsp), %r14          #  91    0x5cf18  8      
  addl $0x1a8, %esp               #  92    0x5cf20  6      
  addq %r15, %rsp                 #  93    0x5cf26  3      
  popq %r11                       #  94    0x5cf29  3      
  andl $0xffffffe0, %r11d         #  95    0x5cf2c  7      
  addq %r15, %r11                 #  96    0x5cf33  3      
  jmpq %r11                       #  97    0x5cf36  3      
  nop                             #  98    0x5cf39  1      
.L_5cfa0:                         #        0x5cf3a  0      
  movl %r13d, 0x170(%rsp)         #  99    0x5cf3a  8      
  jmpq .L_5cee0                   #  100   0x5cf42  5      
  nop                             #  101   0x5cf47  1      
  nop                             #  102   0x5cf48  1      
.L_5cfc0:                         #        0x5cf49  0      
  nop                             #  103   0x5cf49  1      
  nop                             #  104   0x5cf4a  1      
  callq .abort                    #  105   0x5cf4b  5      
                                                           
.size uw_init_context_1, .-uw_init_context_1

