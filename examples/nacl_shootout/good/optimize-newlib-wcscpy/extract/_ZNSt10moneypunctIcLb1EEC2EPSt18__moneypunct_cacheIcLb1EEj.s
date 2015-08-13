  .text
  .globl _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj
  .type _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj, @function

#! file-offset 0xbe5c0
#! rip-offset  0x7e5c0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj:       #        0x7e5c0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e5c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e5c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e5c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7e5c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7e5c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7e5ca  3      OPC=addq_r64_r64    
  testl %edx, %edx                                                 #  7     0x7e5cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7e5cf  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                                      #  9     0x7e5d1  5      OPC=movl_m32_r32    
  setne %al                                                        #  10    0x7e5d6  3      OPC=setne_r8        
  nop                                                              #  11    0x7e5d9  1      OPC=nop             
  nop                                                              #  12    0x7e5da  1      OPC=nop             
  nop                                                              #  13    0x7e5db  1      OPC=nop             
  nop                                                              #  14    0x7e5dc  1      OPC=nop             
  nop                                                              #  15    0x7e5dd  1      OPC=nop             
  nop                                                              #  16    0x7e5de  1      OPC=nop             
  nop                                                              #  17    0x7e5df  1      OPC=nop             
  movl %ebx, %ebx                                                  #  18    0x7e5e0  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  19    0x7e5e2  8      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  20    0x7e5ea  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  21    0x7e5ec  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  22    0x7e5ee  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  23    0x7e5f3  2      OPC=xorl_r32_r32    
  nop                                                              #  24    0x7e5f5  1      OPC=nop             
  nop                                                              #  25    0x7e5f6  1      OPC=nop             
  nop                                                              #  26    0x7e5f7  1      OPC=nop             
  nop                                                              #  27    0x7e5f8  1      OPC=nop             
  nop                                                              #  28    0x7e5f9  1      OPC=nop             
  nop                                                              #  29    0x7e5fa  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  30    0x7e5fb  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  31    0x7e600  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  32    0x7e603  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  33    0x7e606  1      OPC=popq_r64_1      
  popq %r11                                                        #  34    0x7e607  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  35    0x7e609  7      OPC=andl_r32_imm32  
  nop                                                              #  36    0x7e610  1      OPC=nop             
  nop                                                              #  37    0x7e611  1      OPC=nop             
  nop                                                              #  38    0x7e612  1      OPC=nop             
  nop                                                              #  39    0x7e613  1      OPC=nop             
  addq %r15, %r11                                                  #  40    0x7e614  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  41    0x7e617  3      OPC=jmpq_r64        
  nop                                                              #  42    0x7e61a  1      OPC=nop             
  nop                                                              #  43    0x7e61b  1      OPC=nop             
  nop                                                              #  44    0x7e61c  1      OPC=nop             
  nop                                                              #  45    0x7e61d  1      OPC=nop             
  nop                                                              #  46    0x7e61e  1      OPC=nop             
  nop                                                              #  47    0x7e61f  1      OPC=nop             
  nop                                                              #  48    0x7e620  1      OPC=nop             
  nop                                                              #  49    0x7e621  1      OPC=nop             
  nop                                                              #  50    0x7e622  1      OPC=nop             
  nop                                                              #  51    0x7e623  1      OPC=nop             
  nop                                                              #  52    0x7e624  1      OPC=nop             
  nop                                                              #  53    0x7e625  1      OPC=nop             
  nop                                                              #  54    0x7e626  1      OPC=nop             
  movl %ebx, %edi                                                  #  55    0x7e627  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  56    0x7e629  4      OPC=movl_m32_r32    
  nop                                                              #  57    0x7e62d  1      OPC=nop             
  nop                                                              #  58    0x7e62e  1      OPC=nop             
  nop                                                              #  59    0x7e62f  1      OPC=nop             
  nop                                                              #  60    0x7e630  1      OPC=nop             
  nop                                                              #  61    0x7e631  1      OPC=nop             
  nop                                                              #  62    0x7e632  1      OPC=nop             
  nop                                                              #  63    0x7e633  1      OPC=nop             
  nop                                                              #  64    0x7e634  1      OPC=nop             
  nop                                                              #  65    0x7e635  1      OPC=nop             
  nop                                                              #  66    0x7e636  1      OPC=nop             
  nop                                                              #  67    0x7e637  1      OPC=nop             
  nop                                                              #  68    0x7e638  1      OPC=nop             
  nop                                                              #  69    0x7e639  1      OPC=nop             
  nop                                                              #  70    0x7e63a  1      OPC=nop             
  nop                                                              #  71    0x7e63b  1      OPC=nop             
  nop                                                              #  72    0x7e63c  1      OPC=nop             
  nop                                                              #  73    0x7e63d  1      OPC=nop             
  nop                                                              #  74    0x7e63e  1      OPC=nop             
  nop                                                              #  75    0x7e63f  1      OPC=nop             
  nop                                                              #  76    0x7e640  1      OPC=nop             
  nop                                                              #  77    0x7e641  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  78    0x7e642  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  79    0x7e647  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  80    0x7e64b  2      OPC=movl_r32_r32    
  nop                                                              #  81    0x7e64d  1      OPC=nop             
  nop                                                              #  82    0x7e64e  1      OPC=nop             
  nop                                                              #  83    0x7e64f  1      OPC=nop             
  nop                                                              #  84    0x7e650  1      OPC=nop             
  nop                                                              #  85    0x7e651  1      OPC=nop             
  nop                                                              #  86    0x7e652  1      OPC=nop             
  nop                                                              #  87    0x7e653  1      OPC=nop             
  nop                                                              #  88    0x7e654  1      OPC=nop             
  nop                                                              #  89    0x7e655  1      OPC=nop             
  nop                                                              #  90    0x7e656  1      OPC=nop             
  nop                                                              #  91    0x7e657  1      OPC=nop             
  nop                                                              #  92    0x7e658  1      OPC=nop             
  nop                                                              #  93    0x7e659  1      OPC=nop             
  nop                                                              #  94    0x7e65a  1      OPC=nop             
  nop                                                              #  95    0x7e65b  1      OPC=nop             
  nop                                                              #  96    0x7e65c  1      OPC=nop             
  nop                                                              #  97    0x7e65d  1      OPC=nop             
  nop                                                              #  98    0x7e65e  1      OPC=nop             
  nop                                                              #  99    0x7e65f  1      OPC=nop             
  nop                                                              #  100   0x7e660  1      OPC=nop             
  nop                                                              #  101   0x7e661  1      OPC=nop             
  callq ._Unwind_Resume                                            #  102   0x7e662  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj, .-_ZNSt10moneypunctIcLb1EEC2EPSt18__moneypunct_cacheIcLb1EEj

