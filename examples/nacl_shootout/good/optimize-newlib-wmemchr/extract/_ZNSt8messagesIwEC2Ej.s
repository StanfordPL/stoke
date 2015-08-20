  .text
  .globl _ZNSt8messagesIwEC2Ej
  .type _ZNSt8messagesIwEC2Ej, @function

#! file-offset 0xf5520
#! rip-offset  0xb5520
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwEC2Ej:                         #        0xb5520  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5520  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5521  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5523  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5525  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5528  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb552b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb552d  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)               #  8     0xb552f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5537  3      OPC=setne_r8        
  nop                                           #  10    0xb553a  1      OPC=nop             
  nop                                           #  11    0xb553b  1      OPC=nop             
  nop                                           #  12    0xb553c  1      OPC=nop             
  nop                                           #  13    0xb553d  1      OPC=nop             
  nop                                           #  14    0xb553e  1      OPC=nop             
  nop                                           #  15    0xb553f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5540  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5542  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5547  1      OPC=nop             
  nop                                           #  19    0xb5548  1      OPC=nop             
  nop                                           #  20    0xb5549  1      OPC=nop             
  nop                                           #  21    0xb554a  1      OPC=nop             
  nop                                           #  22    0xb554b  1      OPC=nop             
  nop                                           #  23    0xb554c  1      OPC=nop             
  nop                                           #  24    0xb554d  1      OPC=nop             
  nop                                           #  25    0xb554e  1      OPC=nop             
  nop                                           #  26    0xb554f  1      OPC=nop             
  nop                                           #  27    0xb5550  1      OPC=nop             
  nop                                           #  28    0xb5551  1      OPC=nop             
  nop                                           #  29    0xb5552  1      OPC=nop             
  nop                                           #  30    0xb5553  1      OPC=nop             
  nop                                           #  31    0xb5554  1      OPC=nop             
  nop                                           #  32    0xb5555  1      OPC=nop             
  nop                                           #  33    0xb5556  1      OPC=nop             
  nop                                           #  34    0xb5557  1      OPC=nop             
  nop                                           #  35    0xb5558  1      OPC=nop             
  nop                                           #  36    0xb5559  1      OPC=nop             
  nop                                           #  37    0xb555a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb555b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5560  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5562  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5567  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb556a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb556d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb556e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5570  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5577  1      OPC=nop             
  nop                                           #  47    0xb5578  1      OPC=nop             
  nop                                           #  48    0xb5579  1      OPC=nop             
  nop                                           #  49    0xb557a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb557b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb557e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5581  1      OPC=nop             
  nop                                           #  53    0xb5582  1      OPC=nop             
  nop                                           #  54    0xb5583  1      OPC=nop             
  nop                                           #  55    0xb5584  1      OPC=nop             
  nop                                           #  56    0xb5585  1      OPC=nop             
  nop                                           #  57    0xb5586  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5587  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5589  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb558d  1      OPC=nop             
  nop                                           #  61    0xb558e  1      OPC=nop             
  nop                                           #  62    0xb558f  1      OPC=nop             
  nop                                           #  63    0xb5590  1      OPC=nop             
  nop                                           #  64    0xb5591  1      OPC=nop             
  nop                                           #  65    0xb5592  1      OPC=nop             
  nop                                           #  66    0xb5593  1      OPC=nop             
  nop                                           #  67    0xb5594  1      OPC=nop             
  nop                                           #  68    0xb5595  1      OPC=nop             
  nop                                           #  69    0xb5596  1      OPC=nop             
  nop                                           #  70    0xb5597  1      OPC=nop             
  nop                                           #  71    0xb5598  1      OPC=nop             
  nop                                           #  72    0xb5599  1      OPC=nop             
  nop                                           #  73    0xb559a  1      OPC=nop             
  nop                                           #  74    0xb559b  1      OPC=nop             
  nop                                           #  75    0xb559c  1      OPC=nop             
  nop                                           #  76    0xb559d  1      OPC=nop             
  nop                                           #  77    0xb559e  1      OPC=nop             
  nop                                           #  78    0xb559f  1      OPC=nop             
  nop                                           #  79    0xb55a0  1      OPC=nop             
  nop                                           #  80    0xb55a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb55a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb55a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb55ab  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb55ad  1      OPC=nop             
  nop                                           #  85    0xb55ae  1      OPC=nop             
  nop                                           #  86    0xb55af  1      OPC=nop             
  nop                                           #  87    0xb55b0  1      OPC=nop             
  nop                                           #  88    0xb55b1  1      OPC=nop             
  nop                                           #  89    0xb55b2  1      OPC=nop             
  nop                                           #  90    0xb55b3  1      OPC=nop             
  nop                                           #  91    0xb55b4  1      OPC=nop             
  nop                                           #  92    0xb55b5  1      OPC=nop             
  nop                                           #  93    0xb55b6  1      OPC=nop             
  nop                                           #  94    0xb55b7  1      OPC=nop             
  nop                                           #  95    0xb55b8  1      OPC=nop             
  nop                                           #  96    0xb55b9  1      OPC=nop             
  nop                                           #  97    0xb55ba  1      OPC=nop             
  nop                                           #  98    0xb55bb  1      OPC=nop             
  nop                                           #  99    0xb55bc  1      OPC=nop             
  nop                                           #  100   0xb55bd  1      OPC=nop             
  nop                                           #  101   0xb55be  1      OPC=nop             
  nop                                           #  102   0xb55bf  1      OPC=nop             
  nop                                           #  103   0xb55c0  1      OPC=nop             
  nop                                           #  104   0xb55c1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb55c2  5      OPC=callq_label     
                                                                                             
.size _ZNSt8messagesIwEC2Ej, .-_ZNSt8messagesIwEC2Ej

