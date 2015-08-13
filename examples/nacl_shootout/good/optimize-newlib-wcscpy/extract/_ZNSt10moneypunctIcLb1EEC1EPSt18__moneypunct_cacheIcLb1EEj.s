  .text
  .globl _ZNSt10moneypunctIcLb1EEC1EPSt18__moneypunct_cacheIcLb1EEj
  .type _ZNSt10moneypunctIcLb1EEC1EPSt18__moneypunct_cacheIcLb1EEj, @function

#! file-offset 0xbe520
#! rip-offset  0x7e520
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC1EPSt18__moneypunct_cacheIcLb1EEj:       #        0x7e520  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e520  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e521  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e523  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7e525  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7e527  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7e52a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0x7e52d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7e52f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0x7e531  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0x7e536  3      OPC=setne_r8        
  nop                                                              #  11    0x7e539  1      OPC=nop             
  nop                                                              #  12    0x7e53a  1      OPC=nop             
  nop                                                              #  13    0x7e53b  1      OPC=nop             
  nop                                                              #  14    0x7e53c  1      OPC=nop             
  nop                                                              #  15    0x7e53d  1      OPC=nop             
  nop                                                              #  16    0x7e53e  1      OPC=nop             
  nop                                                              #  17    0x7e53f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0x7e540  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  19    0x7e542  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0x7e54a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0x7e54c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0x7e54e  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0x7e553  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0x7e555  1      OPC=nop             
  nop                                                              #  25    0x7e556  1      OPC=nop             
  nop                                                              #  26    0x7e557  1      OPC=nop             
  nop                                                              #  27    0x7e558  1      OPC=nop             
  nop                                                              #  28    0x7e559  1      OPC=nop             
  nop                                                              #  29    0x7e55a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0x7e55b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0x7e560  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0x7e563  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0x7e566  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0x7e567  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0x7e569  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0x7e570  1      OPC=nop             
  nop                                                              #  37    0x7e571  1      OPC=nop             
  nop                                                              #  38    0x7e572  1      OPC=nop             
  nop                                                              #  39    0x7e573  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0x7e574  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0x7e577  3      OPC=jmpq_r64        
  nop                                                              #  42    0x7e57a  1      OPC=nop             
  nop                                                              #  43    0x7e57b  1      OPC=nop             
  nop                                                              #  44    0x7e57c  1      OPC=nop             
  nop                                                              #  45    0x7e57d  1      OPC=nop             
  nop                                                              #  46    0x7e57e  1      OPC=nop             
  nop                                                              #  47    0x7e57f  1      OPC=nop             
  nop                                                              #  48    0x7e580  1      OPC=nop             
  nop                                                              #  49    0x7e581  1      OPC=nop             
  nop                                                              #  50    0x7e582  1      OPC=nop             
  nop                                                              #  51    0x7e583  1      OPC=nop             
  nop                                                              #  52    0x7e584  1      OPC=nop             
  nop                                                              #  53    0x7e585  1      OPC=nop             
  nop                                                              #  54    0x7e586  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0x7e587  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0x7e589  4      OPC=movl_m32_r32    
  nop                                                              #  57    0x7e58d  1      OPC=nop             
  nop                                                              #  58    0x7e58e  1      OPC=nop             
  nop                                                              #  59    0x7e58f  1      OPC=nop             
  nop                                                              #  60    0x7e590  1      OPC=nop             
  nop                                                              #  61    0x7e591  1      OPC=nop             
  nop                                                              #  62    0x7e592  1      OPC=nop             
  nop                                                              #  63    0x7e593  1      OPC=nop             
  nop                                                              #  64    0x7e594  1      OPC=nop             
  nop                                                              #  65    0x7e595  1      OPC=nop             
  nop                                                              #  66    0x7e596  1      OPC=nop             
  nop                                                              #  67    0x7e597  1      OPC=nop             
  nop                                                              #  68    0x7e598  1      OPC=nop             
  nop                                                              #  69    0x7e599  1      OPC=nop             
  nop                                                              #  70    0x7e59a  1      OPC=nop             
  nop                                                              #  71    0x7e59b  1      OPC=nop             
  nop                                                              #  72    0x7e59c  1      OPC=nop             
  nop                                                              #  73    0x7e59d  1      OPC=nop             
  nop                                                              #  74    0x7e59e  1      OPC=nop             
  nop                                                              #  75    0x7e59f  1      OPC=nop             
  nop                                                              #  76    0x7e5a0  1      OPC=nop             
  nop                                                              #  77    0x7e5a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0x7e5a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0x7e5a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0x7e5ab  2      OPC=movl_r32_r32    
  nop                                                              #  81    0x7e5ad  1      OPC=nop             
  nop                                                              #  82    0x7e5ae  1      OPC=nop             
  nop                                                              #  83    0x7e5af  1      OPC=nop             
  nop                                                              #  84    0x7e5b0  1      OPC=nop             
  nop                                                              #  85    0x7e5b1  1      OPC=nop             
  nop                                                              #  86    0x7e5b2  1      OPC=nop             
  nop                                                              #  87    0x7e5b3  1      OPC=nop             
  nop                                                              #  88    0x7e5b4  1      OPC=nop             
  nop                                                              #  89    0x7e5b5  1      OPC=nop             
  nop                                                              #  90    0x7e5b6  1      OPC=nop             
  nop                                                              #  91    0x7e5b7  1      OPC=nop             
  nop                                                              #  92    0x7e5b8  1      OPC=nop             
  nop                                                              #  93    0x7e5b9  1      OPC=nop             
  nop                                                              #  94    0x7e5ba  1      OPC=nop             
  nop                                                              #  95    0x7e5bb  1      OPC=nop             
  nop                                                              #  96    0x7e5bc  1      OPC=nop             
  nop                                                              #  97    0x7e5bd  1      OPC=nop             
  nop                                                              #  98    0x7e5be  1      OPC=nop             
  nop                                                              #  99    0x7e5bf  1      OPC=nop             
  nop                                                              #  100   0x7e5c0  1      OPC=nop             
  nop                                                              #  101   0x7e5c1  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0x7e5c2  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC1EPSt18__moneypunct_cacheIcLb1EEj, .-_ZNSt10moneypunctIcLb1EEC1EPSt18__moneypunct_cacheIcLb1EEj

