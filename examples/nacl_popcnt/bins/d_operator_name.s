  .text
  .globl d_operator_name
  .type d_operator_name, @function

#! file-offset 0x52480
#! rip-offset  0x52480
#! capacity    800 bytes

# Text                          #  Line  RIP      Bytes  
.d_operator_name:               #        0x52480  0      
  pushq %r12                    #  1     0x52480  3      
  xorl %r12d, %r12d             #  2     0x52483  3      
  pushq %rbx                    #  3     0x52486  2      
  movl %edi, %ebx               #  4     0x52488  2      
  subl $0x8, %esp               #  5     0x5248a  3      
  addq %r15, %rsp               #  6     0x5248d  3      
  movl %ebx, %ebx               #  7     0x52490  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x52492  5      
  movl %eax, %eax               #  9     0x52497  2      
  movzbl (%r15,%rax,1), %r9d    #  10    0x52499  5      
  testb %r9b, %r9b              #  11    0x5249e  3      
  nop                           #  12    0x524a1  1      
  je .L_52500                   #  13    0x524a2  6      
  addl $0x1, %eax               #  14    0x524a8  3      
  movl %ebx, %ebx               #  15    0x524ab  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  16    0x524ad  5      
  movl %eax, %eax               #  17    0x524b2  2      
  movzbl (%r15,%rax,1), %r12d   #  18    0x524b4  5      
  testb %r12b, %r12b            #  19    0x524b9  3      
  je .L_524e0                   #  20    0x524bc  6      
  addl $0x1, %eax               #  21    0x524c2  3      
  nop                           #  22    0x524c5  1      
  movl %ebx, %ebx               #  23    0x524c6  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  24    0x524c8  5      
  nop                           #  25    0x524cd  1      
  nop                           #  26    0x524ce  1      
.L_524e0:                       #        0x524cf  0      
  cmpb $0x76, %r9b              #  27    0x524cf  4      
  jne .L_52640                  #  28    0x524d3  6      
  leal -0x30(%r12), %eax        #  29    0x524d9  5      
  cmpb $0x9, %al                #  30    0x524de  2      
  jbe .L_52680                  #  31    0x524e0  6      
  nop                           #  32    0x524e6  1      
.L_52500:                       #        0x524e7  0      
  movl $0x34, %esi              #  33    0x524e7  5      
  xorl %edx, %edx               #  34    0x524ec  2      
  nop                           #  35    0x524ee  1      
  nop                           #  36    0x524ef  1      
.L_52520:                       #        0x524f0  0      
  movl %esi, %eax               #  37    0x524f0  2      
  subl %edx, %eax               #  38    0x524f2  2      
  movl %eax, %ecx               #  39    0x524f4  2      
  shrl $0x1f, %ecx              #  40    0x524f6  3      
  leal (%rcx,%rax,1), %eax      #  41    0x524f9  3      
  sarl $0x1, %eax               #  42    0x524fc  2      
  addl %edx, %eax               #  43    0x524fe  2      
  movl %eax, %r8d               #  44    0x52500  3      
  shll $0x4, %r8d               #  45    0x52503  4      
  addl $0x100224e0, %r8d        #  46    0x52507  7      
  xchgw %ax, %ax                #  47    0x5250e  3      
  movl %r8d, %r8d               #  48    0x52511  3      
  movl (%r15,%r8,1), %ecx       #  49    0x52514  4      
  movl %ecx, %ecx               #  50    0x52518  2      
  movzbl (%r15,%rcx,1), %edi    #  51    0x5251a  5      
  cmpb %dil, %r9b               #  52    0x5251f  3      
  jne .L_52600                  #  53    0x52522  6      
  movl %ecx, %ecx               #  54    0x52528  2      
  cmpb 0x1(%r15,%rcx,1), %r12b  #  55    0x5252a  5      
  xchgw %ax, %ax                #  56    0x5252f  3      
  je .L_52720                   #  57    0x52532  6      
  jge .L_52620                  #  58    0x52538  6      
  nop                           #  59    0x5253e  1      
  nop                           #  60    0x5253f  1      
.L_52580:                       #        0x52540  0      
  movl %eax, %esi               #  61    0x52540  2      
  nop                           #  62    0x52542  1      
  nop                           #  63    0x52543  1      
.L_525a0:                       #        0x52544  0      
  cmpl %esi, %edx               #  64    0x52544  2      
  jne .L_52520                  #  65    0x52546  6      
  nop                           #  66    0x5254c  1      
  nop                           #  67    0x5254d  1      
.L_525c0:                       #        0x5254e  0      
  xorl %eax, %eax               #  68    0x5254e  2      
  nop                           #  69    0x52550  1      
  nop                           #  70    0x52551  1      
.L_525e0:                       #        0x52552  0      
  addl $0x8, %esp               #  71    0x52552  3      
  addq %r15, %rsp               #  72    0x52555  3      
  popq %rbx                     #  73    0x52558  2      
  popq %r12                     #  74    0x5255a  3      
  popq %r11                     #  75    0x5255d  3      
  andl $0xffffffe0, %r11d       #  76    0x52560  7      
  addq %r15, %r11               #  77    0x52567  3      
  jmpq %r11                     #  78    0x5256a  3      
  nop                           #  79    0x5256d  1      
.L_52600:                       #        0x5256e  0      
  cmpb %r9b, %dil               #  80    0x5256e  3      
  jg .L_52580                   #  81    0x52571  6      
  nop                           #  82    0x52577  1      
  nop                           #  83    0x52578  1      
.L_52620:                       #        0x52579  0      
  leal 0x1(%rax), %edx          #  84    0x52579  3      
  jmpq .L_525a0                 #  85    0x5257c  5      
  nop                           #  86    0x52581  1      
  nop                           #  87    0x52582  1      
.L_52640:                       #        0x52583  0      
  cmpb $0x76, %r12b             #  88    0x52583  4      
  jne .L_52500                  #  89    0x52587  6      
  cmpb $0x63, %r9b              #  90    0x5258d  4      
  jne .L_52500                  #  91    0x52591  6      
  movl %ebx, %edi               #  92    0x52597  2      
  nop                           #  93    0x52599  1      
  callq .d_type                 #  94    0x5259a  5      
  addl $0x8, %esp               #  95    0x5259f  3      
  addq %r15, %rsp               #  96    0x525a2  3      
  movl %ebx, %edi               #  97    0x525a5  2      
  movl %eax, %edx               #  98    0x525a7  2      
  popq %rbx                     #  99    0x525a9  2      
  popq %r12                     #  100   0x525ab  3      
  xorl %ecx, %ecx               #  101   0x525ae  2      
  movl $0x2d, %esi              #  102   0x525b0  5      
  jmpq .d_make_comp             #  103   0x525b5  5      
  nop                           #  104   0x525ba  1      
.L_52680:                       #        0x525bb  0      
  movl %ebx, %edi               #  105   0x525bb  2      
  nop                           #  106   0x525bd  1      
  nop                           #  107   0x525be  1      
  callq .d_source_name          #  108   0x525bf  5      
  movl %ebx, %ebx               #  109   0x525c4  2      
  movl 0x14(%r15,%rbx,1), %edx  #  110   0x525c6  5      
  movl %ebx, %ebx               #  111   0x525cb  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  112   0x525cd  5      
  movl %eax, %ecx               #  113   0x525d2  2      
  jge .L_525c0                  #  114   0x525d4  6      
  leal (%rdx,%rdx,2), %eax      #  115   0x525da  3      
  addl $0x1, %edx               #  116   0x525dd  3      
  nop                           #  117   0x525e0  1      
  movl %ebx, %ebx               #  118   0x525e1  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  119   0x525e3  5      
  shll $0x2, %eax               #  120   0x525e8  3      
  movl %ebx, %ebx               #  121   0x525eb  2      
  addl 0x10(%r15,%rbx,1), %eax  #  122   0x525ed  5      
  testq %rax, %rax              #  123   0x525f2  3      
  je .L_525e0                   #  124   0x525f5  6      
  testq %rcx, %rcx              #  125   0x525fb  3      
  nop                           #  126   0x525fe  1      
  je .L_525c0                   #  127   0x525ff  6      
  movsbl %r12b, %edx            #  128   0x52605  4      
  movl %eax, %eax               #  129   0x52609  2      
  movl $0x2c, (%r15,%rax,1)     #  130   0x5260b  8      
  movl %eax, %eax               #  131   0x52613  2      
  movl %ecx, 0x8(%r15,%rax,1)   #  132   0x52615  5      
  subl $0x30, %edx              #  133   0x5261a  3      
  xchgw %ax, %ax                #  134   0x5261d  3      
  movl %eax, %eax               #  135   0x52620  2      
  movl %edx, 0x4(%r15,%rax,1)   #  136   0x52622  5      
  jmpq .L_525e0                 #  137   0x52627  5      
  nop                           #  138   0x5262c  1      
  nop                           #  139   0x5262d  1      
.L_52720:                       #        0x5262e  0      
  movl %ebx, %ebx               #  140   0x5262e  2      
  movl 0x14(%r15,%rbx,1), %edx  #  141   0x52630  5      
  movl %ebx, %ebx               #  142   0x52635  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  143   0x52637  5      
  jge .L_525c0                  #  144   0x5263c  6      
  leal (%rdx,%rdx,2), %eax      #  145   0x52642  3      
  addl $0x1, %edx               #  146   0x52645  3      
  nop                           #  147   0x52648  1      
  movl %ebx, %ebx               #  148   0x52649  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  149   0x5264b  5      
  shll $0x2, %eax               #  150   0x52650  3      
  movl %ebx, %ebx               #  151   0x52653  2      
  addl 0x10(%r15,%rbx,1), %eax  #  152   0x52655  5      
  testq %rax, %rax              #  153   0x5265a  3      
  je .L_525e0                   #  154   0x5265d  6      
  nop                           #  155   0x52663  1      
  movl %eax, %eax               #  156   0x52664  2      
  movl $0x2b, (%r15,%rax,1)     #  157   0x52666  8      
  movl %eax, %eax               #  158   0x5266e  2      
  movl %r8d, 0x4(%r15,%rax,1)   #  159   0x52670  5      
  addl $0x8, %esp               #  160   0x52675  3      
  addq %r15, %rsp               #  161   0x52678  3      
  popq %rbx                     #  162   0x5267b  2      
  popq %r12                     #  163   0x5267d  3      
  popq %r11                     #  164   0x52680  3      
  nop                           #  165   0x52683  1      
  andl $0xffffffe0, %r11d       #  166   0x52684  7      
  addq %r15, %r11               #  167   0x5268b  3      
  jmpq %r11                     #  168   0x5268e  3      
  nop                           #  169   0x52691  1      
  nop                           #  170   0x52692  1      
                                                         
.size d_operator_name, .-d_operator_name

