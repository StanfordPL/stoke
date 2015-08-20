  .text
  .globl _ZNSt10moneypunctIcLb1EEC1EPiPKcj
  .type _ZNSt10moneypunctIcLb1EEC1EPiPKcj, @function

#! file-offset 0xbe6e0
#! rip-offset  0x7e6e0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC1EPiPKcj:                                #        0x7e6e0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e6e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e6e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e6e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7e6e5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7e6e7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7e6e9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7e6eb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7e6ee  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7e6f1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7e6f3  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  11    0x7e6f5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7e6fd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7e700  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7e702  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7e70b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7e70d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7e712  1      OPC=nop             
  nop                                                              #  18    0x7e713  1      OPC=nop             
  nop                                                              #  19    0x7e714  1      OPC=nop             
  nop                                                              #  20    0x7e715  1      OPC=nop             
  nop                                                              #  21    0x7e716  1      OPC=nop             
  nop                                                              #  22    0x7e717  1      OPC=nop             
  nop                                                              #  23    0x7e718  1      OPC=nop             
  nop                                                              #  24    0x7e719  1      OPC=nop             
  nop                                                              #  25    0x7e71a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7e71b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7e720  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7e723  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7e726  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7e727  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7e729  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7e730  1      OPC=nop             
  nop                                                              #  33    0x7e731  1      OPC=nop             
  nop                                                              #  34    0x7e732  1      OPC=nop             
  nop                                                              #  35    0x7e733  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7e734  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7e737  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7e73a  1      OPC=nop             
  nop                                                              #  39    0x7e73b  1      OPC=nop             
  nop                                                              #  40    0x7e73c  1      OPC=nop             
  nop                                                              #  41    0x7e73d  1      OPC=nop             
  nop                                                              #  42    0x7e73e  1      OPC=nop             
  nop                                                              #  43    0x7e73f  1      OPC=nop             
  nop                                                              #  44    0x7e740  1      OPC=nop             
  nop                                                              #  45    0x7e741  1      OPC=nop             
  nop                                                              #  46    0x7e742  1      OPC=nop             
  nop                                                              #  47    0x7e743  1      OPC=nop             
  nop                                                              #  48    0x7e744  1      OPC=nop             
  nop                                                              #  49    0x7e745  1      OPC=nop             
  nop                                                              #  50    0x7e746  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7e747  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7e749  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7e74d  1      OPC=nop             
  nop                                                              #  54    0x7e74e  1      OPC=nop             
  nop                                                              #  55    0x7e74f  1      OPC=nop             
  nop                                                              #  56    0x7e750  1      OPC=nop             
  nop                                                              #  57    0x7e751  1      OPC=nop             
  nop                                                              #  58    0x7e752  1      OPC=nop             
  nop                                                              #  59    0x7e753  1      OPC=nop             
  nop                                                              #  60    0x7e754  1      OPC=nop             
  nop                                                              #  61    0x7e755  1      OPC=nop             
  nop                                                              #  62    0x7e756  1      OPC=nop             
  nop                                                              #  63    0x7e757  1      OPC=nop             
  nop                                                              #  64    0x7e758  1      OPC=nop             
  nop                                                              #  65    0x7e759  1      OPC=nop             
  nop                                                              #  66    0x7e75a  1      OPC=nop             
  nop                                                              #  67    0x7e75b  1      OPC=nop             
  nop                                                              #  68    0x7e75c  1      OPC=nop             
  nop                                                              #  69    0x7e75d  1      OPC=nop             
  nop                                                              #  70    0x7e75e  1      OPC=nop             
  nop                                                              #  71    0x7e75f  1      OPC=nop             
  nop                                                              #  72    0x7e760  1      OPC=nop             
  nop                                                              #  73    0x7e761  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7e762  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7e767  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7e76b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7e76d  1      OPC=nop             
  nop                                                              #  78    0x7e76e  1      OPC=nop             
  nop                                                              #  79    0x7e76f  1      OPC=nop             
  nop                                                              #  80    0x7e770  1      OPC=nop             
  nop                                                              #  81    0x7e771  1      OPC=nop             
  nop                                                              #  82    0x7e772  1      OPC=nop             
  nop                                                              #  83    0x7e773  1      OPC=nop             
  nop                                                              #  84    0x7e774  1      OPC=nop             
  nop                                                              #  85    0x7e775  1      OPC=nop             
  nop                                                              #  86    0x7e776  1      OPC=nop             
  nop                                                              #  87    0x7e777  1      OPC=nop             
  nop                                                              #  88    0x7e778  1      OPC=nop             
  nop                                                              #  89    0x7e779  1      OPC=nop             
  nop                                                              #  90    0x7e77a  1      OPC=nop             
  nop                                                              #  91    0x7e77b  1      OPC=nop             
  nop                                                              #  92    0x7e77c  1      OPC=nop             
  nop                                                              #  93    0x7e77d  1      OPC=nop             
  nop                                                              #  94    0x7e77e  1      OPC=nop             
  nop                                                              #  95    0x7e77f  1      OPC=nop             
  nop                                                              #  96    0x7e780  1      OPC=nop             
  nop                                                              #  97    0x7e781  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7e782  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC1EPiPKcj, .-_ZNSt10moneypunctIcLb1EEC1EPiPKcj

