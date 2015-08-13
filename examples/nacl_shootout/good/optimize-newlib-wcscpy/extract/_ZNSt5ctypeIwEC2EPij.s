  .text
  .globl _ZNSt5ctypeIwEC2EPij
  .type _ZNSt5ctypeIwEC2EPij, @function

#! file-offset 0x124fa0
#! rip-offset  0xe4fa0
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwEC2EPij:                              #        0xe4fa0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe4fa0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe4fa1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe4fa3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe4fa5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe4fa8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe4fab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe4fad  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe4faf  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe4fb7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe4fba  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe4fbe  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe4fc0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe4fc4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe4fc6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe4fcb  1      OPC=nop             
  nop                                               #  16    0xe4fcc  1      OPC=nop             
  nop                                               #  17    0xe4fcd  1      OPC=nop             
  nop                                               #  18    0xe4fce  1      OPC=nop             
  nop                                               #  19    0xe4fcf  1      OPC=nop             
  nop                                               #  20    0xe4fd0  1      OPC=nop             
  nop                                               #  21    0xe4fd1  1      OPC=nop             
  nop                                               #  22    0xe4fd2  1      OPC=nop             
  nop                                               #  23    0xe4fd3  1      OPC=nop             
  nop                                               #  24    0xe4fd4  1      OPC=nop             
  nop                                               #  25    0xe4fd5  1      OPC=nop             
  nop                                               #  26    0xe4fd6  1      OPC=nop             
  nop                                               #  27    0xe4fd7  1      OPC=nop             
  nop                                               #  28    0xe4fd8  1      OPC=nop             
  nop                                               #  29    0xe4fd9  1      OPC=nop             
  nop                                               #  30    0xe4fda  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe4fdb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe4fe0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe4fe2  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  34    0xe4fe7  2      OPC=movl_r32_r32    
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe4fe9  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                   #  36    0xe4fef  2      OPC=movl_r32_r32    
  nop                                               #  37    0xe4ff1  1      OPC=nop             
  nop                                               #  38    0xe4ff2  1      OPC=nop             
  nop                                               #  39    0xe4ff3  1      OPC=nop             
  nop                                               #  40    0xe4ff4  1      OPC=nop             
  nop                                               #  41    0xe4ff5  1      OPC=nop             
  nop                                               #  42    0xe4ff6  1      OPC=nop             
  nop                                               #  43    0xe4ff7  1      OPC=nop             
  nop                                               #  44    0xe4ff8  1      OPC=nop             
  nop                                               #  45    0xe4ff9  1      OPC=nop             
  nop                                               #  46    0xe4ffa  1      OPC=nop             
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe4ffb  5      OPC=callq_label     
  addl $0x10, %esp                                  #  48    0xe5000  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xe5003  3      OPC=addq_r64_r64    
  popq %rbx                                         #  50    0xe5006  1      OPC=popq_r64_1      
  popq %r11                                         #  51    0xe5007  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  52    0xe5009  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xe5010  1      OPC=nop             
  nop                                               #  54    0xe5011  1      OPC=nop             
  nop                                               #  55    0xe5012  1      OPC=nop             
  nop                                               #  56    0xe5013  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xe5014  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xe5017  3      OPC=jmpq_r64        
  nop                                               #  59    0xe501a  1      OPC=nop             
  nop                                               #  60    0xe501b  1      OPC=nop             
  nop                                               #  61    0xe501c  1      OPC=nop             
  nop                                               #  62    0xe501d  1      OPC=nop             
  nop                                               #  63    0xe501e  1      OPC=nop             
  nop                                               #  64    0xe501f  1      OPC=nop             
  nop                                               #  65    0xe5020  1      OPC=nop             
  nop                                               #  66    0xe5021  1      OPC=nop             
  nop                                               #  67    0xe5022  1      OPC=nop             
  nop                                               #  68    0xe5023  1      OPC=nop             
  nop                                               #  69    0xe5024  1      OPC=nop             
  nop                                               #  70    0xe5025  1      OPC=nop             
  nop                                               #  71    0xe5026  1      OPC=nop             
  movl %ebx, %edi                                   #  72    0xe5027  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  73    0xe5029  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe502b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  75    0xe5033  3      OPC=movl_m32_r32    
  nop                                               #  76    0xe5036  1      OPC=nop             
  nop                                               #  77    0xe5037  1      OPC=nop             
  nop                                               #  78    0xe5038  1      OPC=nop             
  nop                                               #  79    0xe5039  1      OPC=nop             
  nop                                               #  80    0xe503a  1      OPC=nop             
  nop                                               #  81    0xe503b  1      OPC=nop             
  nop                                               #  82    0xe503c  1      OPC=nop             
  nop                                               #  83    0xe503d  1      OPC=nop             
  nop                                               #  84    0xe503e  1      OPC=nop             
  nop                                               #  85    0xe503f  1      OPC=nop             
  nop                                               #  86    0xe5040  1      OPC=nop             
  nop                                               #  87    0xe5041  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe5042  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  89    0xe5047  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  90    0xe504a  2      OPC=movl_r32_r32    
  nop                                               #  91    0xe504c  1      OPC=nop             
  nop                                               #  92    0xe504d  1      OPC=nop             
  nop                                               #  93    0xe504e  1      OPC=nop             
  nop                                               #  94    0xe504f  1      OPC=nop             
  nop                                               #  95    0xe5050  1      OPC=nop             
  nop                                               #  96    0xe5051  1      OPC=nop             
  nop                                               #  97    0xe5052  1      OPC=nop             
  nop                                               #  98    0xe5053  1      OPC=nop             
  nop                                               #  99    0xe5054  1      OPC=nop             
  nop                                               #  100   0xe5055  1      OPC=nop             
  nop                                               #  101   0xe5056  1      OPC=nop             
  nop                                               #  102   0xe5057  1      OPC=nop             
  nop                                               #  103   0xe5058  1      OPC=nop             
  nop                                               #  104   0xe5059  1      OPC=nop             
  nop                                               #  105   0xe505a  1      OPC=nop             
  nop                                               #  106   0xe505b  1      OPC=nop             
  nop                                               #  107   0xe505c  1      OPC=nop             
  nop                                               #  108   0xe505d  1      OPC=nop             
  nop                                               #  109   0xe505e  1      OPC=nop             
  nop                                               #  110   0xe505f  1      OPC=nop             
  nop                                               #  111   0xe5060  1      OPC=nop             
  nop                                               #  112   0xe5061  1      OPC=nop             
  callq ._Unwind_Resume                             #  113   0xe5062  5      OPC=callq_label     
                                                                                                 
.size _ZNSt5ctypeIwEC2EPij, .-_ZNSt5ctypeIwEC2EPij

