  .text
  .globl _ZNSt8numpunctIwEC2EPij
  .type _ZNSt8numpunctIwEC2EPij, @function

#! file-offset 0xf68e0
#! rip-offset  0xb68e0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2EPij:                              #        0xb68e0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb68e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb68e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb68e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0xb68e5  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0xb68e7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0xb68e9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0xb68ec  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0xb68ef  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0xb68f1  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb68f3  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0xb68fb  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0xb68fe  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0xb6900  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb6902  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0xb690b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb690d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0xb6912  1      OPC=nop             
  nop                                                  #  18    0xb6913  1      OPC=nop             
  nop                                                  #  19    0xb6914  1      OPC=nop             
  nop                                                  #  20    0xb6915  1      OPC=nop             
  nop                                                  #  21    0xb6916  1      OPC=nop             
  nop                                                  #  22    0xb6917  1      OPC=nop             
  nop                                                  #  23    0xb6918  1      OPC=nop             
  nop                                                  #  24    0xb6919  1      OPC=nop             
  nop                                                  #  25    0xb691a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb691b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0xb6920  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0xb6923  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0xb6926  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0xb6927  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0xb6929  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0xb6930  1      OPC=nop             
  nop                                                  #  33    0xb6931  1      OPC=nop             
  nop                                                  #  34    0xb6932  1      OPC=nop             
  nop                                                  #  35    0xb6933  1      OPC=nop             
  addq %r15, %r11                                      #  36    0xb6934  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0xb6937  3      OPC=jmpq_r64        
  nop                                                  #  38    0xb693a  1      OPC=nop             
  nop                                                  #  39    0xb693b  1      OPC=nop             
  nop                                                  #  40    0xb693c  1      OPC=nop             
  nop                                                  #  41    0xb693d  1      OPC=nop             
  nop                                                  #  42    0xb693e  1      OPC=nop             
  nop                                                  #  43    0xb693f  1      OPC=nop             
  nop                                                  #  44    0xb6940  1      OPC=nop             
  nop                                                  #  45    0xb6941  1      OPC=nop             
  nop                                                  #  46    0xb6942  1      OPC=nop             
  nop                                                  #  47    0xb6943  1      OPC=nop             
  nop                                                  #  48    0xb6944  1      OPC=nop             
  nop                                                  #  49    0xb6945  1      OPC=nop             
  nop                                                  #  50    0xb6946  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0xb6947  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0xb6949  4      OPC=movl_m32_r32    
  nop                                                  #  53    0xb694d  1      OPC=nop             
  nop                                                  #  54    0xb694e  1      OPC=nop             
  nop                                                  #  55    0xb694f  1      OPC=nop             
  nop                                                  #  56    0xb6950  1      OPC=nop             
  nop                                                  #  57    0xb6951  1      OPC=nop             
  nop                                                  #  58    0xb6952  1      OPC=nop             
  nop                                                  #  59    0xb6953  1      OPC=nop             
  nop                                                  #  60    0xb6954  1      OPC=nop             
  nop                                                  #  61    0xb6955  1      OPC=nop             
  nop                                                  #  62    0xb6956  1      OPC=nop             
  nop                                                  #  63    0xb6957  1      OPC=nop             
  nop                                                  #  64    0xb6958  1      OPC=nop             
  nop                                                  #  65    0xb6959  1      OPC=nop             
  nop                                                  #  66    0xb695a  1      OPC=nop             
  nop                                                  #  67    0xb695b  1      OPC=nop             
  nop                                                  #  68    0xb695c  1      OPC=nop             
  nop                                                  #  69    0xb695d  1      OPC=nop             
  nop                                                  #  70    0xb695e  1      OPC=nop             
  nop                                                  #  71    0xb695f  1      OPC=nop             
  nop                                                  #  72    0xb6960  1      OPC=nop             
  nop                                                  #  73    0xb6961  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb6962  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0xb6967  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0xb696b  2      OPC=movl_r32_r32    
  nop                                                  #  77    0xb696d  1      OPC=nop             
  nop                                                  #  78    0xb696e  1      OPC=nop             
  nop                                                  #  79    0xb696f  1      OPC=nop             
  nop                                                  #  80    0xb6970  1      OPC=nop             
  nop                                                  #  81    0xb6971  1      OPC=nop             
  nop                                                  #  82    0xb6972  1      OPC=nop             
  nop                                                  #  83    0xb6973  1      OPC=nop             
  nop                                                  #  84    0xb6974  1      OPC=nop             
  nop                                                  #  85    0xb6975  1      OPC=nop             
  nop                                                  #  86    0xb6976  1      OPC=nop             
  nop                                                  #  87    0xb6977  1      OPC=nop             
  nop                                                  #  88    0xb6978  1      OPC=nop             
  nop                                                  #  89    0xb6979  1      OPC=nop             
  nop                                                  #  90    0xb697a  1      OPC=nop             
  nop                                                  #  91    0xb697b  1      OPC=nop             
  nop                                                  #  92    0xb697c  1      OPC=nop             
  nop                                                  #  93    0xb697d  1      OPC=nop             
  nop                                                  #  94    0xb697e  1      OPC=nop             
  nop                                                  #  95    0xb697f  1      OPC=nop             
  nop                                                  #  96    0xb6980  1      OPC=nop             
  nop                                                  #  97    0xb6981  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0xb6982  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2EPij, .-_ZNSt8numpunctIwEC2EPij

