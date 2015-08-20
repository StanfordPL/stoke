  .text
  .globl _ZNSt10moneypunctIwLb1EEC2EPiPKcj
  .type _ZNSt10moneypunctIwLb1EEC2EPiPKcj, @function

#! file-offset 0xf72a0
#! rip-offset  0xb72a0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EEC2EPiPKcj:                                #        0xb72a0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0xb72a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0xb72a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0xb72a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0xb72a5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0xb72a7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0xb72a9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0xb72ab  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0xb72ae  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0xb72b1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0xb72b3  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)                                  #  11    0xb72b5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0xb72bd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0xb72c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0xb72c2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0xb72cb  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0xb72cd  5      OPC=movl_m32_r32    
  nop                                                              #  17    0xb72d2  1      OPC=nop             
  nop                                                              #  18    0xb72d3  1      OPC=nop             
  nop                                                              #  19    0xb72d4  1      OPC=nop             
  nop                                                              #  20    0xb72d5  1      OPC=nop             
  nop                                                              #  21    0xb72d6  1      OPC=nop             
  nop                                                              #  22    0xb72d7  1      OPC=nop             
  nop                                                              #  23    0xb72d8  1      OPC=nop             
  nop                                                              #  24    0xb72d9  1      OPC=nop             
  nop                                                              #  25    0xb72da  1      OPC=nop             
  callq ._ZNSt10moneypunctIwLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0xb72db  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0xb72e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0xb72e3  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0xb72e6  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0xb72e7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0xb72e9  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0xb72f0  1      OPC=nop             
  nop                                                              #  33    0xb72f1  1      OPC=nop             
  nop                                                              #  34    0xb72f2  1      OPC=nop             
  nop                                                              #  35    0xb72f3  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0xb72f4  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0xb72f7  3      OPC=jmpq_r64        
  nop                                                              #  38    0xb72fa  1      OPC=nop             
  nop                                                              #  39    0xb72fb  1      OPC=nop             
  nop                                                              #  40    0xb72fc  1      OPC=nop             
  nop                                                              #  41    0xb72fd  1      OPC=nop             
  nop                                                              #  42    0xb72fe  1      OPC=nop             
  nop                                                              #  43    0xb72ff  1      OPC=nop             
  nop                                                              #  44    0xb7300  1      OPC=nop             
  nop                                                              #  45    0xb7301  1      OPC=nop             
  nop                                                              #  46    0xb7302  1      OPC=nop             
  nop                                                              #  47    0xb7303  1      OPC=nop             
  nop                                                              #  48    0xb7304  1      OPC=nop             
  nop                                                              #  49    0xb7305  1      OPC=nop             
  nop                                                              #  50    0xb7306  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0xb7307  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0xb7309  4      OPC=movl_m32_r32    
  nop                                                              #  53    0xb730d  1      OPC=nop             
  nop                                                              #  54    0xb730e  1      OPC=nop             
  nop                                                              #  55    0xb730f  1      OPC=nop             
  nop                                                              #  56    0xb7310  1      OPC=nop             
  nop                                                              #  57    0xb7311  1      OPC=nop             
  nop                                                              #  58    0xb7312  1      OPC=nop             
  nop                                                              #  59    0xb7313  1      OPC=nop             
  nop                                                              #  60    0xb7314  1      OPC=nop             
  nop                                                              #  61    0xb7315  1      OPC=nop             
  nop                                                              #  62    0xb7316  1      OPC=nop             
  nop                                                              #  63    0xb7317  1      OPC=nop             
  nop                                                              #  64    0xb7318  1      OPC=nop             
  nop                                                              #  65    0xb7319  1      OPC=nop             
  nop                                                              #  66    0xb731a  1      OPC=nop             
  nop                                                              #  67    0xb731b  1      OPC=nop             
  nop                                                              #  68    0xb731c  1      OPC=nop             
  nop                                                              #  69    0xb731d  1      OPC=nop             
  nop                                                              #  70    0xb731e  1      OPC=nop             
  nop                                                              #  71    0xb731f  1      OPC=nop             
  nop                                                              #  72    0xb7320  1      OPC=nop             
  nop                                                              #  73    0xb7321  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0xb7322  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0xb7327  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0xb732b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0xb732d  1      OPC=nop             
  nop                                                              #  78    0xb732e  1      OPC=nop             
  nop                                                              #  79    0xb732f  1      OPC=nop             
  nop                                                              #  80    0xb7330  1      OPC=nop             
  nop                                                              #  81    0xb7331  1      OPC=nop             
  nop                                                              #  82    0xb7332  1      OPC=nop             
  nop                                                              #  83    0xb7333  1      OPC=nop             
  nop                                                              #  84    0xb7334  1      OPC=nop             
  nop                                                              #  85    0xb7335  1      OPC=nop             
  nop                                                              #  86    0xb7336  1      OPC=nop             
  nop                                                              #  87    0xb7337  1      OPC=nop             
  nop                                                              #  88    0xb7338  1      OPC=nop             
  nop                                                              #  89    0xb7339  1      OPC=nop             
  nop                                                              #  90    0xb733a  1      OPC=nop             
  nop                                                              #  91    0xb733b  1      OPC=nop             
  nop                                                              #  92    0xb733c  1      OPC=nop             
  nop                                                              #  93    0xb733d  1      OPC=nop             
  nop                                                              #  94    0xb733e  1      OPC=nop             
  nop                                                              #  95    0xb733f  1      OPC=nop             
  nop                                                              #  96    0xb7340  1      OPC=nop             
  nop                                                              #  97    0xb7341  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0xb7342  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIwLb1EEC2EPiPKcj, .-_ZNSt10moneypunctIwLb1EEC2EPiPKcj

