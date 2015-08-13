  .text
  .globl _ZNSt8numpunctIwEC2EPij
  .type _ZNSt8numpunctIwEC2EPij, @function

#! file-offset 0xf65e0
#! rip-offset  0xb65e0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2EPij:                              #        0xb65e0  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb65e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb65e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb65e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0xb65e5  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0xb65e7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0xb65e9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0xb65ec  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0xb65ef  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0xb65f1  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb65f3  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0xb65fb  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0xb65fe  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0xb6600  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb6602  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0xb660b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb660d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0xb6612  1      OPC=nop             
  nop                                                  #  18    0xb6613  1      OPC=nop             
  nop                                                  #  19    0xb6614  1      OPC=nop             
  nop                                                  #  20    0xb6615  1      OPC=nop             
  nop                                                  #  21    0xb6616  1      OPC=nop             
  nop                                                  #  22    0xb6617  1      OPC=nop             
  nop                                                  #  23    0xb6618  1      OPC=nop             
  nop                                                  #  24    0xb6619  1      OPC=nop             
  nop                                                  #  25    0xb661a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb661b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0xb6620  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0xb6623  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0xb6626  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0xb6627  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0xb6629  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0xb6630  1      OPC=nop             
  nop                                                  #  33    0xb6631  1      OPC=nop             
  nop                                                  #  34    0xb6632  1      OPC=nop             
  nop                                                  #  35    0xb6633  1      OPC=nop             
  addq %r15, %r11                                      #  36    0xb6634  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0xb6637  3      OPC=jmpq_r64        
  nop                                                  #  38    0xb663a  1      OPC=nop             
  nop                                                  #  39    0xb663b  1      OPC=nop             
  nop                                                  #  40    0xb663c  1      OPC=nop             
  nop                                                  #  41    0xb663d  1      OPC=nop             
  nop                                                  #  42    0xb663e  1      OPC=nop             
  nop                                                  #  43    0xb663f  1      OPC=nop             
  nop                                                  #  44    0xb6640  1      OPC=nop             
  nop                                                  #  45    0xb6641  1      OPC=nop             
  nop                                                  #  46    0xb6642  1      OPC=nop             
  nop                                                  #  47    0xb6643  1      OPC=nop             
  nop                                                  #  48    0xb6644  1      OPC=nop             
  nop                                                  #  49    0xb6645  1      OPC=nop             
  nop                                                  #  50    0xb6646  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0xb6647  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0xb6649  4      OPC=movl_m32_r32    
  nop                                                  #  53    0xb664d  1      OPC=nop             
  nop                                                  #  54    0xb664e  1      OPC=nop             
  nop                                                  #  55    0xb664f  1      OPC=nop             
  nop                                                  #  56    0xb6650  1      OPC=nop             
  nop                                                  #  57    0xb6651  1      OPC=nop             
  nop                                                  #  58    0xb6652  1      OPC=nop             
  nop                                                  #  59    0xb6653  1      OPC=nop             
  nop                                                  #  60    0xb6654  1      OPC=nop             
  nop                                                  #  61    0xb6655  1      OPC=nop             
  nop                                                  #  62    0xb6656  1      OPC=nop             
  nop                                                  #  63    0xb6657  1      OPC=nop             
  nop                                                  #  64    0xb6658  1      OPC=nop             
  nop                                                  #  65    0xb6659  1      OPC=nop             
  nop                                                  #  66    0xb665a  1      OPC=nop             
  nop                                                  #  67    0xb665b  1      OPC=nop             
  nop                                                  #  68    0xb665c  1      OPC=nop             
  nop                                                  #  69    0xb665d  1      OPC=nop             
  nop                                                  #  70    0xb665e  1      OPC=nop             
  nop                                                  #  71    0xb665f  1      OPC=nop             
  nop                                                  #  72    0xb6660  1      OPC=nop             
  nop                                                  #  73    0xb6661  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb6662  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0xb6667  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0xb666b  2      OPC=movl_r32_r32    
  nop                                                  #  77    0xb666d  1      OPC=nop             
  nop                                                  #  78    0xb666e  1      OPC=nop             
  nop                                                  #  79    0xb666f  1      OPC=nop             
  nop                                                  #  80    0xb6670  1      OPC=nop             
  nop                                                  #  81    0xb6671  1      OPC=nop             
  nop                                                  #  82    0xb6672  1      OPC=nop             
  nop                                                  #  83    0xb6673  1      OPC=nop             
  nop                                                  #  84    0xb6674  1      OPC=nop             
  nop                                                  #  85    0xb6675  1      OPC=nop             
  nop                                                  #  86    0xb6676  1      OPC=nop             
  nop                                                  #  87    0xb6677  1      OPC=nop             
  nop                                                  #  88    0xb6678  1      OPC=nop             
  nop                                                  #  89    0xb6679  1      OPC=nop             
  nop                                                  #  90    0xb667a  1      OPC=nop             
  nop                                                  #  91    0xb667b  1      OPC=nop             
  nop                                                  #  92    0xb667c  1      OPC=nop             
  nop                                                  #  93    0xb667d  1      OPC=nop             
  nop                                                  #  94    0xb667e  1      OPC=nop             
  nop                                                  #  95    0xb667f  1      OPC=nop             
  nop                                                  #  96    0xb6680  1      OPC=nop             
  nop                                                  #  97    0xb6681  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0xb6682  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2EPij, .-_ZNSt8numpunctIwEC2EPij

