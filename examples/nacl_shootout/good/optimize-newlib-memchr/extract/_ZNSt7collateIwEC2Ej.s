  .text
  .globl _ZNSt7collateIwEC2Ej
  .type _ZNSt7collateIwEC2Ej, @function

#! file-offset 0xf59c0
#! rip-offset  0xb59c0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC2Ej:                          #        0xb59c0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb59c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb59c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb59c3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb59c5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb59c8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb59cb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb59cd  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb59cf  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb59d7  3      OPC=setne_r8        
  nop                                           #  10    0xb59da  1      OPC=nop             
  nop                                           #  11    0xb59db  1      OPC=nop             
  nop                                           #  12    0xb59dc  1      OPC=nop             
  nop                                           #  13    0xb59dd  1      OPC=nop             
  nop                                           #  14    0xb59de  1      OPC=nop             
  nop                                           #  15    0xb59df  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb59e0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb59e2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb59e7  1      OPC=nop             
  nop                                           #  19    0xb59e8  1      OPC=nop             
  nop                                           #  20    0xb59e9  1      OPC=nop             
  nop                                           #  21    0xb59ea  1      OPC=nop             
  nop                                           #  22    0xb59eb  1      OPC=nop             
  nop                                           #  23    0xb59ec  1      OPC=nop             
  nop                                           #  24    0xb59ed  1      OPC=nop             
  nop                                           #  25    0xb59ee  1      OPC=nop             
  nop                                           #  26    0xb59ef  1      OPC=nop             
  nop                                           #  27    0xb59f0  1      OPC=nop             
  nop                                           #  28    0xb59f1  1      OPC=nop             
  nop                                           #  29    0xb59f2  1      OPC=nop             
  nop                                           #  30    0xb59f3  1      OPC=nop             
  nop                                           #  31    0xb59f4  1      OPC=nop             
  nop                                           #  32    0xb59f5  1      OPC=nop             
  nop                                           #  33    0xb59f6  1      OPC=nop             
  nop                                           #  34    0xb59f7  1      OPC=nop             
  nop                                           #  35    0xb59f8  1      OPC=nop             
  nop                                           #  36    0xb59f9  1      OPC=nop             
  nop                                           #  37    0xb59fa  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb59fb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5a00  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5a02  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5a07  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb5a0a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb5a0d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb5a0e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5a10  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5a17  1      OPC=nop             
  nop                                           #  47    0xb5a18  1      OPC=nop             
  nop                                           #  48    0xb5a19  1      OPC=nop             
  nop                                           #  49    0xb5a1a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb5a1b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb5a1e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5a21  1      OPC=nop             
  nop                                           #  53    0xb5a22  1      OPC=nop             
  nop                                           #  54    0xb5a23  1      OPC=nop             
  nop                                           #  55    0xb5a24  1      OPC=nop             
  nop                                           #  56    0xb5a25  1      OPC=nop             
  nop                                           #  57    0xb5a26  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5a27  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5a29  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb5a2d  1      OPC=nop             
  nop                                           #  61    0xb5a2e  1      OPC=nop             
  nop                                           #  62    0xb5a2f  1      OPC=nop             
  nop                                           #  63    0xb5a30  1      OPC=nop             
  nop                                           #  64    0xb5a31  1      OPC=nop             
  nop                                           #  65    0xb5a32  1      OPC=nop             
  nop                                           #  66    0xb5a33  1      OPC=nop             
  nop                                           #  67    0xb5a34  1      OPC=nop             
  nop                                           #  68    0xb5a35  1      OPC=nop             
  nop                                           #  69    0xb5a36  1      OPC=nop             
  nop                                           #  70    0xb5a37  1      OPC=nop             
  nop                                           #  71    0xb5a38  1      OPC=nop             
  nop                                           #  72    0xb5a39  1      OPC=nop             
  nop                                           #  73    0xb5a3a  1      OPC=nop             
  nop                                           #  74    0xb5a3b  1      OPC=nop             
  nop                                           #  75    0xb5a3c  1      OPC=nop             
  nop                                           #  76    0xb5a3d  1      OPC=nop             
  nop                                           #  77    0xb5a3e  1      OPC=nop             
  nop                                           #  78    0xb5a3f  1      OPC=nop             
  nop                                           #  79    0xb5a40  1      OPC=nop             
  nop                                           #  80    0xb5a41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5a42  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5a47  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb5a4b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb5a4d  1      OPC=nop             
  nop                                           #  85    0xb5a4e  1      OPC=nop             
  nop                                           #  86    0xb5a4f  1      OPC=nop             
  nop                                           #  87    0xb5a50  1      OPC=nop             
  nop                                           #  88    0xb5a51  1      OPC=nop             
  nop                                           #  89    0xb5a52  1      OPC=nop             
  nop                                           #  90    0xb5a53  1      OPC=nop             
  nop                                           #  91    0xb5a54  1      OPC=nop             
  nop                                           #  92    0xb5a55  1      OPC=nop             
  nop                                           #  93    0xb5a56  1      OPC=nop             
  nop                                           #  94    0xb5a57  1      OPC=nop             
  nop                                           #  95    0xb5a58  1      OPC=nop             
  nop                                           #  96    0xb5a59  1      OPC=nop             
  nop                                           #  97    0xb5a5a  1      OPC=nop             
  nop                                           #  98    0xb5a5b  1      OPC=nop             
  nop                                           #  99    0xb5a5c  1      OPC=nop             
  nop                                           #  100   0xb5a5d  1      OPC=nop             
  nop                                           #  101   0xb5a5e  1      OPC=nop             
  nop                                           #  102   0xb5a5f  1      OPC=nop             
  nop                                           #  103   0xb5a60  1      OPC=nop             
  nop                                           #  104   0xb5a61  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5a62  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIwEC2Ej, .-_ZNSt7collateIwEC2Ej

