  .text
  .globl d_operator_name
  .type d_operator_name, @function

#! file-offset 0x52400
#! rip-offset  0x52400
#! capacity    800 bytes

# Text                          #  Line  RIP      Bytes  
.d_operator_name:               #        0x52400  0      
  pushq %r12                    #  1     0x52400  3      
  xorl %r12d, %r12d             #  2     0x52403  3      
  pushq %rbx                    #  3     0x52406  2      
  movl %edi, %ebx               #  4     0x52408  2      
  subl $0x8, %esp               #  5     0x5240a  3      
  addq %r15, %rsp               #  6     0x5240d  3      
  movl %ebx, %ebx               #  7     0x52410  2      
  movl 0xc(%r15,%rbx,1), %eax   #  8     0x52412  5      
  movl %eax, %eax               #  9     0x52417  2      
  movzbl (%r15,%rax,1), %r9d    #  10    0x52419  5      
  testb %r9b, %r9b              #  11    0x5241e  3      
  nop                           #  12    0x52421  1      
  je .L_52480                   #  13    0x52422  6      
  addl $0x1, %eax               #  14    0x52428  3      
  movl %ebx, %ebx               #  15    0x5242b  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  16    0x5242d  5      
  movl %eax, %eax               #  17    0x52432  2      
  movzbl (%r15,%rax,1), %r12d   #  18    0x52434  5      
  testb %r12b, %r12b            #  19    0x52439  3      
  je .L_52460                   #  20    0x5243c  6      
  addl $0x1, %eax               #  21    0x52442  3      
  nop                           #  22    0x52445  1      
  movl %ebx, %ebx               #  23    0x52446  2      
  movl %eax, 0xc(%r15,%rbx,1)   #  24    0x52448  5      
  nop                           #  25    0x5244d  1      
  nop                           #  26    0x5244e  1      
.L_52460:                       #        0x5244f  0      
  cmpb $0x76, %r9b              #  27    0x5244f  4      
  jne .L_525c0                  #  28    0x52453  6      
  leal -0x30(%r12), %eax        #  29    0x52459  5      
  cmpb $0x9, %al                #  30    0x5245e  2      
  jbe .L_52600                  #  31    0x52460  6      
  nop                           #  32    0x52466  1      
.L_52480:                       #        0x52467  0      
  movl $0x34, %esi              #  33    0x52467  5      
  xorl %edx, %edx               #  34    0x5246c  2      
  nop                           #  35    0x5246e  1      
  nop                           #  36    0x5246f  1      
.L_524a0:                       #        0x52470  0      
  movl %esi, %eax               #  37    0x52470  2      
  subl %edx, %eax               #  38    0x52472  2      
  movl %eax, %ecx               #  39    0x52474  2      
  shrl $0x1f, %ecx              #  40    0x52476  3      
  leal (%rcx,%rax,1), %eax      #  41    0x52479  3      
  sarl $0x1, %eax               #  42    0x5247c  2      
  addl %edx, %eax               #  43    0x5247e  2      
  movl %eax, %r8d               #  44    0x52480  3      
  shll $0x4, %r8d               #  45    0x52483  4      
  addl $0x100224e0, %r8d        #  46    0x52487  7      
  xchgw %ax, %ax                #  47    0x5248e  3      
  movl %r8d, %r8d               #  48    0x52491  3      
  movl (%r15,%r8,1), %ecx       #  49    0x52494  4      
  movl %ecx, %ecx               #  50    0x52498  2      
  movzbl (%r15,%rcx,1), %edi    #  51    0x5249a  5      
  cmpb %dil, %r9b               #  52    0x5249f  3      
  jne .L_52580                  #  53    0x524a2  6      
  movl %ecx, %ecx               #  54    0x524a8  2      
  cmpb 0x1(%r15,%rcx,1), %r12b  #  55    0x524aa  5      
  xchgw %ax, %ax                #  56    0x524af  3      
  je .L_526a0                   #  57    0x524b2  6      
  jge .L_525a0                  #  58    0x524b8  6      
  nop                           #  59    0x524be  1      
  nop                           #  60    0x524bf  1      
.L_52500:                       #        0x524c0  0      
  movl %eax, %esi               #  61    0x524c0  2      
  nop                           #  62    0x524c2  1      
  nop                           #  63    0x524c3  1      
.L_52520:                       #        0x524c4  0      
  cmpl %esi, %edx               #  64    0x524c4  2      
  jne .L_524a0                  #  65    0x524c6  6      
  nop                           #  66    0x524cc  1      
  nop                           #  67    0x524cd  1      
.L_52540:                       #        0x524ce  0      
  xorl %eax, %eax               #  68    0x524ce  2      
  nop                           #  69    0x524d0  1      
  nop                           #  70    0x524d1  1      
.L_52560:                       #        0x524d2  0      
  addl $0x8, %esp               #  71    0x524d2  3      
  addq %r15, %rsp               #  72    0x524d5  3      
  popq %rbx                     #  73    0x524d8  2      
  popq %r12                     #  74    0x524da  3      
  popq %r11                     #  75    0x524dd  3      
  andl $0xffffffe0, %r11d       #  76    0x524e0  7      
  addq %r15, %r11               #  77    0x524e7  3      
  jmpq %r11                     #  78    0x524ea  3      
  nop                           #  79    0x524ed  1      
.L_52580:                       #        0x524ee  0      
  cmpb %r9b, %dil               #  80    0x524ee  3      
  jg .L_52500                   #  81    0x524f1  6      
  nop                           #  82    0x524f7  1      
  nop                           #  83    0x524f8  1      
.L_525a0:                       #        0x524f9  0      
  leal 0x1(%rax), %edx          #  84    0x524f9  3      
  jmpq .L_52520                 #  85    0x524fc  5      
  nop                           #  86    0x52501  1      
  nop                           #  87    0x52502  1      
.L_525c0:                       #        0x52503  0      
  cmpb $0x76, %r12b             #  88    0x52503  4      
  jne .L_52480                  #  89    0x52507  6      
  cmpb $0x63, %r9b              #  90    0x5250d  4      
  jne .L_52480                  #  91    0x52511  6      
  movl %ebx, %edi               #  92    0x52517  2      
  nop                           #  93    0x52519  1      
  callq .d_type                 #  94    0x5251a  5      
  addl $0x8, %esp               #  95    0x5251f  3      
  addq %r15, %rsp               #  96    0x52522  3      
  movl %ebx, %edi               #  97    0x52525  2      
  movl %eax, %edx               #  98    0x52527  2      
  popq %rbx                     #  99    0x52529  2      
  popq %r12                     #  100   0x5252b  3      
  xorl %ecx, %ecx               #  101   0x5252e  2      
  movl $0x2d, %esi              #  102   0x52530  5      
  jmpq .d_make_comp             #  103   0x52535  5      
  nop                           #  104   0x5253a  1      
.L_52600:                       #        0x5253b  0      
  movl %ebx, %edi               #  105   0x5253b  2      
  nop                           #  106   0x5253d  1      
  nop                           #  107   0x5253e  1      
  callq .d_source_name          #  108   0x5253f  5      
  movl %ebx, %ebx               #  109   0x52544  2      
  movl 0x14(%r15,%rbx,1), %edx  #  110   0x52546  5      
  movl %ebx, %ebx               #  111   0x5254b  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  112   0x5254d  5      
  movl %eax, %ecx               #  113   0x52552  2      
  jge .L_52540                  #  114   0x52554  6      
  leal (%rdx,%rdx,2), %eax      #  115   0x5255a  3      
  addl $0x1, %edx               #  116   0x5255d  3      
  nop                           #  117   0x52560  1      
  movl %ebx, %ebx               #  118   0x52561  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  119   0x52563  5      
  shll $0x2, %eax               #  120   0x52568  3      
  movl %ebx, %ebx               #  121   0x5256b  2      
  addl 0x10(%r15,%rbx,1), %eax  #  122   0x5256d  5      
  testq %rax, %rax              #  123   0x52572  3      
  je .L_52560                   #  124   0x52575  6      
  testq %rcx, %rcx              #  125   0x5257b  3      
  nop                           #  126   0x5257e  1      
  je .L_52540                   #  127   0x5257f  6      
  movsbl %r12b, %edx            #  128   0x52585  4      
  movl %eax, %eax               #  129   0x52589  2      
  movl $0x2c, (%r15,%rax,1)     #  130   0x5258b  8      
  movl %eax, %eax               #  131   0x52593  2      
  movl %ecx, 0x8(%r15,%rax,1)   #  132   0x52595  5      
  subl $0x30, %edx              #  133   0x5259a  3      
  xchgw %ax, %ax                #  134   0x5259d  3      
  movl %eax, %eax               #  135   0x525a0  2      
  movl %edx, 0x4(%r15,%rax,1)   #  136   0x525a2  5      
  jmpq .L_52560                 #  137   0x525a7  5      
  nop                           #  138   0x525ac  1      
  nop                           #  139   0x525ad  1      
.L_526a0:                       #        0x525ae  0      
  movl %ebx, %ebx               #  140   0x525ae  2      
  movl 0x14(%r15,%rbx,1), %edx  #  141   0x525b0  5      
  movl %ebx, %ebx               #  142   0x525b5  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  143   0x525b7  5      
  jge .L_52540                  #  144   0x525bc  6      
  leal (%rdx,%rdx,2), %eax      #  145   0x525c2  3      
  addl $0x1, %edx               #  146   0x525c5  3      
  nop                           #  147   0x525c8  1      
  movl %ebx, %ebx               #  148   0x525c9  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  149   0x525cb  5      
  shll $0x2, %eax               #  150   0x525d0  3      
  movl %ebx, %ebx               #  151   0x525d3  2      
  addl 0x10(%r15,%rbx,1), %eax  #  152   0x525d5  5      
  testq %rax, %rax              #  153   0x525da  3      
  je .L_52560                   #  154   0x525dd  6      
  nop                           #  155   0x525e3  1      
  movl %eax, %eax               #  156   0x525e4  2      
  movl $0x2b, (%r15,%rax,1)     #  157   0x525e6  8      
  movl %eax, %eax               #  158   0x525ee  2      
  movl %r8d, 0x4(%r15,%rax,1)   #  159   0x525f0  5      
  addl $0x8, %esp               #  160   0x525f5  3      
  addq %r15, %rsp               #  161   0x525f8  3      
  popq %rbx                     #  162   0x525fb  2      
  popq %r12                     #  163   0x525fd  3      
  popq %r11                     #  164   0x52600  3      
  nop                           #  165   0x52603  1      
  andl $0xffffffe0, %r11d       #  166   0x52604  7      
  addq %r15, %r11               #  167   0x5260b  3      
  jmpq %r11                     #  168   0x5260e  3      
  nop                           #  169   0x52611  1      
  nop                           #  170   0x52612  1      
                                                         
.size d_operator_name, .-d_operator_name

