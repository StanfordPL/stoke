  .text
  .globl _ZNSt7collateIcEC2EPij
  .type _ZNSt7collateIcEC2EPij, @function

#! file-offset 0xbcac0
#! rip-offset  0x7cac0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC2EPij:                            #        0x7cac0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x7cac0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0x7cac1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0x7cac3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0x7cac5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0x7cac8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0x7cacb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0x7cacd  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7cacf  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0x7cad7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0x7cada  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0x7cade  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0x7cae0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0x7cae4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7cae6  5      OPC=movl_m32_r32    
  nop                                               #  15    0x7caeb  1      OPC=nop             
  nop                                               #  16    0x7caec  1      OPC=nop             
  nop                                               #  17    0x7caed  1      OPC=nop             
  nop                                               #  18    0x7caee  1      OPC=nop             
  nop                                               #  19    0x7caef  1      OPC=nop             
  nop                                               #  20    0x7caf0  1      OPC=nop             
  nop                                               #  21    0x7caf1  1      OPC=nop             
  nop                                               #  22    0x7caf2  1      OPC=nop             
  nop                                               #  23    0x7caf3  1      OPC=nop             
  nop                                               #  24    0x7caf4  1      OPC=nop             
  nop                                               #  25    0x7caf5  1      OPC=nop             
  nop                                               #  26    0x7caf6  1      OPC=nop             
  nop                                               #  27    0x7caf7  1      OPC=nop             
  nop                                               #  28    0x7caf8  1      OPC=nop             
  nop                                               #  29    0x7caf9  1      OPC=nop             
  nop                                               #  30    0x7cafa  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7cafb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0x7cb00  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7cb02  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0x7cb07  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0x7cb0a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0x7cb0d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0x7cb0e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0x7cb10  7      OPC=andl_r32_imm32  
  nop                                               #  39    0x7cb17  1      OPC=nop             
  nop                                               #  40    0x7cb18  1      OPC=nop             
  nop                                               #  41    0x7cb19  1      OPC=nop             
  nop                                               #  42    0x7cb1a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0x7cb1b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0x7cb1e  3      OPC=jmpq_r64        
  nop                                               #  45    0x7cb21  1      OPC=nop             
  nop                                               #  46    0x7cb22  1      OPC=nop             
  nop                                               #  47    0x7cb23  1      OPC=nop             
  nop                                               #  48    0x7cb24  1      OPC=nop             
  nop                                               #  49    0x7cb25  1      OPC=nop             
  nop                                               #  50    0x7cb26  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0x7cb27  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0x7cb29  3      OPC=movl_m32_r32    
  nop                                               #  53    0x7cb2c  1      OPC=nop             
  nop                                               #  54    0x7cb2d  1      OPC=nop             
  nop                                               #  55    0x7cb2e  1      OPC=nop             
  nop                                               #  56    0x7cb2f  1      OPC=nop             
  nop                                               #  57    0x7cb30  1      OPC=nop             
  nop                                               #  58    0x7cb31  1      OPC=nop             
  nop                                               #  59    0x7cb32  1      OPC=nop             
  nop                                               #  60    0x7cb33  1      OPC=nop             
  nop                                               #  61    0x7cb34  1      OPC=nop             
  nop                                               #  62    0x7cb35  1      OPC=nop             
  nop                                               #  63    0x7cb36  1      OPC=nop             
  nop                                               #  64    0x7cb37  1      OPC=nop             
  nop                                               #  65    0x7cb38  1      OPC=nop             
  nop                                               #  66    0x7cb39  1      OPC=nop             
  nop                                               #  67    0x7cb3a  1      OPC=nop             
  nop                                               #  68    0x7cb3b  1      OPC=nop             
  nop                                               #  69    0x7cb3c  1      OPC=nop             
  nop                                               #  70    0x7cb3d  1      OPC=nop             
  nop                                               #  71    0x7cb3e  1      OPC=nop             
  nop                                               #  72    0x7cb3f  1      OPC=nop             
  nop                                               #  73    0x7cb40  1      OPC=nop             
  nop                                               #  74    0x7cb41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7cb42  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0x7cb47  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0x7cb4a  2      OPC=movl_r32_r32    
  nop                                               #  78    0x7cb4c  1      OPC=nop             
  nop                                               #  79    0x7cb4d  1      OPC=nop             
  nop                                               #  80    0x7cb4e  1      OPC=nop             
  nop                                               #  81    0x7cb4f  1      OPC=nop             
  nop                                               #  82    0x7cb50  1      OPC=nop             
  nop                                               #  83    0x7cb51  1      OPC=nop             
  nop                                               #  84    0x7cb52  1      OPC=nop             
  nop                                               #  85    0x7cb53  1      OPC=nop             
  nop                                               #  86    0x7cb54  1      OPC=nop             
  nop                                               #  87    0x7cb55  1      OPC=nop             
  nop                                               #  88    0x7cb56  1      OPC=nop             
  nop                                               #  89    0x7cb57  1      OPC=nop             
  nop                                               #  90    0x7cb58  1      OPC=nop             
  nop                                               #  91    0x7cb59  1      OPC=nop             
  nop                                               #  92    0x7cb5a  1      OPC=nop             
  nop                                               #  93    0x7cb5b  1      OPC=nop             
  nop                                               #  94    0x7cb5c  1      OPC=nop             
  nop                                               #  95    0x7cb5d  1      OPC=nop             
  nop                                               #  96    0x7cb5e  1      OPC=nop             
  nop                                               #  97    0x7cb5f  1      OPC=nop             
  nop                                               #  98    0x7cb60  1      OPC=nop             
  nop                                               #  99    0x7cb61  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0x7cb62  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIcEC2EPij, .-_ZNSt7collateIcEC2EPij

