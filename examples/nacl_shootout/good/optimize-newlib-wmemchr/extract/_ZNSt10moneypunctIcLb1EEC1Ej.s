  .text
  .globl _ZNSt10moneypunctIcLb1EEC1Ej
  .type _ZNSt10moneypunctIcLb1EEC1Ej, @function

#! file-offset 0xbe960
#! rip-offset  0x7e960
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC1Ej:                                     #        0x7e960  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e960  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e961  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e963  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  4     0x7e965  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  5     0x7e967  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  6     0x7e96a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                                 #  7     0x7e96d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  8     0x7e96f  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  9     0x7e971  8      OPC=movl_m32_imm32  
  setne %al                                                        #  10    0x7e979  3      OPC=setne_r8        
  nop                                                              #  11    0x7e97c  1      OPC=nop             
  nop                                                              #  12    0x7e97d  1      OPC=nop             
  nop                                                              #  13    0x7e97e  1      OPC=nop             
  nop                                                              #  14    0x7e97f  1      OPC=nop             
  movl %ebx, %ebx                                                  #  15    0x7e980  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  16    0x7e982  9      OPC=movl_m32_imm32  
  xorl %edx, %edx                                                  #  17    0x7e98b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                                  #  18    0x7e98d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  19    0x7e98f  5      OPC=movl_m32_r32    
  xorl %esi, %esi                                                  #  20    0x7e994  2      OPC=xorl_r32_r32    
  nop                                                              #  21    0x7e996  1      OPC=nop             
  nop                                                              #  22    0x7e997  1      OPC=nop             
  nop                                                              #  23    0x7e998  1      OPC=nop             
  nop                                                              #  24    0x7e999  1      OPC=nop             
  nop                                                              #  25    0x7e99a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7e99b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7e9a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7e9a3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7e9a6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7e9a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7e9a9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7e9b0  1      OPC=nop             
  nop                                                              #  33    0x7e9b1  1      OPC=nop             
  nop                                                              #  34    0x7e9b2  1      OPC=nop             
  nop                                                              #  35    0x7e9b3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7e9b4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7e9b7  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7e9ba  1      OPC=nop             
  nop                                                              #  39    0x7e9bb  1      OPC=nop             
  nop                                                              #  40    0x7e9bc  1      OPC=nop             
  nop                                                              #  41    0x7e9bd  1      OPC=nop             
  nop                                                              #  42    0x7e9be  1      OPC=nop             
  nop                                                              #  43    0x7e9bf  1      OPC=nop             
  nop                                                              #  44    0x7e9c0  1      OPC=nop             
  nop                                                              #  45    0x7e9c1  1      OPC=nop             
  nop                                                              #  46    0x7e9c2  1      OPC=nop             
  nop                                                              #  47    0x7e9c3  1      OPC=nop             
  nop                                                              #  48    0x7e9c4  1      OPC=nop             
  nop                                                              #  49    0x7e9c5  1      OPC=nop             
  nop                                                              #  50    0x7e9c6  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7e9c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7e9c9  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7e9cd  1      OPC=nop             
  nop                                                              #  54    0x7e9ce  1      OPC=nop             
  nop                                                              #  55    0x7e9cf  1      OPC=nop             
  nop                                                              #  56    0x7e9d0  1      OPC=nop             
  nop                                                              #  57    0x7e9d1  1      OPC=nop             
  nop                                                              #  58    0x7e9d2  1      OPC=nop             
  nop                                                              #  59    0x7e9d3  1      OPC=nop             
  nop                                                              #  60    0x7e9d4  1      OPC=nop             
  nop                                                              #  61    0x7e9d5  1      OPC=nop             
  nop                                                              #  62    0x7e9d6  1      OPC=nop             
  nop                                                              #  63    0x7e9d7  1      OPC=nop             
  nop                                                              #  64    0x7e9d8  1      OPC=nop             
  nop                                                              #  65    0x7e9d9  1      OPC=nop             
  nop                                                              #  66    0x7e9da  1      OPC=nop             
  nop                                                              #  67    0x7e9db  1      OPC=nop             
  nop                                                              #  68    0x7e9dc  1      OPC=nop             
  nop                                                              #  69    0x7e9dd  1      OPC=nop             
  nop                                                              #  70    0x7e9de  1      OPC=nop             
  nop                                                              #  71    0x7e9df  1      OPC=nop             
  nop                                                              #  72    0x7e9e0  1      OPC=nop             
  nop                                                              #  73    0x7e9e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7e9e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7e9e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7e9eb  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7e9ed  1      OPC=nop             
  nop                                                              #  78    0x7e9ee  1      OPC=nop             
  nop                                                              #  79    0x7e9ef  1      OPC=nop             
  nop                                                              #  80    0x7e9f0  1      OPC=nop             
  nop                                                              #  81    0x7e9f1  1      OPC=nop             
  nop                                                              #  82    0x7e9f2  1      OPC=nop             
  nop                                                              #  83    0x7e9f3  1      OPC=nop             
  nop                                                              #  84    0x7e9f4  1      OPC=nop             
  nop                                                              #  85    0x7e9f5  1      OPC=nop             
  nop                                                              #  86    0x7e9f6  1      OPC=nop             
  nop                                                              #  87    0x7e9f7  1      OPC=nop             
  nop                                                              #  88    0x7e9f8  1      OPC=nop             
  nop                                                              #  89    0x7e9f9  1      OPC=nop             
  nop                                                              #  90    0x7e9fa  1      OPC=nop             
  nop                                                              #  91    0x7e9fb  1      OPC=nop             
  nop                                                              #  92    0x7e9fc  1      OPC=nop             
  nop                                                              #  93    0x7e9fd  1      OPC=nop             
  nop                                                              #  94    0x7e9fe  1      OPC=nop             
  nop                                                              #  95    0x7e9ff  1      OPC=nop             
  nop                                                              #  96    0x7ea00  1      OPC=nop             
  nop                                                              #  97    0x7ea01  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7ea02  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC1Ej, .-_ZNSt10moneypunctIcLb1EEC1Ej

