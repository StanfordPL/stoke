  .text
  .globl d_growable_string_callback_adapter
  .type d_growable_string_callback_adapter, @function

#! file-offset 0x54560
#! rip-offset  0x54560
#! capacity    512 bytes

# Text                                #  Line  RIP      Bytes  
.d_growable_string_callback_adapter:  #        0x54560  0      
  movq %rbx, -0x20(%rsp)              #  1     0x54560  5      
  movl %edx, %ebx                     #  2     0x54565  2      
  movq %r12, -0x18(%rsp)              #  3     0x54567  5      
  movq %r13, -0x10(%rsp)              #  4     0x5456c  5      
  movq %r14, -0x8(%rsp)               #  5     0x54571  5      
  subl $0x28, %esp                    #  6     0x54576  3      
  addq %r15, %rsp                     #  7     0x54579  3      
  nop                                 #  8     0x5457c  1      
  movl %ebx, %ebx                     #  9     0x5457d  2      
  movl 0x4(%r15,%rbx,1), %eax         #  10    0x5457f  5      
  movl %esi, %r12d                    #  11    0x54584  3      
  movl %ebx, %ebx                     #  12    0x54587  2      
  movl 0x8(%r15,%rbx,1), %r14d        #  13    0x54589  5      
  movl %edi, %r13d                    #  14    0x5458e  3      
  leal 0x1(%r12,%rax,1), %eax         #  15    0x54591  5      
  cmpl %r14d, %eax                    #  16    0x54596  3      
  nop                                 #  17    0x54599  1      
  ja .L_54680                         #  18    0x5459a  6      
  nop                                 #  19    0x545a0  1      
  nop                                 #  20    0x545a1  1      
.L_545c0:                             #        0x545a2  0      
  movl %ebx, %ebx                     #  21    0x545a2  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  22    0x545a4  5      
  testl %ecx, %ecx                    #  23    0x545a9  2      
  je .L_54620                         #  24    0x545ab  6      
  nop                                 #  25    0x545b1  1      
  nop                                 #  26    0x545b2  1      
.L_545e0:                             #        0x545b3  0      
  movq 0x8(%rsp), %rbx                #  27    0x545b3  5      
  movq 0x10(%rsp), %r12               #  28    0x545b8  5      
  movq 0x18(%rsp), %r13               #  29    0x545bd  5      
  movq 0x20(%rsp), %r14               #  30    0x545c2  5      
  addl $0x28, %esp                    #  31    0x545c7  3      
  addq %r15, %rsp                     #  32    0x545ca  3      
  popq %r11                           #  33    0x545cd  3      
  nop                                 #  34    0x545d0  1      
  andl $0xffffffe0, %r11d             #  35    0x545d1  7      
  addq %r15, %r11                     #  36    0x545d8  3      
  jmpq %r11                           #  37    0x545db  3      
  nop                                 #  38    0x545de  1      
  nop                                 #  39    0x545df  1      
.L_54620:                             #        0x545e0  0      
  movl %ebx, %ebx                     #  40    0x545e0  2      
  movl (%r15,%rbx,1), %edi            #  41    0x545e2  4      
  movl %ebx, %ebx                     #  42    0x545e6  2      
  addl 0x4(%r15,%rbx,1), %edi         #  43    0x545e8  5      
  movl %r12d, %edx                    #  44    0x545ed  3      
  movl %r13d, %esi                    #  45    0x545f0  3      
  nop                                 #  46    0x545f3  1      
  callq .memcpy                       #  47    0x545f4  5      
  movl %ebx, %ebx                     #  48    0x545f9  2      
  movl (%r15,%rbx,1), %eax            #  49    0x545fb  4      
  addl %r12d, %eax                    #  50    0x545ff  3      
  movl %ebx, %ebx                     #  51    0x54602  2      
  addl 0x4(%r15,%rbx,1), %eax         #  52    0x54604  5      
  movl %eax, %eax                     #  53    0x54609  2      
  movb $0x0, (%r15,%rax,1)            #  54    0x5460b  5      
  movl %ebx, %ebx                     #  55    0x54610  2      
  addl %r12d, 0x4(%r15,%rbx,1)        #  56    0x54612  5      
  xchgw %ax, %ax                      #  57    0x54617  3      
  jmpq .L_545e0                       #  58    0x5461a  5      
  nop                                 #  59    0x5461f  1      
  nop                                 #  60    0x54620  1      
.L_54680:                             #        0x54621  0      
  movl %ebx, %ebx                     #  61    0x54621  2      
  movl 0xc(%r15,%rbx,1), %esi         #  62    0x54623  5      
  testl %esi, %esi                    #  63    0x54628  2      
  jne .L_545e0                        #  64    0x5462a  6      
  testl %r14d, %r14d                  #  65    0x54630  3      
  jne .L_546a0                        #  66    0x54633  6      
  cmpl $0x2, %eax                     #  67    0x54639  3      
  movb $0x2, %r14b                    #  68    0x5463c  3      
  jbe .L_546c0                        #  69    0x5463f  6      
  nop                                 #  70    0x54645  1      
.L_546a0:                             #        0x54646  0      
  addl %r14d, %r14d                   #  71    0x54646  3      
  cmpl %r14d, %eax                    #  72    0x54649  3      
  ja .L_546a0                         #  73    0x5464c  6      
  nop                                 #  74    0x54652  1      
  nop                                 #  75    0x54653  1      
.L_546c0:                             #        0x54654  0      
  movl %ebx, %ebx                     #  76    0x54654  2      
  movl (%r15,%rbx,1), %edi            #  77    0x54656  4      
  movl %r14d, %esi                    #  78    0x5465a  3      
  nop                                 #  79    0x5465d  1      
  nop                                 #  80    0x5465e  1      
  callq .realloc                      #  81    0x5465f  5      
  movl %eax, %eax                     #  82    0x54664  2      
  testq %rax, %rax                    #  83    0x54666  3      
  je .L_54700                         #  84    0x54669  6      
  movl %ebx, %ebx                     #  85    0x5466f  2      
  movl %eax, (%r15,%rbx,1)            #  86    0x54671  4      
  movl %ebx, %ebx                     #  87    0x54675  2      
  movl %r14d, 0x8(%r15,%rbx,1)        #  88    0x54677  5      
  jmpq .L_545c0                       #  89    0x5467c  5      
  nop                                 #  90    0x54681  1      
.L_54700:                             #        0x54682  0      
  movl %ebx, %ebx                     #  91    0x54682  2      
  movl (%r15,%rbx,1), %edi            #  92    0x54684  4      
  nop                                 #  93    0x54688  1      
  nop                                 #  94    0x54689  1      
  callq .free                         #  95    0x5468a  5      
  movl %ebx, %ebx                     #  96    0x5468f  2      
  movl $0x0, (%r15,%rbx,1)            #  97    0x54691  8      
  movl %ebx, %ebx                     #  98    0x54699  2      
  movl $0x0, 0x4(%r15,%rbx,1)         #  99    0x5469b  9      
  movl %ebx, %ebx                     #  100   0x546a4  2      
  movl $0x0, 0x8(%r15,%rbx,1)         #  101   0x546a6  9      
  movl %ebx, %ebx                     #  102   0x546af  2      
  movl $0x1, 0xc(%r15,%rbx,1)         #  103   0x546b1  9      
  jmpq .L_545e0                       #  104   0x546ba  5      
  nop                                 #  105   0x546bf  1      
  nop                                 #  106   0x546c0  1      
                                                               
.size d_growable_string_callback_adapter, .-d_growable_string_callback_adapter

