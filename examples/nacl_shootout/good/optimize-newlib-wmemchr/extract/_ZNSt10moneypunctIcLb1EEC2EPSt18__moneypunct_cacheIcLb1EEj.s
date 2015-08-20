  .text
  .globl _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj
  .type _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj, @function

#! file-offset 0xbe8c0
#! rip-offset  0x7e8c0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj:       #        0x7e8c0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e8c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e8c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e8c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7e8c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7e8c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7e8ca  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0x7e8cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7e8cf  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0x7e8d1  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0x7e8d6  3      OPC=setne_r8        
  nop                                                              #  11    0x7e8d9  1      OPC=nop             
  nop                                                              #  12    0x7e8da  1      OPC=nop             
  nop                                                              #  13    0x7e8db  1      OPC=nop             
  nop                                                              #  14    0x7e8dc  1      OPC=nop             
  nop                                                              #  15    0x7e8dd  1      OPC=nop             
  nop                                                              #  16    0x7e8de  1      OPC=nop             
  nop                                                              #  17    0x7e8df  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0x7e8e0  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  19    0x7e8e2  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0x7e8ea  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0x7e8ec  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0x7e8ee  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0x7e8f3  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0x7e8f5  1      OPC=nop             
  nop                                                              #  25    0x7e8f6  1      OPC=nop             
  nop                                                              #  26    0x7e8f7  1      OPC=nop             
  nop                                                              #  27    0x7e8f8  1      OPC=nop             
  nop                                                              #  28    0x7e8f9  1      OPC=nop             
  nop                                                              #  29    0x7e8fa  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0x7e8fb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0x7e900  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0x7e903  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0x7e906  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0x7e907  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0x7e909  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0x7e910  1      OPC=nop             
  nop                                                              #  37    0x7e911  1      OPC=nop             
  nop                                                              #  38    0x7e912  1      OPC=nop             
  nop                                                              #  39    0x7e913  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0x7e914  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0x7e917  3      OPC=jmpq_r64        
  nop                                                              #  42    0x7e91a  1      OPC=nop             
  nop                                                              #  43    0x7e91b  1      OPC=nop             
  nop                                                              #  44    0x7e91c  1      OPC=nop             
  nop                                                              #  45    0x7e91d  1      OPC=nop             
  nop                                                              #  46    0x7e91e  1      OPC=nop             
  nop                                                              #  47    0x7e91f  1      OPC=nop             
  nop                                                              #  48    0x7e920  1      OPC=nop             
  nop                                                              #  49    0x7e921  1      OPC=nop             
  nop                                                              #  50    0x7e922  1      OPC=nop             
  nop                                                              #  51    0x7e923  1      OPC=nop             
  nop                                                              #  52    0x7e924  1      OPC=nop             
  nop                                                              #  53    0x7e925  1      OPC=nop             
  nop                                                              #  54    0x7e926  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0x7e927  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0x7e929  4      OPC=movl_m32_r32    
  nop                                                              #  57    0x7e92d  1      OPC=nop             
  nop                                                              #  58    0x7e92e  1      OPC=nop             
  nop                                                              #  59    0x7e92f  1      OPC=nop             
  nop                                                              #  60    0x7e930  1      OPC=nop             
  nop                                                              #  61    0x7e931  1      OPC=nop             
  nop                                                              #  62    0x7e932  1      OPC=nop             
  nop                                                              #  63    0x7e933  1      OPC=nop             
  nop                                                              #  64    0x7e934  1      OPC=nop             
  nop                                                              #  65    0x7e935  1      OPC=nop             
  nop                                                              #  66    0x7e936  1      OPC=nop             
  nop                                                              #  67    0x7e937  1      OPC=nop             
  nop                                                              #  68    0x7e938  1      OPC=nop             
  nop                                                              #  69    0x7e939  1      OPC=nop             
  nop                                                              #  70    0x7e93a  1      OPC=nop             
  nop                                                              #  71    0x7e93b  1      OPC=nop             
  nop                                                              #  72    0x7e93c  1      OPC=nop             
  nop                                                              #  73    0x7e93d  1      OPC=nop             
  nop                                                              #  74    0x7e93e  1      OPC=nop             
  nop                                                              #  75    0x7e93f  1      OPC=nop             
  nop                                                              #  76    0x7e940  1      OPC=nop             
  nop                                                              #  77    0x7e941  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0x7e942  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0x7e947  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0x7e94b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0x7e94d  1      OPC=nop             
  nop                                                              #  82    0x7e94e  1      OPC=nop             
  nop                                                              #  83    0x7e94f  1      OPC=nop             
  nop                                                              #  84    0x7e950  1      OPC=nop             
  nop                                                              #  85    0x7e951  1      OPC=nop             
  nop                                                              #  86    0x7e952  1      OPC=nop             
  nop                                                              #  87    0x7e953  1      OPC=nop             
  nop                                                              #  88    0x7e954  1      OPC=nop             
  nop                                                              #  89    0x7e955  1      OPC=nop             
  nop                                                              #  90    0x7e956  1      OPC=nop             
  nop                                                              #  91    0x7e957  1      OPC=nop             
  nop                                                              #  92    0x7e958  1      OPC=nop             
  nop                                                              #  93    0x7e959  1      OPC=nop             
  nop                                                              #  94    0x7e95a  1      OPC=nop             
  nop                                                              #  95    0x7e95b  1      OPC=nop             
  nop                                                              #  96    0x7e95c  1      OPC=nop             
  nop                                                              #  97    0x7e95d  1      OPC=nop             
  nop                                                              #  98    0x7e95e  1      OPC=nop             
  nop                                                              #  99    0x7e95f  1      OPC=nop             
  nop                                                              #  100   0x7e960  1      OPC=nop             
  nop                                                              #  101   0x7e961  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0x7e962  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj, .-_ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj

