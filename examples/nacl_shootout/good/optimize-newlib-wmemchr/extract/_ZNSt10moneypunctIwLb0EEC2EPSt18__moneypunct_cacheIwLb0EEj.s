  .text
  .globl _ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj
  .type _ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj, @function

#! file-offset 0xf7820
#! rip-offset  0xb7820
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj:       #        0xb7820  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb7820  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb7821  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb7823  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0xb7825  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0xb7827  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0xb782a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0xb782d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0xb782f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0xb7831  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0xb7836  3      OPC=setne_r8        
  nop                                                              #  11    0xb7839  1      OPC=nop             
  nop                                                              #  12    0xb783a  1      OPC=nop             
  nop                                                              #  13    0xb783b  1      OPC=nop             
  nop                                                              #  14    0xb783c  1      OPC=nop             
  nop                                                              #  15    0xb783d  1      OPC=nop             
  nop                                                              #  16    0xb783e  1      OPC=nop             
  nop                                                              #  17    0xb783f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0xb7840  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  19    0xb7842  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0xb784a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0xb784c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0xb784e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0xb7853  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0xb7855  1      OPC=nop             
  nop                                                              #  25    0xb7856  1      OPC=nop             
  nop                                                              #  26    0xb7857  1      OPC=nop             
  nop                                                              #  27    0xb7858  1      OPC=nop             
  nop                                                              #  28    0xb7859  1      OPC=nop             
  nop                                                              #  29    0xb785a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  30    0xb785b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0xb7860  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0xb7863  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0xb7866  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0xb7867  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0xb7869  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0xb7870  1      OPC=nop             
  nop                                                              #  37    0xb7871  1      OPC=nop             
  nop                                                              #  38    0xb7872  1      OPC=nop             
  nop                                                              #  39    0xb7873  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0xb7874  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0xb7877  3      OPC=jmpq_r64        
  nop                                                              #  42    0xb787a  1      OPC=nop             
  nop                                                              #  43    0xb787b  1      OPC=nop             
  nop                                                              #  44    0xb787c  1      OPC=nop             
  nop                                                              #  45    0xb787d  1      OPC=nop             
  nop                                                              #  46    0xb787e  1      OPC=nop             
  nop                                                              #  47    0xb787f  1      OPC=nop             
  nop                                                              #  48    0xb7880  1      OPC=nop             
  nop                                                              #  49    0xb7881  1      OPC=nop             
  nop                                                              #  50    0xb7882  1      OPC=nop             
  nop                                                              #  51    0xb7883  1      OPC=nop             
  nop                                                              #  52    0xb7884  1      OPC=nop             
  nop                                                              #  53    0xb7885  1      OPC=nop             
  nop                                                              #  54    0xb7886  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0xb7887  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0xb7889  4      OPC=movl_m32_r32    
  nop                                                              #  57    0xb788d  1      OPC=nop             
  nop                                                              #  58    0xb788e  1      OPC=nop             
  nop                                                              #  59    0xb788f  1      OPC=nop             
  nop                                                              #  60    0xb7890  1      OPC=nop             
  nop                                                              #  61    0xb7891  1      OPC=nop             
  nop                                                              #  62    0xb7892  1      OPC=nop             
  nop                                                              #  63    0xb7893  1      OPC=nop             
  nop                                                              #  64    0xb7894  1      OPC=nop             
  nop                                                              #  65    0xb7895  1      OPC=nop             
  nop                                                              #  66    0xb7896  1      OPC=nop             
  nop                                                              #  67    0xb7897  1      OPC=nop             
  nop                                                              #  68    0xb7898  1      OPC=nop             
  nop                                                              #  69    0xb7899  1      OPC=nop             
  nop                                                              #  70    0xb789a  1      OPC=nop             
  nop                                                              #  71    0xb789b  1      OPC=nop             
  nop                                                              #  72    0xb789c  1      OPC=nop             
  nop                                                              #  73    0xb789d  1      OPC=nop             
  nop                                                              #  74    0xb789e  1      OPC=nop             
  nop                                                              #  75    0xb789f  1      OPC=nop             
  nop                                                              #  76    0xb78a0  1      OPC=nop             
  nop                                                              #  77    0xb78a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0xb78a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0xb78a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0xb78ab  2      OPC=movl_r32_r32    
  nop                                                              #  81    0xb78ad  1      OPC=nop             
  nop                                                              #  82    0xb78ae  1      OPC=nop             
  nop                                                              #  83    0xb78af  1      OPC=nop             
  nop                                                              #  84    0xb78b0  1      OPC=nop             
  nop                                                              #  85    0xb78b1  1      OPC=nop             
  nop                                                              #  86    0xb78b2  1      OPC=nop             
  nop                                                              #  87    0xb78b3  1      OPC=nop             
  nop                                                              #  88    0xb78b4  1      OPC=nop             
  nop                                                              #  89    0xb78b5  1      OPC=nop             
  nop                                                              #  90    0xb78b6  1      OPC=nop             
  nop                                                              #  91    0xb78b7  1      OPC=nop             
  nop                                                              #  92    0xb78b8  1      OPC=nop             
  nop                                                              #  93    0xb78b9  1      OPC=nop             
  nop                                                              #  94    0xb78ba  1      OPC=nop             
  nop                                                              #  95    0xb78bb  1      OPC=nop             
  nop                                                              #  96    0xb78bc  1      OPC=nop             
  nop                                                              #  97    0xb78bd  1      OPC=nop             
  nop                                                              #  98    0xb78be  1      OPC=nop             
  nop                                                              #  99    0xb78bf  1      OPC=nop             
  nop                                                              #  100   0xb78c0  1      OPC=nop             
  nop                                                              #  101   0xb78c1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0xb78c2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj, .-_ZNSt10moneypunctIwLb0EEC2EPSt18__moneypunct_cacheIwLb0EEj

