  .text
  .globl _ZNSt5ctypeIwEC2EPij
  .type _ZNSt5ctypeIwEC2EPij, @function

#! file-offset 0x1252a0
#! rip-offset  0xe52a0
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwEC2EPij:                              #        0xe52a0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe52a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe52a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe52a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe52a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe52a8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe52ab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe52ad  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe52af  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe52b7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe52ba  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe52be  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe52c0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe52c4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe52c6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe52cb  1      OPC=nop             
  nop                                               #  16    0xe52cc  1      OPC=nop             
  nop                                               #  17    0xe52cd  1      OPC=nop             
  nop                                               #  18    0xe52ce  1      OPC=nop             
  nop                                               #  19    0xe52cf  1      OPC=nop             
  nop                                               #  20    0xe52d0  1      OPC=nop             
  nop                                               #  21    0xe52d1  1      OPC=nop             
  nop                                               #  22    0xe52d2  1      OPC=nop             
  nop                                               #  23    0xe52d3  1      OPC=nop             
  nop                                               #  24    0xe52d4  1      OPC=nop             
  nop                                               #  25    0xe52d5  1      OPC=nop             
  nop                                               #  26    0xe52d6  1      OPC=nop             
  nop                                               #  27    0xe52d7  1      OPC=nop             
  nop                                               #  28    0xe52d8  1      OPC=nop             
  nop                                               #  29    0xe52d9  1      OPC=nop             
  nop                                               #  30    0xe52da  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe52db  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe52e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe52e2  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  34    0xe52e7  2      OPC=movl_r32_r32    
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe52e9  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                   #  36    0xe52ef  2      OPC=movl_r32_r32    
  nop                                               #  37    0xe52f1  1      OPC=nop             
  nop                                               #  38    0xe52f2  1      OPC=nop             
  nop                                               #  39    0xe52f3  1      OPC=nop             
  nop                                               #  40    0xe52f4  1      OPC=nop             
  nop                                               #  41    0xe52f5  1      OPC=nop             
  nop                                               #  42    0xe52f6  1      OPC=nop             
  nop                                               #  43    0xe52f7  1      OPC=nop             
  nop                                               #  44    0xe52f8  1      OPC=nop             
  nop                                               #  45    0xe52f9  1      OPC=nop             
  nop                                               #  46    0xe52fa  1      OPC=nop             
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe52fb  5      OPC=callq_label     
  addl $0x10, %esp                                  #  48    0xe5300  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xe5303  3      OPC=addq_r64_r64    
  popq %rbx                                         #  50    0xe5306  1      OPC=popq_r64_1      
  popq %r11                                         #  51    0xe5307  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  52    0xe5309  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xe5310  1      OPC=nop             
  nop                                               #  54    0xe5311  1      OPC=nop             
  nop                                               #  55    0xe5312  1      OPC=nop             
  nop                                               #  56    0xe5313  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xe5314  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xe5317  3      OPC=jmpq_r64        
  nop                                               #  59    0xe531a  1      OPC=nop             
  nop                                               #  60    0xe531b  1      OPC=nop             
  nop                                               #  61    0xe531c  1      OPC=nop             
  nop                                               #  62    0xe531d  1      OPC=nop             
  nop                                               #  63    0xe531e  1      OPC=nop             
  nop                                               #  64    0xe531f  1      OPC=nop             
  nop                                               #  65    0xe5320  1      OPC=nop             
  nop                                               #  66    0xe5321  1      OPC=nop             
  nop                                               #  67    0xe5322  1      OPC=nop             
  nop                                               #  68    0xe5323  1      OPC=nop             
  nop                                               #  69    0xe5324  1      OPC=nop             
  nop                                               #  70    0xe5325  1      OPC=nop             
  nop                                               #  71    0xe5326  1      OPC=nop             
  movl %ebx, %edi                                   #  72    0xe5327  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  73    0xe5329  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe532b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  75    0xe5333  3      OPC=movl_m32_r32    
  nop                                               #  76    0xe5336  1      OPC=nop             
  nop                                               #  77    0xe5337  1      OPC=nop             
  nop                                               #  78    0xe5338  1      OPC=nop             
  nop                                               #  79    0xe5339  1      OPC=nop             
  nop                                               #  80    0xe533a  1      OPC=nop             
  nop                                               #  81    0xe533b  1      OPC=nop             
  nop                                               #  82    0xe533c  1      OPC=nop             
  nop                                               #  83    0xe533d  1      OPC=nop             
  nop                                               #  84    0xe533e  1      OPC=nop             
  nop                                               #  85    0xe533f  1      OPC=nop             
  nop                                               #  86    0xe5340  1      OPC=nop             
  nop                                               #  87    0xe5341  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe5342  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  89    0xe5347  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  90    0xe534a  2      OPC=movl_r32_r32    
  nop                                               #  91    0xe534c  1      OPC=nop             
  nop                                               #  92    0xe534d  1      OPC=nop             
  nop                                               #  93    0xe534e  1      OPC=nop             
  nop                                               #  94    0xe534f  1      OPC=nop             
  nop                                               #  95    0xe5350  1      OPC=nop             
  nop                                               #  96    0xe5351  1      OPC=nop             
  nop                                               #  97    0xe5352  1      OPC=nop             
  nop                                               #  98    0xe5353  1      OPC=nop             
  nop                                               #  99    0xe5354  1      OPC=nop             
  nop                                               #  100   0xe5355  1      OPC=nop             
  nop                                               #  101   0xe5356  1      OPC=nop             
  nop                                               #  102   0xe5357  1      OPC=nop             
  nop                                               #  103   0xe5358  1      OPC=nop             
  nop                                               #  104   0xe5359  1      OPC=nop             
  nop                                               #  105   0xe535a  1      OPC=nop             
  nop                                               #  106   0xe535b  1      OPC=nop             
  nop                                               #  107   0xe535c  1      OPC=nop             
  nop                                               #  108   0xe535d  1      OPC=nop             
  nop                                               #  109   0xe535e  1      OPC=nop             
  nop                                               #  110   0xe535f  1      OPC=nop             
  nop                                               #  111   0xe5360  1      OPC=nop             
  nop                                               #  112   0xe5361  1      OPC=nop             
  callq ._Unwind_Resume                             #  113   0xe5362  5      OPC=callq_label     
                                                                                                 
.size _ZNSt5ctypeIwEC2EPij, .-_ZNSt5ctypeIwEC2EPij

