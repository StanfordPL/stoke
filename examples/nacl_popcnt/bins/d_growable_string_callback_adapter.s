  .text
  .globl d_growable_string_callback_adapter
  .type d_growable_string_callback_adapter, @function

#! file-offset 0x54540
#! rip-offset  0x54540
#! capacity    512 bytes

# Text                                #  Line  RIP      Bytes  
.d_growable_string_callback_adapter:  #        0x54540  0      
  movq %rbx, -0x20(%rsp)              #  1     0x54540  5      
  movl %edx, %ebx                     #  2     0x54545  2      
  movq %r12, -0x18(%rsp)              #  3     0x54547  5      
  movq %r13, -0x10(%rsp)              #  4     0x5454c  5      
  movq %r14, -0x8(%rsp)               #  5     0x54551  5      
  subl $0x28, %esp                    #  6     0x54556  3      
  addq %r15, %rsp                     #  7     0x54559  3      
  nop                                 #  8     0x5455c  1      
  movl %ebx, %ebx                     #  9     0x5455d  2      
  movl 0x4(%r15,%rbx,1), %eax         #  10    0x5455f  5      
  movl %esi, %r12d                    #  11    0x54564  3      
  movl %ebx, %ebx                     #  12    0x54567  2      
  movl 0x8(%r15,%rbx,1), %r14d        #  13    0x54569  5      
  movl %edi, %r13d                    #  14    0x5456e  3      
  leal 0x1(%r12,%rax,1), %eax         #  15    0x54571  5      
  cmpl %r14d, %eax                    #  16    0x54576  3      
  nop                                 #  17    0x54579  1      
  ja .L_54660                         #  18    0x5457a  6      
  nop                                 #  19    0x54580  1      
  nop                                 #  20    0x54581  1      
.L_545a0:                             #        0x54582  0      
  movl %ebx, %ebx                     #  21    0x54582  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  22    0x54584  5      
  testl %ecx, %ecx                    #  23    0x54589  2      
  je .L_54600                         #  24    0x5458b  6      
  nop                                 #  25    0x54591  1      
  nop                                 #  26    0x54592  1      
.L_545c0:                             #        0x54593  0      
  movq 0x8(%rsp), %rbx                #  27    0x54593  5      
  movq 0x10(%rsp), %r12               #  28    0x54598  5      
  movq 0x18(%rsp), %r13               #  29    0x5459d  5      
  movq 0x20(%rsp), %r14               #  30    0x545a2  5      
  addl $0x28, %esp                    #  31    0x545a7  3      
  addq %r15, %rsp                     #  32    0x545aa  3      
  popq %r11                           #  33    0x545ad  3      
  nop                                 #  34    0x545b0  1      
  andl $0xffffffe0, %r11d             #  35    0x545b1  7      
  addq %r15, %r11                     #  36    0x545b8  3      
  jmpq %r11                           #  37    0x545bb  3      
  nop                                 #  38    0x545be  1      
  nop                                 #  39    0x545bf  1      
.L_54600:                             #        0x545c0  0      
  movl %ebx, %ebx                     #  40    0x545c0  2      
  movl (%r15,%rbx,1), %edi            #  41    0x545c2  4      
  movl %ebx, %ebx                     #  42    0x545c6  2      
  addl 0x4(%r15,%rbx,1), %edi         #  43    0x545c8  5      
  movl %r12d, %edx                    #  44    0x545cd  3      
  movl %r13d, %esi                    #  45    0x545d0  3      
  nop                                 #  46    0x545d3  1      
  callq .memcpy                       #  47    0x545d4  5      
  movl %ebx, %ebx                     #  48    0x545d9  2      
  movl (%r15,%rbx,1), %eax            #  49    0x545db  4      
  addl %r12d, %eax                    #  50    0x545df  3      
  movl %ebx, %ebx                     #  51    0x545e2  2      
  addl 0x4(%r15,%rbx,1), %eax         #  52    0x545e4  5      
  movl %eax, %eax                     #  53    0x545e9  2      
  movb $0x0, (%r15,%rax,1)            #  54    0x545eb  5      
  movl %ebx, %ebx                     #  55    0x545f0  2      
  addl %r12d, 0x4(%r15,%rbx,1)        #  56    0x545f2  5      
  xchgw %ax, %ax                      #  57    0x545f7  3      
  jmpq .L_545c0                       #  58    0x545fa  5      
  nop                                 #  59    0x545ff  1      
  nop                                 #  60    0x54600  1      
.L_54660:                             #        0x54601  0      
  movl %ebx, %ebx                     #  61    0x54601  2      
  movl 0xc(%r15,%rbx,1), %esi         #  62    0x54603  5      
  testl %esi, %esi                    #  63    0x54608  2      
  jne .L_545c0                        #  64    0x5460a  6      
  testl %r14d, %r14d                  #  65    0x54610  3      
  jne .L_54680                        #  66    0x54613  6      
  cmpl $0x2, %eax                     #  67    0x54619  3      
  movb $0x2, %r14b                    #  68    0x5461c  3      
  jbe .L_546a0                        #  69    0x5461f  6      
  nop                                 #  70    0x54625  1      
.L_54680:                             #        0x54626  0      
  addl %r14d, %r14d                   #  71    0x54626  3      
  cmpl %r14d, %eax                    #  72    0x54629  3      
  ja .L_54680                         #  73    0x5462c  6      
  nop                                 #  74    0x54632  1      
  nop                                 #  75    0x54633  1      
.L_546a0:                             #        0x54634  0      
  movl %ebx, %ebx                     #  76    0x54634  2      
  movl (%r15,%rbx,1), %edi            #  77    0x54636  4      
  movl %r14d, %esi                    #  78    0x5463a  3      
  nop                                 #  79    0x5463d  1      
  nop                                 #  80    0x5463e  1      
  callq .realloc                      #  81    0x5463f  5      
  movl %eax, %eax                     #  82    0x54644  2      
  testq %rax, %rax                    #  83    0x54646  3      
  je .L_546e0                         #  84    0x54649  6      
  movl %ebx, %ebx                     #  85    0x5464f  2      
  movl %eax, (%r15,%rbx,1)            #  86    0x54651  4      
  movl %ebx, %ebx                     #  87    0x54655  2      
  movl %r14d, 0x8(%r15,%rbx,1)        #  88    0x54657  5      
  jmpq .L_545a0                       #  89    0x5465c  5      
  nop                                 #  90    0x54661  1      
.L_546e0:                             #        0x54662  0      
  movl %ebx, %ebx                     #  91    0x54662  2      
  movl (%r15,%rbx,1), %edi            #  92    0x54664  4      
  nop                                 #  93    0x54668  1      
  nop                                 #  94    0x54669  1      
  callq .free                         #  95    0x5466a  5      
  movl %ebx, %ebx                     #  96    0x5466f  2      
  movl $0x0, (%r15,%rbx,1)            #  97    0x54671  8      
  movl %ebx, %ebx                     #  98    0x54679  2      
  movl $0x0, 0x4(%r15,%rbx,1)         #  99    0x5467b  9      
  movl %ebx, %ebx                     #  100   0x54684  2      
  movl $0x0, 0x8(%r15,%rbx,1)         #  101   0x54686  9      
  movl %ebx, %ebx                     #  102   0x5468f  2      
  movl $0x1, 0xc(%r15,%rbx,1)         #  103   0x54691  9      
  jmpq .L_545c0                       #  104   0x5469a  5      
  nop                                 #  105   0x5469f  1      
  nop                                 #  106   0x546a0  1      
                                                               
.size d_growable_string_callback_adapter, .-d_growable_string_callback_adapter

