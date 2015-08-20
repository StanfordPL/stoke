  .text
  .globl _ZNSt10moneypunctIwLb0EEC2EPiPKcj
  .type _ZNSt10moneypunctIwLb0EEC2EPiPKcj, @function

#! file-offset 0xf76e0
#! rip-offset  0xb76e0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb0EEC2EPiPKcj:                                #        0xb76e0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb76e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb76e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb76e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb76e5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb76e7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb76e9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb76eb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb76ee  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb76f1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb76f3  2      OPC=movl_r32_r32    
  movl $0x1003c0c8, (%r15,%rbx,1)                                  #  11    0xb76f5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb76fd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb7700  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb7702  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb770b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb770d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb7712  1      OPC=nop             
  nop                                                              #  18    0xb7713  1      OPC=nop             
  nop                                                              #  19    0xb7714  1      OPC=nop             
  nop                                                              #  20    0xb7715  1      OPC=nop             
  nop                                                              #  21    0xb7716  1      OPC=nop             
  nop                                                              #  22    0xb7717  1      OPC=nop             
  nop                                                              #  23    0xb7718  1      OPC=nop             
  nop                                                              #  24    0xb7719  1      OPC=nop             
  nop                                                              #  25    0xb771a  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0xb771b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb7720  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb7723  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb7726  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb7727  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb7729  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb7730  1      OPC=nop             
  nop                                                              #  33    0xb7731  1      OPC=nop             
  nop                                                              #  34    0xb7732  1      OPC=nop             
  nop                                                              #  35    0xb7733  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb7734  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb7737  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb773a  1      OPC=nop             
  nop                                                              #  39    0xb773b  1      OPC=nop             
  nop                                                              #  40    0xb773c  1      OPC=nop             
  nop                                                              #  41    0xb773d  1      OPC=nop             
  nop                                                              #  42    0xb773e  1      OPC=nop             
  nop                                                              #  43    0xb773f  1      OPC=nop             
  nop                                                              #  44    0xb7740  1      OPC=nop             
  nop                                                              #  45    0xb7741  1      OPC=nop             
  nop                                                              #  46    0xb7742  1      OPC=nop             
  nop                                                              #  47    0xb7743  1      OPC=nop             
  nop                                                              #  48    0xb7744  1      OPC=nop             
  nop                                                              #  49    0xb7745  1      OPC=nop             
  nop                                                              #  50    0xb7746  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7747  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7749  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb774d  1      OPC=nop             
  nop                                                              #  54    0xb774e  1      OPC=nop             
  nop                                                              #  55    0xb774f  1      OPC=nop             
  nop                                                              #  56    0xb7750  1      OPC=nop             
  nop                                                              #  57    0xb7751  1      OPC=nop             
  nop                                                              #  58    0xb7752  1      OPC=nop             
  nop                                                              #  59    0xb7753  1      OPC=nop             
  nop                                                              #  60    0xb7754  1      OPC=nop             
  nop                                                              #  61    0xb7755  1      OPC=nop             
  nop                                                              #  62    0xb7756  1      OPC=nop             
  nop                                                              #  63    0xb7757  1      OPC=nop             
  nop                                                              #  64    0xb7758  1      OPC=nop             
  nop                                                              #  65    0xb7759  1      OPC=nop             
  nop                                                              #  66    0xb775a  1      OPC=nop             
  nop                                                              #  67    0xb775b  1      OPC=nop             
  nop                                                              #  68    0xb775c  1      OPC=nop             
  nop                                                              #  69    0xb775d  1      OPC=nop             
  nop                                                              #  70    0xb775e  1      OPC=nop             
  nop                                                              #  71    0xb775f  1      OPC=nop             
  nop                                                              #  72    0xb7760  1      OPC=nop             
  nop                                                              #  73    0xb7761  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7762  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7767  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb776b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb776d  1      OPC=nop             
  nop                                                              #  78    0xb776e  1      OPC=nop             
  nop                                                              #  79    0xb776f  1      OPC=nop             
  nop                                                              #  80    0xb7770  1      OPC=nop             
  nop                                                              #  81    0xb7771  1      OPC=nop             
  nop                                                              #  82    0xb7772  1      OPC=nop             
  nop                                                              #  83    0xb7773  1      OPC=nop             
  nop                                                              #  84    0xb7774  1      OPC=nop             
  nop                                                              #  85    0xb7775  1      OPC=nop             
  nop                                                              #  86    0xb7776  1      OPC=nop             
  nop                                                              #  87    0xb7777  1      OPC=nop             
  nop                                                              #  88    0xb7778  1      OPC=nop             
  nop                                                              #  89    0xb7779  1      OPC=nop             
  nop                                                              #  90    0xb777a  1      OPC=nop             
  nop                                                              #  91    0xb777b  1      OPC=nop             
  nop                                                              #  92    0xb777c  1      OPC=nop             
  nop                                                              #  93    0xb777d  1      OPC=nop             
  nop                                                              #  94    0xb777e  1      OPC=nop             
  nop                                                              #  95    0xb777f  1      OPC=nop             
  nop                                                              #  96    0xb7780  1      OPC=nop             
  nop                                                              #  97    0xb7781  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7782  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb0EEC2EPiPKcj, .-_ZNSt10moneypunctIwLb0EEC2EPiPKcj

