  .text
  .globl _ZNSt7collateIwEC2EPij
  .type _ZNSt7collateIwEC2EPij, @function

#! file-offset 0xf4e60
#! rip-offset  0xb4e60
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC2EPij:                            #        0xb4e60  0      OPC=<label>         
  pushq %rbx                                        #  1     0xb4e60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xb4e61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xb4e63  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xb4e65  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xb4e68  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xb4e6b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xb4e6d  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb4e6f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xb4e77  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xb4e7a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xb4e7e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xb4e80  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xb4e84  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb4e86  5      OPC=movl_m32_r32    
  nop                                               #  15    0xb4e8b  1      OPC=nop             
  nop                                               #  16    0xb4e8c  1      OPC=nop             
  nop                                               #  17    0xb4e8d  1      OPC=nop             
  nop                                               #  18    0xb4e8e  1      OPC=nop             
  nop                                               #  19    0xb4e8f  1      OPC=nop             
  nop                                               #  20    0xb4e90  1      OPC=nop             
  nop                                               #  21    0xb4e91  1      OPC=nop             
  nop                                               #  22    0xb4e92  1      OPC=nop             
  nop                                               #  23    0xb4e93  1      OPC=nop             
  nop                                               #  24    0xb4e94  1      OPC=nop             
  nop                                               #  25    0xb4e95  1      OPC=nop             
  nop                                               #  26    0xb4e96  1      OPC=nop             
  nop                                               #  27    0xb4e97  1      OPC=nop             
  nop                                               #  28    0xb4e98  1      OPC=nop             
  nop                                               #  29    0xb4e99  1      OPC=nop             
  nop                                               #  30    0xb4e9a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb4e9b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xb4ea0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb4ea2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xb4ea7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xb4eaa  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xb4ead  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xb4eae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xb4eb0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xb4eb7  1      OPC=nop             
  nop                                               #  40    0xb4eb8  1      OPC=nop             
  nop                                               #  41    0xb4eb9  1      OPC=nop             
  nop                                               #  42    0xb4eba  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xb4ebb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xb4ebe  3      OPC=jmpq_r64        
  nop                                               #  45    0xb4ec1  1      OPC=nop             
  nop                                               #  46    0xb4ec2  1      OPC=nop             
  nop                                               #  47    0xb4ec3  1      OPC=nop             
  nop                                               #  48    0xb4ec4  1      OPC=nop             
  nop                                               #  49    0xb4ec5  1      OPC=nop             
  nop                                               #  50    0xb4ec6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xb4ec7  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0xb4ec9  3      OPC=movl_m32_r32    
  nop                                               #  53    0xb4ecc  1      OPC=nop             
  nop                                               #  54    0xb4ecd  1      OPC=nop             
  nop                                               #  55    0xb4ece  1      OPC=nop             
  nop                                               #  56    0xb4ecf  1      OPC=nop             
  nop                                               #  57    0xb4ed0  1      OPC=nop             
  nop                                               #  58    0xb4ed1  1      OPC=nop             
  nop                                               #  59    0xb4ed2  1      OPC=nop             
  nop                                               #  60    0xb4ed3  1      OPC=nop             
  nop                                               #  61    0xb4ed4  1      OPC=nop             
  nop                                               #  62    0xb4ed5  1      OPC=nop             
  nop                                               #  63    0xb4ed6  1      OPC=nop             
  nop                                               #  64    0xb4ed7  1      OPC=nop             
  nop                                               #  65    0xb4ed8  1      OPC=nop             
  nop                                               #  66    0xb4ed9  1      OPC=nop             
  nop                                               #  67    0xb4eda  1      OPC=nop             
  nop                                               #  68    0xb4edb  1      OPC=nop             
  nop                                               #  69    0xb4edc  1      OPC=nop             
  nop                                               #  70    0xb4edd  1      OPC=nop             
  nop                                               #  71    0xb4ede  1      OPC=nop             
  nop                                               #  72    0xb4edf  1      OPC=nop             
  nop                                               #  73    0xb4ee0  1      OPC=nop             
  nop                                               #  74    0xb4ee1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb4ee2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0xb4ee7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0xb4eea  2      OPC=movl_r32_r32    
  nop                                               #  78    0xb4eec  1      OPC=nop             
  nop                                               #  79    0xb4eed  1      OPC=nop             
  nop                                               #  80    0xb4eee  1      OPC=nop             
  nop                                               #  81    0xb4eef  1      OPC=nop             
  nop                                               #  82    0xb4ef0  1      OPC=nop             
  nop                                               #  83    0xb4ef1  1      OPC=nop             
  nop                                               #  84    0xb4ef2  1      OPC=nop             
  nop                                               #  85    0xb4ef3  1      OPC=nop             
  nop                                               #  86    0xb4ef4  1      OPC=nop             
  nop                                               #  87    0xb4ef5  1      OPC=nop             
  nop                                               #  88    0xb4ef6  1      OPC=nop             
  nop                                               #  89    0xb4ef7  1      OPC=nop             
  nop                                               #  90    0xb4ef8  1      OPC=nop             
  nop                                               #  91    0xb4ef9  1      OPC=nop             
  nop                                               #  92    0xb4efa  1      OPC=nop             
  nop                                               #  93    0xb4efb  1      OPC=nop             
  nop                                               #  94    0xb4efc  1      OPC=nop             
  nop                                               #  95    0xb4efd  1      OPC=nop             
  nop                                               #  96    0xb4efe  1      OPC=nop             
  nop                                               #  97    0xb4eff  1      OPC=nop             
  nop                                               #  98    0xb4f00  1      OPC=nop             
  nop                                               #  99    0xb4f01  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0xb4f02  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIwEC2EPij, .-_ZNSt7collateIwEC2EPij

