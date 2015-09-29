  .text
  .globl _ZNSt10moneypunctIcLb0EEC2Ej
  .type _ZNSt10moneypunctIcLb0EEC2Ej, @function

#! file-offset 0xbf560
#! rip-offset  0x7f560
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb0EEC2Ej:                                     #        0x7f560  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7f560  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7f561  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7f563  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7f565  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7f567  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7f56a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7f56d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7f56f  2      OPC=movl_r32_r32    
  movl $0x1003ae48, (%r15,%rbx,1)                                  #  9     0x7f571  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7f579  3      OPC=setne_r8        
  nop                                                              #  11    0x7f57c  1      OPC=nop             
  nop                                                              #  12    0x7f57d  1      OPC=nop             
  nop                                                              #  13    0x7f57e  1      OPC=nop             
  nop                                                              #  14    0x7f57f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7f580  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7f582  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7f58b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7f58d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7f58f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7f594  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7f596  1      OPC=nop             
  nop                                                              #  22    0x7f597  1      OPC=nop             
  nop                                                              #  23    0x7f598  1      OPC=nop             
  nop                                                              #  24    0x7f599  1      OPC=nop             
  nop                                                              #  25    0x7f59a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb0EE24_M_initialize_moneypunctEPiPKc  #  26    0x7f59b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7f5a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7f5a3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7f5a6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7f5a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7f5a9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7f5b0  1      OPC=nop             
  nop                                                              #  33    0x7f5b1  1      OPC=nop             
  nop                                                              #  34    0x7f5b2  1      OPC=nop             
  nop                                                              #  35    0x7f5b3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7f5b4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7f5b7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7f5ba  1      OPC=nop             
  nop                                                              #  39    0x7f5bb  1      OPC=nop             
  nop                                                              #  40    0x7f5bc  1      OPC=nop             
  nop                                                              #  41    0x7f5bd  1      OPC=nop             
  nop                                                              #  42    0x7f5be  1      OPC=nop             
  nop                                                              #  43    0x7f5bf  1      OPC=nop             
  nop                                                              #  44    0x7f5c0  1      OPC=nop             
  nop                                                              #  45    0x7f5c1  1      OPC=nop             
  nop                                                              #  46    0x7f5c2  1      OPC=nop             
  nop                                                              #  47    0x7f5c3  1      OPC=nop             
  nop                                                              #  48    0x7f5c4  1      OPC=nop             
  nop                                                              #  49    0x7f5c5  1      OPC=nop             
  nop                                                              #  50    0x7f5c6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7f5c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7f5c9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7f5cd  1      OPC=nop             
  nop                                                              #  54    0x7f5ce  1      OPC=nop             
  nop                                                              #  55    0x7f5cf  1      OPC=nop             
  nop                                                              #  56    0x7f5d0  1      OPC=nop             
  nop                                                              #  57    0x7f5d1  1      OPC=nop             
  nop                                                              #  58    0x7f5d2  1      OPC=nop             
  nop                                                              #  59    0x7f5d3  1      OPC=nop             
  nop                                                              #  60    0x7f5d4  1      OPC=nop             
  nop                                                              #  61    0x7f5d5  1      OPC=nop             
  nop                                                              #  62    0x7f5d6  1      OPC=nop             
  nop                                                              #  63    0x7f5d7  1      OPC=nop             
  nop                                                              #  64    0x7f5d8  1      OPC=nop             
  nop                                                              #  65    0x7f5d9  1      OPC=nop             
  nop                                                              #  66    0x7f5da  1      OPC=nop             
  nop                                                              #  67    0x7f5db  1      OPC=nop             
  nop                                                              #  68    0x7f5dc  1      OPC=nop             
  nop                                                              #  69    0x7f5dd  1      OPC=nop             
  nop                                                              #  70    0x7f5de  1      OPC=nop             
  nop                                                              #  71    0x7f5df  1      OPC=nop             
  nop                                                              #  72    0x7f5e0  1      OPC=nop             
  nop                                                              #  73    0x7f5e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7f5e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7f5e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7f5eb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7f5ed  1      OPC=nop             
  nop                                                              #  78    0x7f5ee  1      OPC=nop             
  nop                                                              #  79    0x7f5ef  1      OPC=nop             
  nop                                                              #  80    0x7f5f0  1      OPC=nop             
  nop                                                              #  81    0x7f5f1  1      OPC=nop             
  nop                                                              #  82    0x7f5f2  1      OPC=nop             
  nop                                                              #  83    0x7f5f3  1      OPC=nop             
  nop                                                              #  84    0x7f5f4  1      OPC=nop             
  nop                                                              #  85    0x7f5f5  1      OPC=nop             
  nop                                                              #  86    0x7f5f6  1      OPC=nop             
  nop                                                              #  87    0x7f5f7  1      OPC=nop             
  nop                                                              #  88    0x7f5f8  1      OPC=nop             
  nop                                                              #  89    0x7f5f9  1      OPC=nop             
  nop                                                              #  90    0x7f5fa  1      OPC=nop             
  nop                                                              #  91    0x7f5fb  1      OPC=nop             
  nop                                                              #  92    0x7f5fc  1      OPC=nop             
  nop                                                              #  93    0x7f5fd  1      OPC=nop             
  nop                                                              #  94    0x7f5fe  1      OPC=nop             
  nop                                                              #  95    0x7f5ff  1      OPC=nop             
  nop                                                              #  96    0x7f600  1      OPC=nop             
  nop                                                              #  97    0x7f601  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7f602  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb0EEC2Ej, .-_ZNSt10moneypunctIcLb0EEC2Ej

