  .text
  .globl _ZNSt7collateIwEC1EPij
  .type _ZNSt7collateIwEC1EPij, @function

#! file-offset 0xf57e0
#! rip-offset  0xb57e0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC1EPij:                            #        0xb57e0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xb57e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xb57e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xb57e3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xb57e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xb57e8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xb57eb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xb57ed  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb57ef  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xb57f7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xb57fa  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xb57fe  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xb5800  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xb5804  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb5806  5      OPC=movl_m32_r32    
  nop                                               #  15    0xb580b  1      OPC=nop             
  nop                                               #  16    0xb580c  1      OPC=nop             
  nop                                               #  17    0xb580d  1      OPC=nop             
  nop                                               #  18    0xb580e  1      OPC=nop             
  nop                                               #  19    0xb580f  1      OPC=nop             
  nop                                               #  20    0xb5810  1      OPC=nop             
  nop                                               #  21    0xb5811  1      OPC=nop             
  nop                                               #  22    0xb5812  1      OPC=nop             
  nop                                               #  23    0xb5813  1      OPC=nop             
  nop                                               #  24    0xb5814  1      OPC=nop             
  nop                                               #  25    0xb5815  1      OPC=nop             
  nop                                               #  26    0xb5816  1      OPC=nop             
  nop                                               #  27    0xb5817  1      OPC=nop             
  nop                                               #  28    0xb5818  1      OPC=nop             
  nop                                               #  29    0xb5819  1      OPC=nop             
  nop                                               #  30    0xb581a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb581b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xb5820  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb5822  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xb5827  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xb582a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xb582d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xb582e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xb5830  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xb5837  1      OPC=nop             
  nop                                               #  40    0xb5838  1      OPC=nop             
  nop                                               #  41    0xb5839  1      OPC=nop             
  nop                                               #  42    0xb583a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xb583b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xb583e  3      OPC=jmpq_r64        
  nop                                               #  45    0xb5841  1      OPC=nop             
  nop                                               #  46    0xb5842  1      OPC=nop             
  nop                                               #  47    0xb5843  1      OPC=nop             
  nop                                               #  48    0xb5844  1      OPC=nop             
  nop                                               #  49    0xb5845  1      OPC=nop             
  nop                                               #  50    0xb5846  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xb5847  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0xb5849  3      OPC=movl_m32_r32    
  nop                                               #  53    0xb584c  1      OPC=nop             
  nop                                               #  54    0xb584d  1      OPC=nop             
  nop                                               #  55    0xb584e  1      OPC=nop             
  nop                                               #  56    0xb584f  1      OPC=nop             
  nop                                               #  57    0xb5850  1      OPC=nop             
  nop                                               #  58    0xb5851  1      OPC=nop             
  nop                                               #  59    0xb5852  1      OPC=nop             
  nop                                               #  60    0xb5853  1      OPC=nop             
  nop                                               #  61    0xb5854  1      OPC=nop             
  nop                                               #  62    0xb5855  1      OPC=nop             
  nop                                               #  63    0xb5856  1      OPC=nop             
  nop                                               #  64    0xb5857  1      OPC=nop             
  nop                                               #  65    0xb5858  1      OPC=nop             
  nop                                               #  66    0xb5859  1      OPC=nop             
  nop                                               #  67    0xb585a  1      OPC=nop             
  nop                                               #  68    0xb585b  1      OPC=nop             
  nop                                               #  69    0xb585c  1      OPC=nop             
  nop                                               #  70    0xb585d  1      OPC=nop             
  nop                                               #  71    0xb585e  1      OPC=nop             
  nop                                               #  72    0xb585f  1      OPC=nop             
  nop                                               #  73    0xb5860  1      OPC=nop             
  nop                                               #  74    0xb5861  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb5862  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0xb5867  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0xb586a  2      OPC=movl_r32_r32    
  nop                                               #  78    0xb586c  1      OPC=nop             
  nop                                               #  79    0xb586d  1      OPC=nop             
  nop                                               #  80    0xb586e  1      OPC=nop             
  nop                                               #  81    0xb586f  1      OPC=nop             
  nop                                               #  82    0xb5870  1      OPC=nop             
  nop                                               #  83    0xb5871  1      OPC=nop             
  nop                                               #  84    0xb5872  1      OPC=nop             
  nop                                               #  85    0xb5873  1      OPC=nop             
  nop                                               #  86    0xb5874  1      OPC=nop             
  nop                                               #  87    0xb5875  1      OPC=nop             
  nop                                               #  88    0xb5876  1      OPC=nop             
  nop                                               #  89    0xb5877  1      OPC=nop             
  nop                                               #  90    0xb5878  1      OPC=nop             
  nop                                               #  91    0xb5879  1      OPC=nop             
  nop                                               #  92    0xb587a  1      OPC=nop             
  nop                                               #  93    0xb587b  1      OPC=nop             
  nop                                               #  94    0xb587c  1      OPC=nop             
  nop                                               #  95    0xb587d  1      OPC=nop             
  nop                                               #  96    0xb587e  1      OPC=nop             
  nop                                               #  97    0xb587f  1      OPC=nop             
  nop                                               #  98    0xb5880  1      OPC=nop             
  nop                                               #  99    0xb5881  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0xb5882  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIwEC1EPij, .-_ZNSt7collateIwEC1EPij

