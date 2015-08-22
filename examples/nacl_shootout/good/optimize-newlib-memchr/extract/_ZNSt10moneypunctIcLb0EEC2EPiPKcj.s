  .text
  .globl _ZNSt10moneypunctIcLb0EEC2EPiPKcj
  .type _ZNSt10moneypunctIcLb0EEC2EPiPKcj, @function

#! file-offset 0xbf2e0
#! rip-offset  0x7f2e0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC2EPiPKcj:                                #        0x7f2e0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7f2e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7f2e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7f2e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7f2e5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7f2e7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7f2e9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7f2eb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7f2ee  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7f2f1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7f2f3  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  11    0x7f2f5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7f2fd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7f300  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7f302  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7f30b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7f30d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7f312  1      OPC=nop             
  nop                                                              #  18    0x7f313  1      OPC=nop             
  nop                                                              #  19    0x7f314  1      OPC=nop             
  nop                                                              #  20    0x7f315  1      OPC=nop             
  nop                                                              #  21    0x7f316  1      OPC=nop             
  nop                                                              #  22    0x7f317  1      OPC=nop             
  nop                                                              #  23    0x7f318  1      OPC=nop             
  nop                                                              #  24    0x7f319  1      OPC=nop             
  nop                                                              #  25    0x7f31a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7f31b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7f320  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7f323  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7f326  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7f327  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7f329  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7f330  1      OPC=nop             
  nop                                                              #  33    0x7f331  1      OPC=nop             
  nop                                                              #  34    0x7f332  1      OPC=nop             
  nop                                                              #  35    0x7f333  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7f334  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7f337  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7f33a  1      OPC=nop             
  nop                                                              #  39    0x7f33b  1      OPC=nop             
  nop                                                              #  40    0x7f33c  1      OPC=nop             
  nop                                                              #  41    0x7f33d  1      OPC=nop             
  nop                                                              #  42    0x7f33e  1      OPC=nop             
  nop                                                              #  43    0x7f33f  1      OPC=nop             
  nop                                                              #  44    0x7f340  1      OPC=nop             
  nop                                                              #  45    0x7f341  1      OPC=nop             
  nop                                                              #  46    0x7f342  1      OPC=nop             
  nop                                                              #  47    0x7f343  1      OPC=nop             
  nop                                                              #  48    0x7f344  1      OPC=nop             
  nop                                                              #  49    0x7f345  1      OPC=nop             
  nop                                                              #  50    0x7f346  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7f347  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7f349  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7f34d  1      OPC=nop             
  nop                                                              #  54    0x7f34e  1      OPC=nop             
  nop                                                              #  55    0x7f34f  1      OPC=nop             
  nop                                                              #  56    0x7f350  1      OPC=nop             
  nop                                                              #  57    0x7f351  1      OPC=nop             
  nop                                                              #  58    0x7f352  1      OPC=nop             
  nop                                                              #  59    0x7f353  1      OPC=nop             
  nop                                                              #  60    0x7f354  1      OPC=nop             
  nop                                                              #  61    0x7f355  1      OPC=nop             
  nop                                                              #  62    0x7f356  1      OPC=nop             
  nop                                                              #  63    0x7f357  1      OPC=nop             
  nop                                                              #  64    0x7f358  1      OPC=nop             
  nop                                                              #  65    0x7f359  1      OPC=nop             
  nop                                                              #  66    0x7f35a  1      OPC=nop             
  nop                                                              #  67    0x7f35b  1      OPC=nop             
  nop                                                              #  68    0x7f35c  1      OPC=nop             
  nop                                                              #  69    0x7f35d  1      OPC=nop             
  nop                                                              #  70    0x7f35e  1      OPC=nop             
  nop                                                              #  71    0x7f35f  1      OPC=nop             
  nop                                                              #  72    0x7f360  1      OPC=nop             
  nop                                                              #  73    0x7f361  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7f362  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7f367  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7f36b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7f36d  1      OPC=nop             
  nop                                                              #  78    0x7f36e  1      OPC=nop             
  nop                                                              #  79    0x7f36f  1      OPC=nop             
  nop                                                              #  80    0x7f370  1      OPC=nop             
  nop                                                              #  81    0x7f371  1      OPC=nop             
  nop                                                              #  82    0x7f372  1      OPC=nop             
  nop                                                              #  83    0x7f373  1      OPC=nop             
  nop                                                              #  84    0x7f374  1      OPC=nop             
  nop                                                              #  85    0x7f375  1      OPC=nop             
  nop                                                              #  86    0x7f376  1      OPC=nop             
  nop                                                              #  87    0x7f377  1      OPC=nop             
  nop                                                              #  88    0x7f378  1      OPC=nop             
  nop                                                              #  89    0x7f379  1      OPC=nop             
  nop                                                              #  90    0x7f37a  1      OPC=nop             
  nop                                                              #  91    0x7f37b  1      OPC=nop             
  nop                                                              #  92    0x7f37c  1      OPC=nop             
  nop                                                              #  93    0x7f37d  1      OPC=nop             
  nop                                                              #  94    0x7f37e  1      OPC=nop             
  nop                                                              #  95    0x7f37f  1      OPC=nop             
  nop                                                              #  96    0x7f380  1      OPC=nop             
  nop                                                              #  97    0x7f381  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7f382  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC2EPiPKcj, .-_ZNSt10moneypunctIcLb0EEC2EPiPKcj

