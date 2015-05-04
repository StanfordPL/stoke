  .text
  .globl read_encoded_value_with_base
  .type read_encoded_value_with_base, @function

#! file-offset 0x5e460
#! rip-offset  0x5e460
#! capacity    608 bytes

# Text                          #  Line  RIP      Bytes  
.read_encoded_value_with_base:  #        0x5e460  0      
  pushq %r12                    #  1     0x5e460  3      
  movl %edx, %eax               #  2     0x5e463  2      
  movl %ecx, %r10d              #  3     0x5e465  3      
  pushq %rbx                    #  4     0x5e468  2      
  subl $0x8, %esp               #  5     0x5e46a  3      
  addq %r15, %rsp               #  6     0x5e46d  3      
  cmpb $0x50, %dil              #  7     0x5e470  4      
  je .L_5e680                   #  8     0x5e474  6      
  movzbl %dil, %r9d             #  9     0x5e47a  4      
  movq %rax, %rbx               #  10    0x5e47e  3      
  nop                           #  11    0x5e481  1      
  movl %r9d, %edx               #  12    0x5e482  3      
  andl $0xf, %edx               #  13    0x5e485  3      
  cmpl $0xc, %edx               #  14    0x5e488  3      
  jbe .L_5e4c0                  #  15    0x5e48b  6      
  nop                           #  16    0x5e491  1      
  nop                           #  17    0x5e492  1      
  nop                           #  18    0x5e493  1      
  nop                           #  19    0x5e494  1      
  callq .abort                  #  20    0x5e495  5      
.L_5e4c0:                       #        0x5e49a  0      
  leal 0xffc4e46(%rip), %ecx    #  21    0x5e49a  6      
  movl %edx, %edx               #  22    0x5e4a0  2      
  leaq (%rcx,%rdx,4), %rdx      #  23    0x5e4a2  4      
  movl %edx, %edx               #  24    0x5e4a6  2      
  movslq (%r15,%rdx,1), %rdx    #  25    0x5e4a8  4      
  leaq (%rdx,%rcx,1), %rcx      #  26    0x5e4ac  4      
  andl $0xffffffe0, %ecx        #  27    0x5e4b0  6      
  addq %r15, %rcx               #  28    0x5e4b6  3      
  jmpq %rcx                     #  29    0x5e4b9  2      
  xchgw %ax, %ax                #  30    0x5e4bb  3      
  movl %eax, %eax               #  31    0x5e4be  2      
  movl (%r15,%rax,1), %edx      #  32    0x5e4c0  4      
  addl $0x4, %eax               #  33    0x5e4c4  3      
  nop                           #  34    0x5e4c7  1      
  nop                           #  35    0x5e4c8  1      
.L_5e500:                       #        0x5e4c9  0      
  testl %edx, %edx              #  36    0x5e4c9  2      
  je .L_5e520                   #  37    0x5e4cb  6      
  andl $0x70, %r9d              #  38    0x5e4d1  4      
  cmpl $0x10, %r9d              #  39    0x5e4d5  4      
  cmovel %ebx, %esi             #  40    0x5e4d9  3      
  addl %esi, %edx               #  41    0x5e4dc  2      
  testb %dil, %dil              #  42    0x5e4de  3      
  jns .L_5e520                  #  43    0x5e4e1  6      
  movl %edx, %edx               #  44    0x5e4e7  2      
  movl %edx, %edx               #  45    0x5e4e9  2      
  movl (%r15,%rdx,1), %edx      #  46    0x5e4eb  4      
  xchgw %ax, %ax                #  47    0x5e4ef  3      
.L_5e520:                       #        0x5e4f2  0      
  movl %r10d, %r10d             #  48    0x5e4f2  3      
  movl %edx, (%r15,%r10,1)      #  49    0x5e4f5  4      
  addl $0x8, %esp               #  50    0x5e4f9  3      
  addq %r15, %rsp               #  51    0x5e4fc  3      
  popq %rbx                     #  52    0x5e4ff  2      
  popq %r12                     #  53    0x5e501  3      
  popq %r11                     #  54    0x5e504  3      
  andl $0xffffffe0, %r11d       #  55    0x5e507  7      
  addq %r15, %r11               #  56    0x5e50e  3      
  jmpq %r11                     #  57    0x5e511  3      
  nop                           #  58    0x5e514  1      
  movl %eax, %eax               #  59    0x5e515  2      
  movl (%r15,%rax,1), %edx      #  60    0x5e517  4      
  addl $0x8, %eax               #  61    0x5e51b  3      
  jmpq .L_5e500                 #  62    0x5e51e  5      
  nop                           #  63    0x5e523  1      
  nop                           #  64    0x5e524  1      
  xorl %edx, %edx               #  65    0x5e525  2      
  xorl %ecx, %ecx               #  66    0x5e527  2      
  nop                           #  67    0x5e529  1      
  nop                           #  68    0x5e52a  1      
.L_5e580:                       #        0x5e52b  0      
  movl %eax, %eax               #  69    0x5e52b  2      
  movzbl (%r15,%rax,1), %r11d   #  70    0x5e52d  5      
  movl $0x7f, %r8d              #  71    0x5e532  6      
  addl $0x1, %eax               #  72    0x5e538  3      
  andl %r11d, %r8d              #  73    0x5e53b  3      
  shll %cl, %r8d                #  74    0x5e53e  3      
  addl $0x7, %ecx               #  75    0x5e541  3      
  orl %r8d, %edx                #  76    0x5e544  3      
  testb %r11b, %r11b            #  77    0x5e547  3      
  nop                           #  78    0x5e54a  1      
  js .L_5e580                   #  79    0x5e54b  6      
  jmpq .L_5e500                 #  80    0x5e551  5      
  nop                           #  81    0x5e556  1      
  nop                           #  82    0x5e557  1      
  xorl %edx, %edx               #  83    0x5e558  2      
  xorl %ecx, %ecx               #  84    0x5e55a  2      
  nop                           #  85    0x5e55c  1      
  nop                           #  86    0x5e55d  1      
.L_5e5e0:                       #        0x5e55e  0      
  movl %eax, %eax               #  87    0x5e55e  2      
  movzbl (%r15,%rax,1), %r11d   #  88    0x5e560  5      
  addl $0x1, %eax               #  89    0x5e565  3      
  movzbl %r11b, %r12d           #  90    0x5e568  4      
  movl %r12d, %r8d              #  91    0x5e56c  3      
  andl $0x7f, %r8d              #  92    0x5e56f  4      
  shll %cl, %r8d                #  93    0x5e573  3      
  addl $0x7, %ecx               #  94    0x5e576  3      
  orl %r8d, %edx                #  95    0x5e579  3      
  xchgw %ax, %ax                #  96    0x5e57c  3      
  testb %r11b, %r11b            #  97    0x5e57f  3      
  js .L_5e5e0                   #  98    0x5e582  6      
  cmpl $0x1f, %ecx              #  99    0x5e588  3      
  ja .L_5e500                   #  100   0x5e58b  6      
  andl $0x40, %r12d             #  101   0x5e591  4      
  je .L_5e500                   #  102   0x5e595  6      
  movl $0xffffffff, %r8d        #  103   0x5e59b  6      
  xchgw %ax, %ax                #  104   0x5e5a1  3      
  shll %cl, %r8d                #  105   0x5e5a4  3      
  orl %r8d, %edx                #  106   0x5e5a7  3      
  jmpq .L_5e500                 #  107   0x5e5aa  5      
  nop                           #  108   0x5e5af  1      
  nop                           #  109   0x5e5b0  1      
  movl %eax, %eax               #  110   0x5e5b1  2      
  movswl (%r15,%rax,1), %edx    #  111   0x5e5b3  5      
  addl $0x2, %eax               #  112   0x5e5b8  3      
  jmpq .L_5e500                 #  113   0x5e5bb  5      
  xchgw %ax, %ax                #  114   0x5e5c0  3      
  nop                           #  115   0x5e5c3  1      
  movl %eax, %eax               #  116   0x5e5c4  2      
  movzwl (%r15,%rax,1), %edx    #  117   0x5e5c6  5      
  addl $0x2, %eax               #  118   0x5e5cb  3      
  jmpq .L_5e500                 #  119   0x5e5ce  5      
  xchgw %ax, %ax                #  120   0x5e5d3  3      
  nop                           #  121   0x5e5d6  1      
.L_5e680:                       #        0x5e5d7  0      
  addl $0x3, %eax               #  122   0x5e5d7  3      
  andl $0xfffffffc, %eax        #  123   0x5e5da  5      
  movl %eax, %edx               #  124   0x5e5df  2      
  addl $0x4, %eax               #  125   0x5e5e1  3      
  movl %edx, %edx               #  126   0x5e5e4  2      
  movl (%r15,%rdx,1), %edx      #  127   0x5e5e6  4      
  movl %eax, %eax               #  128   0x5e5ea  2      
  movl %r10d, %r10d             #  129   0x5e5ec  3      
  movl %edx, (%r15,%r10,1)      #  130   0x5e5ef  4      
  addl $0x8, %esp               #  131   0x5e5f3  3      
  addq %r15, %rsp               #  132   0x5e5f6  3      
  popq %rbx                     #  133   0x5e5f9  2      
  popq %r12                     #  134   0x5e5fb  3      
  popq %r11                     #  135   0x5e5fe  3      
  andl $0xffffffe0, %r11d       #  136   0x5e601  7      
  addq %r15, %r11               #  137   0x5e608  3      
  jmpq %r11                     #  138   0x5e60b  3      
  xchgw %ax, %ax                #  139   0x5e60e  3      
  nop                           #  140   0x5e611  1      
                                                         
.size read_encoded_value_with_base, .-read_encoded_value_with_base

