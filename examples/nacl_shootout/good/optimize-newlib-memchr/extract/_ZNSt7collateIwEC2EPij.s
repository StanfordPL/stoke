  .text
  .globl _ZNSt7collateIwEC2EPij
  .type _ZNSt7collateIwEC2EPij, @function

#! file-offset 0xf5880
#! rip-offset  0xb5880
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC2EPij:                            #        0xb5880  0      OPC=<label>         
  pushq %rbx                                        #  1     0xb5880  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xb5881  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xb5883  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xb5885  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xb5888  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xb588b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xb588d  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb588f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xb5897  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xb589a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xb589e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xb58a0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xb58a4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb58a6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xb58ab  1      OPC=nop             
  nop                                               #  16    0xb58ac  1      OPC=nop             
  nop                                               #  17    0xb58ad  1      OPC=nop             
  nop                                               #  18    0xb58ae  1      OPC=nop             
  nop                                               #  19    0xb58af  1      OPC=nop             
  nop                                               #  20    0xb58b0  1      OPC=nop             
  nop                                               #  21    0xb58b1  1      OPC=nop             
  nop                                               #  22    0xb58b2  1      OPC=nop             
  nop                                               #  23    0xb58b3  1      OPC=nop             
  nop                                               #  24    0xb58b4  1      OPC=nop             
  nop                                               #  25    0xb58b5  1      OPC=nop             
  nop                                               #  26    0xb58b6  1      OPC=nop             
  nop                                               #  27    0xb58b7  1      OPC=nop             
  nop                                               #  28    0xb58b8  1      OPC=nop             
  nop                                               #  29    0xb58b9  1      OPC=nop             
  nop                                               #  30    0xb58ba  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb58bb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xb58c0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb58c2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xb58c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xb58ca  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xb58cd  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xb58ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xb58d0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xb58d7  1      OPC=nop             
  nop                                               #  40    0xb58d8  1      OPC=nop             
  nop                                               #  41    0xb58d9  1      OPC=nop             
  nop                                               #  42    0xb58da  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xb58db  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xb58de  3      OPC=jmpq_r64        
  nop                                               #  45    0xb58e1  1      OPC=nop             
  nop                                               #  46    0xb58e2  1      OPC=nop             
  nop                                               #  47    0xb58e3  1      OPC=nop             
  nop                                               #  48    0xb58e4  1      OPC=nop             
  nop                                               #  49    0xb58e5  1      OPC=nop             
  nop                                               #  50    0xb58e6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xb58e7  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0xb58e9  3      OPC=movl_m32_r32    
  nop                                               #  53    0xb58ec  1      OPC=nop             
  nop                                               #  54    0xb58ed  1      OPC=nop             
  nop                                               #  55    0xb58ee  1      OPC=nop             
  nop                                               #  56    0xb58ef  1      OPC=nop             
  nop                                               #  57    0xb58f0  1      OPC=nop             
  nop                                               #  58    0xb58f1  1      OPC=nop             
  nop                                               #  59    0xb58f2  1      OPC=nop             
  nop                                               #  60    0xb58f3  1      OPC=nop             
  nop                                               #  61    0xb58f4  1      OPC=nop             
  nop                                               #  62    0xb58f5  1      OPC=nop             
  nop                                               #  63    0xb58f6  1      OPC=nop             
  nop                                               #  64    0xb58f7  1      OPC=nop             
  nop                                               #  65    0xb58f8  1      OPC=nop             
  nop                                               #  66    0xb58f9  1      OPC=nop             
  nop                                               #  67    0xb58fa  1      OPC=nop             
  nop                                               #  68    0xb58fb  1      OPC=nop             
  nop                                               #  69    0xb58fc  1      OPC=nop             
  nop                                               #  70    0xb58fd  1      OPC=nop             
  nop                                               #  71    0xb58fe  1      OPC=nop             
  nop                                               #  72    0xb58ff  1      OPC=nop             
  nop                                               #  73    0xb5900  1      OPC=nop             
  nop                                               #  74    0xb5901  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb5902  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0xb5907  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0xb590a  2      OPC=movl_r32_r32    
  nop                                               #  78    0xb590c  1      OPC=nop             
  nop                                               #  79    0xb590d  1      OPC=nop             
  nop                                               #  80    0xb590e  1      OPC=nop             
  nop                                               #  81    0xb590f  1      OPC=nop             
  nop                                               #  82    0xb5910  1      OPC=nop             
  nop                                               #  83    0xb5911  1      OPC=nop             
  nop                                               #  84    0xb5912  1      OPC=nop             
  nop                                               #  85    0xb5913  1      OPC=nop             
  nop                                               #  86    0xb5914  1      OPC=nop             
  nop                                               #  87    0xb5915  1      OPC=nop             
  nop                                               #  88    0xb5916  1      OPC=nop             
  nop                                               #  89    0xb5917  1      OPC=nop             
  nop                                               #  90    0xb5918  1      OPC=nop             
  nop                                               #  91    0xb5919  1      OPC=nop             
  nop                                               #  92    0xb591a  1      OPC=nop             
  nop                                               #  93    0xb591b  1      OPC=nop             
  nop                                               #  94    0xb591c  1      OPC=nop             
  nop                                               #  95    0xb591d  1      OPC=nop             
  nop                                               #  96    0xb591e  1      OPC=nop             
  nop                                               #  97    0xb591f  1      OPC=nop             
  nop                                               #  98    0xb5920  1      OPC=nop             
  nop                                               #  99    0xb5921  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0xb5922  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIwEC2EPij, .-_ZNSt7collateIwEC2EPij

