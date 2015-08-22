  .text
  .globl _ZNSt8numpunctIcEC2EPij
  .type _ZNSt8numpunctIcEC2EPij, @function

#! file-offset 0xbe4e0
#! rip-offset  0x7e4e0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2EPij:                              #        0x7e4e0  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7e4e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7e4e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7e4e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0x7e4e5  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0x7e4e7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0x7e4e9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0x7e4ec  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0x7e4ef  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0x7e4f1  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7e4f3  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0x7e4fb  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0x7e4fe  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0x7e500  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7e502  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0x7e50b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7e50d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0x7e512  1      OPC=nop             
  nop                                                  #  18    0x7e513  1      OPC=nop             
  nop                                                  #  19    0x7e514  1      OPC=nop             
  nop                                                  #  20    0x7e515  1      OPC=nop             
  nop                                                  #  21    0x7e516  1      OPC=nop             
  nop                                                  #  22    0x7e517  1      OPC=nop             
  nop                                                  #  23    0x7e518  1      OPC=nop             
  nop                                                  #  24    0x7e519  1      OPC=nop             
  nop                                                  #  25    0x7e51a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7e51b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0x7e520  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0x7e523  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0x7e526  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0x7e527  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0x7e529  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0x7e530  1      OPC=nop             
  nop                                                  #  33    0x7e531  1      OPC=nop             
  nop                                                  #  34    0x7e532  1      OPC=nop             
  nop                                                  #  35    0x7e533  1      OPC=nop             
  addq %r15, %r11                                      #  36    0x7e534  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0x7e537  3      OPC=jmpq_r64        
  nop                                                  #  38    0x7e53a  1      OPC=nop             
  nop                                                  #  39    0x7e53b  1      OPC=nop             
  nop                                                  #  40    0x7e53c  1      OPC=nop             
  nop                                                  #  41    0x7e53d  1      OPC=nop             
  nop                                                  #  42    0x7e53e  1      OPC=nop             
  nop                                                  #  43    0x7e53f  1      OPC=nop             
  nop                                                  #  44    0x7e540  1      OPC=nop             
  nop                                                  #  45    0x7e541  1      OPC=nop             
  nop                                                  #  46    0x7e542  1      OPC=nop             
  nop                                                  #  47    0x7e543  1      OPC=nop             
  nop                                                  #  48    0x7e544  1      OPC=nop             
  nop                                                  #  49    0x7e545  1      OPC=nop             
  nop                                                  #  50    0x7e546  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0x7e547  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0x7e549  4      OPC=movl_m32_r32    
  nop                                                  #  53    0x7e54d  1      OPC=nop             
  nop                                                  #  54    0x7e54e  1      OPC=nop             
  nop                                                  #  55    0x7e54f  1      OPC=nop             
  nop                                                  #  56    0x7e550  1      OPC=nop             
  nop                                                  #  57    0x7e551  1      OPC=nop             
  nop                                                  #  58    0x7e552  1      OPC=nop             
  nop                                                  #  59    0x7e553  1      OPC=nop             
  nop                                                  #  60    0x7e554  1      OPC=nop             
  nop                                                  #  61    0x7e555  1      OPC=nop             
  nop                                                  #  62    0x7e556  1      OPC=nop             
  nop                                                  #  63    0x7e557  1      OPC=nop             
  nop                                                  #  64    0x7e558  1      OPC=nop             
  nop                                                  #  65    0x7e559  1      OPC=nop             
  nop                                                  #  66    0x7e55a  1      OPC=nop             
  nop                                                  #  67    0x7e55b  1      OPC=nop             
  nop                                                  #  68    0x7e55c  1      OPC=nop             
  nop                                                  #  69    0x7e55d  1      OPC=nop             
  nop                                                  #  70    0x7e55e  1      OPC=nop             
  nop                                                  #  71    0x7e55f  1      OPC=nop             
  nop                                                  #  72    0x7e560  1      OPC=nop             
  nop                                                  #  73    0x7e561  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7e562  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0x7e567  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0x7e56b  2      OPC=movl_r32_r32    
  nop                                                  #  77    0x7e56d  1      OPC=nop             
  nop                                                  #  78    0x7e56e  1      OPC=nop             
  nop                                                  #  79    0x7e56f  1      OPC=nop             
  nop                                                  #  80    0x7e570  1      OPC=nop             
  nop                                                  #  81    0x7e571  1      OPC=nop             
  nop                                                  #  82    0x7e572  1      OPC=nop             
  nop                                                  #  83    0x7e573  1      OPC=nop             
  nop                                                  #  84    0x7e574  1      OPC=nop             
  nop                                                  #  85    0x7e575  1      OPC=nop             
  nop                                                  #  86    0x7e576  1      OPC=nop             
  nop                                                  #  87    0x7e577  1      OPC=nop             
  nop                                                  #  88    0x7e578  1      OPC=nop             
  nop                                                  #  89    0x7e579  1      OPC=nop             
  nop                                                  #  90    0x7e57a  1      OPC=nop             
  nop                                                  #  91    0x7e57b  1      OPC=nop             
  nop                                                  #  92    0x7e57c  1      OPC=nop             
  nop                                                  #  93    0x7e57d  1      OPC=nop             
  nop                                                  #  94    0x7e57e  1      OPC=nop             
  nop                                                  #  95    0x7e57f  1      OPC=nop             
  nop                                                  #  96    0x7e580  1      OPC=nop             
  nop                                                  #  97    0x7e581  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0x7e582  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2EPij, .-_ZNSt8numpunctIcEC2EPij

