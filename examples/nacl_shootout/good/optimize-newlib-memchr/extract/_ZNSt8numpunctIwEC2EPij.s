  .text
  .globl _ZNSt8numpunctIwEC2EPij
  .type _ZNSt8numpunctIwEC2EPij, @function

#! file-offset 0xf7000
#! rip-offset  0xb7000
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2EPij:                              #        0xb7000  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb7000  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb7001  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb7003  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0xb7005  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0xb7007  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0xb7009  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0xb700c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0xb700f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0xb7011  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb7013  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0xb701b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0xb701e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0xb7020  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb7022  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0xb702b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb702d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0xb7032  1      OPC=nop             
  nop                                                  #  18    0xb7033  1      OPC=nop             
  nop                                                  #  19    0xb7034  1      OPC=nop             
  nop                                                  #  20    0xb7035  1      OPC=nop             
  nop                                                  #  21    0xb7036  1      OPC=nop             
  nop                                                  #  22    0xb7037  1      OPC=nop             
  nop                                                  #  23    0xb7038  1      OPC=nop             
  nop                                                  #  24    0xb7039  1      OPC=nop             
  nop                                                  #  25    0xb703a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb703b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0xb7040  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0xb7043  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0xb7046  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0xb7047  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0xb7049  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0xb7050  1      OPC=nop             
  nop                                                  #  33    0xb7051  1      OPC=nop             
  nop                                                  #  34    0xb7052  1      OPC=nop             
  nop                                                  #  35    0xb7053  1      OPC=nop             
  addq %r15, %r11                                      #  36    0xb7054  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0xb7057  3      OPC=jmpq_r64        
  nop                                                  #  38    0xb705a  1      OPC=nop             
  nop                                                  #  39    0xb705b  1      OPC=nop             
  nop                                                  #  40    0xb705c  1      OPC=nop             
  nop                                                  #  41    0xb705d  1      OPC=nop             
  nop                                                  #  42    0xb705e  1      OPC=nop             
  nop                                                  #  43    0xb705f  1      OPC=nop             
  nop                                                  #  44    0xb7060  1      OPC=nop             
  nop                                                  #  45    0xb7061  1      OPC=nop             
  nop                                                  #  46    0xb7062  1      OPC=nop             
  nop                                                  #  47    0xb7063  1      OPC=nop             
  nop                                                  #  48    0xb7064  1      OPC=nop             
  nop                                                  #  49    0xb7065  1      OPC=nop             
  nop                                                  #  50    0xb7066  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0xb7067  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0xb7069  4      OPC=movl_m32_r32    
  nop                                                  #  53    0xb706d  1      OPC=nop             
  nop                                                  #  54    0xb706e  1      OPC=nop             
  nop                                                  #  55    0xb706f  1      OPC=nop             
  nop                                                  #  56    0xb7070  1      OPC=nop             
  nop                                                  #  57    0xb7071  1      OPC=nop             
  nop                                                  #  58    0xb7072  1      OPC=nop             
  nop                                                  #  59    0xb7073  1      OPC=nop             
  nop                                                  #  60    0xb7074  1      OPC=nop             
  nop                                                  #  61    0xb7075  1      OPC=nop             
  nop                                                  #  62    0xb7076  1      OPC=nop             
  nop                                                  #  63    0xb7077  1      OPC=nop             
  nop                                                  #  64    0xb7078  1      OPC=nop             
  nop                                                  #  65    0xb7079  1      OPC=nop             
  nop                                                  #  66    0xb707a  1      OPC=nop             
  nop                                                  #  67    0xb707b  1      OPC=nop             
  nop                                                  #  68    0xb707c  1      OPC=nop             
  nop                                                  #  69    0xb707d  1      OPC=nop             
  nop                                                  #  70    0xb707e  1      OPC=nop             
  nop                                                  #  71    0xb707f  1      OPC=nop             
  nop                                                  #  72    0xb7080  1      OPC=nop             
  nop                                                  #  73    0xb7081  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb7082  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0xb7087  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0xb708b  2      OPC=movl_r32_r32    
  nop                                                  #  77    0xb708d  1      OPC=nop             
  nop                                                  #  78    0xb708e  1      OPC=nop             
  nop                                                  #  79    0xb708f  1      OPC=nop             
  nop                                                  #  80    0xb7090  1      OPC=nop             
  nop                                                  #  81    0xb7091  1      OPC=nop             
  nop                                                  #  82    0xb7092  1      OPC=nop             
  nop                                                  #  83    0xb7093  1      OPC=nop             
  nop                                                  #  84    0xb7094  1      OPC=nop             
  nop                                                  #  85    0xb7095  1      OPC=nop             
  nop                                                  #  86    0xb7096  1      OPC=nop             
  nop                                                  #  87    0xb7097  1      OPC=nop             
  nop                                                  #  88    0xb7098  1      OPC=nop             
  nop                                                  #  89    0xb7099  1      OPC=nop             
  nop                                                  #  90    0xb709a  1      OPC=nop             
  nop                                                  #  91    0xb709b  1      OPC=nop             
  nop                                                  #  92    0xb709c  1      OPC=nop             
  nop                                                  #  93    0xb709d  1      OPC=nop             
  nop                                                  #  94    0xb709e  1      OPC=nop             
  nop                                                  #  95    0xb709f  1      OPC=nop             
  nop                                                  #  96    0xb70a0  1      OPC=nop             
  nop                                                  #  97    0xb70a1  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0xb70a2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2EPij, .-_ZNSt8numpunctIwEC2EPij

