  .text
  .globl _ZNSt10moneypunctIwLb0EEC1Ej
  .type _ZNSt10moneypunctIwLb0EEC1Ej, @function

#! file-offset 0xf78c0
#! rip-offset  0xb78c0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC1Ej:                                     #        0xb78c0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb78c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb78c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb78c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb78c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb78c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb78ca  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0xb78cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb78cf  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  9     0xb78d1  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0xb78d9  3      OPC=setne_r8        
  nop                                                              #  11    0xb78dc  1      OPC=nop             
  nop                                                              #  12    0xb78dd  1      OPC=nop             
  nop                                                              #  13    0xb78de  1      OPC=nop             
  nop                                                              #  14    0xb78df  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0xb78e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0xb78e2  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0xb78eb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0xb78ed  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0xb78ef  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0xb78f4  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0xb78f6  1      OPC=nop             
  nop                                                              #  22    0xb78f7  1      OPC=nop             
  nop                                                              #  23    0xb78f8  1      OPC=nop             
  nop                                                              #  24    0xb78f9  1      OPC=nop             
  nop                                                              #  25    0xb78fa  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb78fb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7900  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7903  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7906  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7907  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7909  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7910  1      OPC=nop             
  nop                                                              #  33    0xb7911  1      OPC=nop             
  nop                                                              #  34    0xb7912  1      OPC=nop             
  nop                                                              #  35    0xb7913  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7914  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7917  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb791a  1      OPC=nop             
  nop                                                              #  39    0xb791b  1      OPC=nop             
  nop                                                              #  40    0xb791c  1      OPC=nop             
  nop                                                              #  41    0xb791d  1      OPC=nop             
  nop                                                              #  42    0xb791e  1      OPC=nop             
  nop                                                              #  43    0xb791f  1      OPC=nop             
  nop                                                              #  44    0xb7920  1      OPC=nop             
  nop                                                              #  45    0xb7921  1      OPC=nop             
  nop                                                              #  46    0xb7922  1      OPC=nop             
  nop                                                              #  47    0xb7923  1      OPC=nop             
  nop                                                              #  48    0xb7924  1      OPC=nop             
  nop                                                              #  49    0xb7925  1      OPC=nop             
  nop                                                              #  50    0xb7926  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7927  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7929  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb792d  1      OPC=nop             
  nop                                                              #  54    0xb792e  1      OPC=nop             
  nop                                                              #  55    0xb792f  1      OPC=nop             
  nop                                                              #  56    0xb7930  1      OPC=nop             
  nop                                                              #  57    0xb7931  1      OPC=nop             
  nop                                                              #  58    0xb7932  1      OPC=nop             
  nop                                                              #  59    0xb7933  1      OPC=nop             
  nop                                                              #  60    0xb7934  1      OPC=nop             
  nop                                                              #  61    0xb7935  1      OPC=nop             
  nop                                                              #  62    0xb7936  1      OPC=nop             
  nop                                                              #  63    0xb7937  1      OPC=nop             
  nop                                                              #  64    0xb7938  1      OPC=nop             
  nop                                                              #  65    0xb7939  1      OPC=nop             
  nop                                                              #  66    0xb793a  1      OPC=nop             
  nop                                                              #  67    0xb793b  1      OPC=nop             
  nop                                                              #  68    0xb793c  1      OPC=nop             
  nop                                                              #  69    0xb793d  1      OPC=nop             
  nop                                                              #  70    0xb793e  1      OPC=nop             
  nop                                                              #  71    0xb793f  1      OPC=nop             
  nop                                                              #  72    0xb7940  1      OPC=nop             
  nop                                                              #  73    0xb7941  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7942  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7947  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb794b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb794d  1      OPC=nop             
  nop                                                              #  78    0xb794e  1      OPC=nop             
  nop                                                              #  79    0xb794f  1      OPC=nop             
  nop                                                              #  80    0xb7950  1      OPC=nop             
  nop                                                              #  81    0xb7951  1      OPC=nop             
  nop                                                              #  82    0xb7952  1      OPC=nop             
  nop                                                              #  83    0xb7953  1      OPC=nop             
  nop                                                              #  84    0xb7954  1      OPC=nop             
  nop                                                              #  85    0xb7955  1      OPC=nop             
  nop                                                              #  86    0xb7956  1      OPC=nop             
  nop                                                              #  87    0xb7957  1      OPC=nop             
  nop                                                              #  88    0xb7958  1      OPC=nop             
  nop                                                              #  89    0xb7959  1      OPC=nop             
  nop                                                              #  90    0xb795a  1      OPC=nop             
  nop                                                              #  91    0xb795b  1      OPC=nop             
  nop                                                              #  92    0xb795c  1      OPC=nop             
  nop                                                              #  93    0xb795d  1      OPC=nop             
  nop                                                              #  94    0xb795e  1      OPC=nop             
  nop                                                              #  95    0xb795f  1      OPC=nop             
  nop                                                              #  96    0xb7960  1      OPC=nop             
  nop                                                              #  97    0xb7961  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7962  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC1Ej, .-_ZNSt10moneypunctIwLb0EEC1Ej

