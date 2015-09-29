  .text
  .globl _ZNSt5ctypeIwEC2EPij
  .type _ZNSt5ctypeIwEC2EPij, @function

#! file-offset 0x1259c0
#! rip-offset  0xe59c0
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwEC2EPij:                              #        0xe59c0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe59c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe59c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe59c3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe59c5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe59c8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe59cb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe59cd  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe59cf  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe59d7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe59da  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe59de  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe59e0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe59e4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe59e6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe59eb  1      OPC=nop             
  nop                                               #  16    0xe59ec  1      OPC=nop             
  nop                                               #  17    0xe59ed  1      OPC=nop             
  nop                                               #  18    0xe59ee  1      OPC=nop             
  nop                                               #  19    0xe59ef  1      OPC=nop             
  nop                                               #  20    0xe59f0  1      OPC=nop             
  nop                                               #  21    0xe59f1  1      OPC=nop             
  nop                                               #  22    0xe59f2  1      OPC=nop             
  nop                                               #  23    0xe59f3  1      OPC=nop             
  nop                                               #  24    0xe59f4  1      OPC=nop             
  nop                                               #  25    0xe59f5  1      OPC=nop             
  nop                                               #  26    0xe59f6  1      OPC=nop             
  nop                                               #  27    0xe59f7  1      OPC=nop             
  nop                                               #  28    0xe59f8  1      OPC=nop             
  nop                                               #  29    0xe59f9  1      OPC=nop             
  nop                                               #  30    0xe59fa  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe59fb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe5a00  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe5a02  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  34    0xe5a07  2      OPC=movl_r32_r32    
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe5a09  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                   #  36    0xe5a0f  2      OPC=movl_r32_r32    
  nop                                               #  37    0xe5a11  1      OPC=nop             
  nop                                               #  38    0xe5a12  1      OPC=nop             
  nop                                               #  39    0xe5a13  1      OPC=nop             
  nop                                               #  40    0xe5a14  1      OPC=nop             
  nop                                               #  41    0xe5a15  1      OPC=nop             
  nop                                               #  42    0xe5a16  1      OPC=nop             
  nop                                               #  43    0xe5a17  1      OPC=nop             
  nop                                               #  44    0xe5a18  1      OPC=nop             
  nop                                               #  45    0xe5a19  1      OPC=nop             
  nop                                               #  46    0xe5a1a  1      OPC=nop             
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe5a1b  5      OPC=callq_label     
  addl $0x10, %esp                                  #  48    0xe5a20  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xe5a23  3      OPC=addq_r64_r64    
  popq %rbx                                         #  50    0xe5a26  1      OPC=popq_r64_1      
  popq %r11                                         #  51    0xe5a27  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  52    0xe5a29  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xe5a30  1      OPC=nop             
  nop                                               #  54    0xe5a31  1      OPC=nop             
  nop                                               #  55    0xe5a32  1      OPC=nop             
  nop                                               #  56    0xe5a33  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xe5a34  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xe5a37  3      OPC=jmpq_r64        
  nop                                               #  59    0xe5a3a  1      OPC=nop             
  nop                                               #  60    0xe5a3b  1      OPC=nop             
  nop                                               #  61    0xe5a3c  1      OPC=nop             
  nop                                               #  62    0xe5a3d  1      OPC=nop             
  nop                                               #  63    0xe5a3e  1      OPC=nop             
  nop                                               #  64    0xe5a3f  1      OPC=nop             
  nop                                               #  65    0xe5a40  1      OPC=nop             
  nop                                               #  66    0xe5a41  1      OPC=nop             
  nop                                               #  67    0xe5a42  1      OPC=nop             
  nop                                               #  68    0xe5a43  1      OPC=nop             
  nop                                               #  69    0xe5a44  1      OPC=nop             
  nop                                               #  70    0xe5a45  1      OPC=nop             
  nop                                               #  71    0xe5a46  1      OPC=nop             
  movl %ebx, %edi                                   #  72    0xe5a47  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  73    0xe5a49  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe5a4b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  75    0xe5a53  3      OPC=movl_m32_r32    
  nop                                               #  76    0xe5a56  1      OPC=nop             
  nop                                               #  77    0xe5a57  1      OPC=nop             
  nop                                               #  78    0xe5a58  1      OPC=nop             
  nop                                               #  79    0xe5a59  1      OPC=nop             
  nop                                               #  80    0xe5a5a  1      OPC=nop             
  nop                                               #  81    0xe5a5b  1      OPC=nop             
  nop                                               #  82    0xe5a5c  1      OPC=nop             
  nop                                               #  83    0xe5a5d  1      OPC=nop             
  nop                                               #  84    0xe5a5e  1      OPC=nop             
  nop                                               #  85    0xe5a5f  1      OPC=nop             
  nop                                               #  86    0xe5a60  1      OPC=nop             
  nop                                               #  87    0xe5a61  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe5a62  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  89    0xe5a67  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  90    0xe5a6a  2      OPC=movl_r32_r32    
  nop                                               #  91    0xe5a6c  1      OPC=nop             
  nop                                               #  92    0xe5a6d  1      OPC=nop             
  nop                                               #  93    0xe5a6e  1      OPC=nop             
  nop                                               #  94    0xe5a6f  1      OPC=nop             
  nop                                               #  95    0xe5a70  1      OPC=nop             
  nop                                               #  96    0xe5a71  1      OPC=nop             
  nop                                               #  97    0xe5a72  1      OPC=nop             
  nop                                               #  98    0xe5a73  1      OPC=nop             
  nop                                               #  99    0xe5a74  1      OPC=nop             
  nop                                               #  100   0xe5a75  1      OPC=nop             
  nop                                               #  101   0xe5a76  1      OPC=nop             
  nop                                               #  102   0xe5a77  1      OPC=nop             
  nop                                               #  103   0xe5a78  1      OPC=nop             
  nop                                               #  104   0xe5a79  1      OPC=nop             
  nop                                               #  105   0xe5a7a  1      OPC=nop             
  nop                                               #  106   0xe5a7b  1      OPC=nop             
  nop                                               #  107   0xe5a7c  1      OPC=nop             
  nop                                               #  108   0xe5a7d  1      OPC=nop             
  nop                                               #  109   0xe5a7e  1      OPC=nop             
  nop                                               #  110   0xe5a7f  1      OPC=nop             
  nop                                               #  111   0xe5a80  1      OPC=nop             
  nop                                               #  112   0xe5a81  1      OPC=nop             
  callq ._Unwind_Resume                             #  113   0xe5a82  5      OPC=callq_label     
                                                                                                 
.size _ZNSt5ctypeIwEC2EPij, .-_ZNSt5ctypeIwEC2EPij

