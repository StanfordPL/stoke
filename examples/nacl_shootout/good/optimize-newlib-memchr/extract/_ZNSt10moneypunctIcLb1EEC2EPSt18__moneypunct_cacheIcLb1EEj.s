  .text
  .globl _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj
  .type _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj, @function

#! file-offset 0xbefe0
#! rip-offset  0x7efe0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj:       #        0x7efe0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7efe0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7efe1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7efe3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7efe5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7efe7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7efea  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0x7efed  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7efef  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0x7eff1  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0x7eff6  3      OPC=setne_r8        
  nop                                                              #  11    0x7eff9  1      OPC=nop             
  nop                                                              #  12    0x7effa  1      OPC=nop             
  nop                                                              #  13    0x7effb  1      OPC=nop             
  nop                                                              #  14    0x7effc  1      OPC=nop             
  nop                                                              #  15    0x7effd  1      OPC=nop             
  nop                                                              #  16    0x7effe  1      OPC=nop             
  nop                                                              #  17    0x7efff  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0x7f000  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  19    0x7f002  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0x7f00a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0x7f00c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0x7f00e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0x7f013  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0x7f015  1      OPC=nop             
  nop                                                              #  25    0x7f016  1      OPC=nop             
  nop                                                              #  26    0x7f017  1      OPC=nop             
  nop                                                              #  27    0x7f018  1      OPC=nop             
  nop                                                              #  28    0x7f019  1      OPC=nop             
  nop                                                              #  29    0x7f01a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0x7f01b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0x7f020  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0x7f023  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0x7f026  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0x7f027  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0x7f029  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0x7f030  1      OPC=nop             
  nop                                                              #  37    0x7f031  1      OPC=nop             
  nop                                                              #  38    0x7f032  1      OPC=nop             
  nop                                                              #  39    0x7f033  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0x7f034  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0x7f037  3      OPC=jmpq_r64        
  nop                                                              #  42    0x7f03a  1      OPC=nop             
  nop                                                              #  43    0x7f03b  1      OPC=nop             
  nop                                                              #  44    0x7f03c  1      OPC=nop             
  nop                                                              #  45    0x7f03d  1      OPC=nop             
  nop                                                              #  46    0x7f03e  1      OPC=nop             
  nop                                                              #  47    0x7f03f  1      OPC=nop             
  nop                                                              #  48    0x7f040  1      OPC=nop             
  nop                                                              #  49    0x7f041  1      OPC=nop             
  nop                                                              #  50    0x7f042  1      OPC=nop             
  nop                                                              #  51    0x7f043  1      OPC=nop             
  nop                                                              #  52    0x7f044  1      OPC=nop             
  nop                                                              #  53    0x7f045  1      OPC=nop             
  nop                                                              #  54    0x7f046  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0x7f047  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0x7f049  4      OPC=movl_m32_r32    
  nop                                                              #  57    0x7f04d  1      OPC=nop             
  nop                                                              #  58    0x7f04e  1      OPC=nop             
  nop                                                              #  59    0x7f04f  1      OPC=nop             
  nop                                                              #  60    0x7f050  1      OPC=nop             
  nop                                                              #  61    0x7f051  1      OPC=nop             
  nop                                                              #  62    0x7f052  1      OPC=nop             
  nop                                                              #  63    0x7f053  1      OPC=nop             
  nop                                                              #  64    0x7f054  1      OPC=nop             
  nop                                                              #  65    0x7f055  1      OPC=nop             
  nop                                                              #  66    0x7f056  1      OPC=nop             
  nop                                                              #  67    0x7f057  1      OPC=nop             
  nop                                                              #  68    0x7f058  1      OPC=nop             
  nop                                                              #  69    0x7f059  1      OPC=nop             
  nop                                                              #  70    0x7f05a  1      OPC=nop             
  nop                                                              #  71    0x7f05b  1      OPC=nop             
  nop                                                              #  72    0x7f05c  1      OPC=nop             
  nop                                                              #  73    0x7f05d  1      OPC=nop             
  nop                                                              #  74    0x7f05e  1      OPC=nop             
  nop                                                              #  75    0x7f05f  1      OPC=nop             
  nop                                                              #  76    0x7f060  1      OPC=nop             
  nop                                                              #  77    0x7f061  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0x7f062  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0x7f067  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0x7f06b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0x7f06d  1      OPC=nop             
  nop                                                              #  82    0x7f06e  1      OPC=nop             
  nop                                                              #  83    0x7f06f  1      OPC=nop             
  nop                                                              #  84    0x7f070  1      OPC=nop             
  nop                                                              #  85    0x7f071  1      OPC=nop             
  nop                                                              #  86    0x7f072  1      OPC=nop             
  nop                                                              #  87    0x7f073  1      OPC=nop             
  nop                                                              #  88    0x7f074  1      OPC=nop             
  nop                                                              #  89    0x7f075  1      OPC=nop             
  nop                                                              #  90    0x7f076  1      OPC=nop             
  nop                                                              #  91    0x7f077  1      OPC=nop             
  nop                                                              #  92    0x7f078  1      OPC=nop             
  nop                                                              #  93    0x7f079  1      OPC=nop             
  nop                                                              #  94    0x7f07a  1      OPC=nop             
  nop                                                              #  95    0x7f07b  1      OPC=nop             
  nop                                                              #  96    0x7f07c  1      OPC=nop             
  nop                                                              #  97    0x7f07d  1      OPC=nop             
  nop                                                              #  98    0x7f07e  1      OPC=nop             
  nop                                                              #  99    0x7f07f  1      OPC=nop             
  nop                                                              #  100   0x7f080  1      OPC=nop             
  nop                                                              #  101   0x7f081  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0x7f082  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj, .-_ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj

