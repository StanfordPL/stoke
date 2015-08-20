  .text
  .globl _ZNSt8messagesIwED2Ev
  .type _ZNSt8messagesIwED2Ev, @function

#! file-offset 0xf4900
#! rip-offset  0xb4900
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED2Ev:                               #        0xb4900  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4900  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4901  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4903  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4906  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4909  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb490c  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb490e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4916  1      OPC=nop             
  nop                                                 #  9     0xb4917  1      OPC=nop             
  nop                                                 #  10    0xb4918  1      OPC=nop             
  nop                                                 #  11    0xb4919  1      OPC=nop             
  nop                                                 #  12    0xb491a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb491b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4920  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4922  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4925  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4928  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4929  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb492e  1      OPC=nop             
  nop                                                 #  20    0xb492f  1      OPC=nop             
  nop                                                 #  21    0xb4930  1      OPC=nop             
  nop                                                 #  22    0xb4931  1      OPC=nop             
  nop                                                 #  23    0xb4932  1      OPC=nop             
  nop                                                 #  24    0xb4933  1      OPC=nop             
  nop                                                 #  25    0xb4934  1      OPC=nop             
  nop                                                 #  26    0xb4935  1      OPC=nop             
  nop                                                 #  27    0xb4936  1      OPC=nop             
  nop                                                 #  28    0xb4937  1      OPC=nop             
  nop                                                 #  29    0xb4938  1      OPC=nop             
  nop                                                 #  30    0xb4939  1      OPC=nop             
  nop                                                 #  31    0xb493a  1      OPC=nop             
  nop                                                 #  32    0xb493b  1      OPC=nop             
  nop                                                 #  33    0xb493c  1      OPC=nop             
  nop                                                 #  34    0xb493d  1      OPC=nop             
  nop                                                 #  35    0xb493e  1      OPC=nop             
  nop                                                 #  36    0xb493f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4940  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4942  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4946  1      OPC=nop             
  nop                                                 #  40    0xb4947  1      OPC=nop             
  nop                                                 #  41    0xb4948  1      OPC=nop             
  nop                                                 #  42    0xb4949  1      OPC=nop             
  nop                                                 #  43    0xb494a  1      OPC=nop             
  nop                                                 #  44    0xb494b  1      OPC=nop             
  nop                                                 #  45    0xb494c  1      OPC=nop             
  nop                                                 #  46    0xb494d  1      OPC=nop             
  nop                                                 #  47    0xb494e  1      OPC=nop             
  nop                                                 #  48    0xb494f  1      OPC=nop             
  nop                                                 #  49    0xb4950  1      OPC=nop             
  nop                                                 #  50    0xb4951  1      OPC=nop             
  nop                                                 #  51    0xb4952  1      OPC=nop             
  nop                                                 #  52    0xb4953  1      OPC=nop             
  nop                                                 #  53    0xb4954  1      OPC=nop             
  nop                                                 #  54    0xb4955  1      OPC=nop             
  nop                                                 #  55    0xb4956  1      OPC=nop             
  nop                                                 #  56    0xb4957  1      OPC=nop             
  nop                                                 #  57    0xb4958  1      OPC=nop             
  nop                                                 #  58    0xb4959  1      OPC=nop             
  nop                                                 #  59    0xb495a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb495b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb4960  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb4964  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb4966  1      OPC=nop             
  nop                                                 #  64    0xb4967  1      OPC=nop             
  nop                                                 #  65    0xb4968  1      OPC=nop             
  nop                                                 #  66    0xb4969  1      OPC=nop             
  nop                                                 #  67    0xb496a  1      OPC=nop             
  nop                                                 #  68    0xb496b  1      OPC=nop             
  nop                                                 #  69    0xb496c  1      OPC=nop             
  nop                                                 #  70    0xb496d  1      OPC=nop             
  nop                                                 #  71    0xb496e  1      OPC=nop             
  nop                                                 #  72    0xb496f  1      OPC=nop             
  nop                                                 #  73    0xb4970  1      OPC=nop             
  nop                                                 #  74    0xb4971  1      OPC=nop             
  nop                                                 #  75    0xb4972  1      OPC=nop             
  nop                                                 #  76    0xb4973  1      OPC=nop             
  nop                                                 #  77    0xb4974  1      OPC=nop             
  nop                                                 #  78    0xb4975  1      OPC=nop             
  nop                                                 #  79    0xb4976  1      OPC=nop             
  nop                                                 #  80    0xb4977  1      OPC=nop             
  nop                                                 #  81    0xb4978  1      OPC=nop             
  nop                                                 #  82    0xb4979  1      OPC=nop             
  nop                                                 #  83    0xb497a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb497b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED2Ev, .-_ZNSt8messagesIwED2Ev

