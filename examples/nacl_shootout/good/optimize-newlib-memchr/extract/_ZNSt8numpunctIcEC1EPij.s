  .text
  .globl _ZNSt8numpunctIcEC1EPij
  .type _ZNSt8numpunctIcEC1EPij, @function

#! file-offset 0xbe440
#! rip-offset  0x7e440
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1EPij:                              #        0x7e440  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7e440  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7e441  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7e443  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0x7e445  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0x7e447  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0x7e449  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0x7e44c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0x7e44f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0x7e451  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7e453  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0x7e45b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0x7e45e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0x7e460  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7e462  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0x7e46b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7e46d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0x7e472  1      OPC=nop             
  nop                                                  #  18    0x7e473  1      OPC=nop             
  nop                                                  #  19    0x7e474  1      OPC=nop             
  nop                                                  #  20    0x7e475  1      OPC=nop             
  nop                                                  #  21    0x7e476  1      OPC=nop             
  nop                                                  #  22    0x7e477  1      OPC=nop             
  nop                                                  #  23    0x7e478  1      OPC=nop             
  nop                                                  #  24    0x7e479  1      OPC=nop             
  nop                                                  #  25    0x7e47a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7e47b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0x7e480  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0x7e483  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0x7e486  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0x7e487  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0x7e489  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0x7e490  1      OPC=nop             
  nop                                                  #  33    0x7e491  1      OPC=nop             
  nop                                                  #  34    0x7e492  1      OPC=nop             
  nop                                                  #  35    0x7e493  1      OPC=nop             
  addq %r15, %r11                                      #  36    0x7e494  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0x7e497  3      OPC=jmpq_r64        
  nop                                                  #  38    0x7e49a  1      OPC=nop             
  nop                                                  #  39    0x7e49b  1      OPC=nop             
  nop                                                  #  40    0x7e49c  1      OPC=nop             
  nop                                                  #  41    0x7e49d  1      OPC=nop             
  nop                                                  #  42    0x7e49e  1      OPC=nop             
  nop                                                  #  43    0x7e49f  1      OPC=nop             
  nop                                                  #  44    0x7e4a0  1      OPC=nop             
  nop                                                  #  45    0x7e4a1  1      OPC=nop             
  nop                                                  #  46    0x7e4a2  1      OPC=nop             
  nop                                                  #  47    0x7e4a3  1      OPC=nop             
  nop                                                  #  48    0x7e4a4  1      OPC=nop             
  nop                                                  #  49    0x7e4a5  1      OPC=nop             
  nop                                                  #  50    0x7e4a6  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0x7e4a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0x7e4a9  4      OPC=movl_m32_r32    
  nop                                                  #  53    0x7e4ad  1      OPC=nop             
  nop                                                  #  54    0x7e4ae  1      OPC=nop             
  nop                                                  #  55    0x7e4af  1      OPC=nop             
  nop                                                  #  56    0x7e4b0  1      OPC=nop             
  nop                                                  #  57    0x7e4b1  1      OPC=nop             
  nop                                                  #  58    0x7e4b2  1      OPC=nop             
  nop                                                  #  59    0x7e4b3  1      OPC=nop             
  nop                                                  #  60    0x7e4b4  1      OPC=nop             
  nop                                                  #  61    0x7e4b5  1      OPC=nop             
  nop                                                  #  62    0x7e4b6  1      OPC=nop             
  nop                                                  #  63    0x7e4b7  1      OPC=nop             
  nop                                                  #  64    0x7e4b8  1      OPC=nop             
  nop                                                  #  65    0x7e4b9  1      OPC=nop             
  nop                                                  #  66    0x7e4ba  1      OPC=nop             
  nop                                                  #  67    0x7e4bb  1      OPC=nop             
  nop                                                  #  68    0x7e4bc  1      OPC=nop             
  nop                                                  #  69    0x7e4bd  1      OPC=nop             
  nop                                                  #  70    0x7e4be  1      OPC=nop             
  nop                                                  #  71    0x7e4bf  1      OPC=nop             
  nop                                                  #  72    0x7e4c0  1      OPC=nop             
  nop                                                  #  73    0x7e4c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7e4c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0x7e4c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0x7e4cb  2      OPC=movl_r32_r32    
  nop                                                  #  77    0x7e4cd  1      OPC=nop             
  nop                                                  #  78    0x7e4ce  1      OPC=nop             
  nop                                                  #  79    0x7e4cf  1      OPC=nop             
  nop                                                  #  80    0x7e4d0  1      OPC=nop             
  nop                                                  #  81    0x7e4d1  1      OPC=nop             
  nop                                                  #  82    0x7e4d2  1      OPC=nop             
  nop                                                  #  83    0x7e4d3  1      OPC=nop             
  nop                                                  #  84    0x7e4d4  1      OPC=nop             
  nop                                                  #  85    0x7e4d5  1      OPC=nop             
  nop                                                  #  86    0x7e4d6  1      OPC=nop             
  nop                                                  #  87    0x7e4d7  1      OPC=nop             
  nop                                                  #  88    0x7e4d8  1      OPC=nop             
  nop                                                  #  89    0x7e4d9  1      OPC=nop             
  nop                                                  #  90    0x7e4da  1      OPC=nop             
  nop                                                  #  91    0x7e4db  1      OPC=nop             
  nop                                                  #  92    0x7e4dc  1      OPC=nop             
  nop                                                  #  93    0x7e4dd  1      OPC=nop             
  nop                                                  #  94    0x7e4de  1      OPC=nop             
  nop                                                  #  95    0x7e4df  1      OPC=nop             
  nop                                                  #  96    0x7e4e0  1      OPC=nop             
  nop                                                  #  97    0x7e4e1  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0x7e4e2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1EPij, .-_ZNSt8numpunctIcEC1EPij

