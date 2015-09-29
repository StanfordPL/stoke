  .text
  .globl _ZNSt8numpunctIwEC1EPij
  .type _ZNSt8numpunctIwEC1EPij, @function

#! file-offset 0xf6f60
#! rip-offset  0xb6f60
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1EPij:                              #        0xb6f60  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6f60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6f61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6f63  2      OPC=movl_r32_r32    
  movl %esi, %esi                                      #  4     0xb6f65  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  5     0xb6f67  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  6     0xb6f69  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  7     0xb6f6c  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  8     0xb6f6f  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  9     0xb6f71  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  10    0xb6f73  8      OPC=movl_m32_imm32  
  setne %al                                            #  11    0xb6f7b  3      OPC=setne_r8        
  xchgw %ax, %ax                                       #  12    0xb6f7e  2      OPC=xchgw_ax_r16    
  movl %ebx, %ebx                                      #  13    0xb6f80  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0xb6f82  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                      #  15    0xb6f8b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0xb6f8d  5      OPC=movl_m32_r32    
  nop                                                  #  17    0xb6f92  1      OPC=nop             
  nop                                                  #  18    0xb6f93  1      OPC=nop             
  nop                                                  #  19    0xb6f94  1      OPC=nop             
  nop                                                  #  20    0xb6f95  1      OPC=nop             
  nop                                                  #  21    0xb6f96  1      OPC=nop             
  nop                                                  #  22    0xb6f97  1      OPC=nop             
  nop                                                  #  23    0xb6f98  1      OPC=nop             
  nop                                                  #  24    0xb6f99  1      OPC=nop             
  nop                                                  #  25    0xb6f9a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  26    0xb6f9b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  27    0xb6fa0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  28    0xb6fa3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  29    0xb6fa6  1      OPC=popq_r64_1      
  popq %r11                                            #  30    0xb6fa7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  31    0xb6fa9  7      OPC=andl_r32_imm32  
  nop                                                  #  32    0xb6fb0  1      OPC=nop             
  nop                                                  #  33    0xb6fb1  1      OPC=nop             
  nop                                                  #  34    0xb6fb2  1      OPC=nop             
  nop                                                  #  35    0xb6fb3  1      OPC=nop             
  addq %r15, %r11                                      #  36    0xb6fb4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  37    0xb6fb7  3      OPC=jmpq_r64        
  nop                                                  #  38    0xb6fba  1      OPC=nop             
  nop                                                  #  39    0xb6fbb  1      OPC=nop             
  nop                                                  #  40    0xb6fbc  1      OPC=nop             
  nop                                                  #  41    0xb6fbd  1      OPC=nop             
  nop                                                  #  42    0xb6fbe  1      OPC=nop             
  nop                                                  #  43    0xb6fbf  1      OPC=nop             
  nop                                                  #  44    0xb6fc0  1      OPC=nop             
  nop                                                  #  45    0xb6fc1  1      OPC=nop             
  nop                                                  #  46    0xb6fc2  1      OPC=nop             
  nop                                                  #  47    0xb6fc3  1      OPC=nop             
  nop                                                  #  48    0xb6fc4  1      OPC=nop             
  nop                                                  #  49    0xb6fc5  1      OPC=nop             
  nop                                                  #  50    0xb6fc6  1      OPC=nop             
  movl %ebx, %edi                                      #  51    0xb6fc7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  52    0xb6fc9  4      OPC=movl_m32_r32    
  nop                                                  #  53    0xb6fcd  1      OPC=nop             
  nop                                                  #  54    0xb6fce  1      OPC=nop             
  nop                                                  #  55    0xb6fcf  1      OPC=nop             
  nop                                                  #  56    0xb6fd0  1      OPC=nop             
  nop                                                  #  57    0xb6fd1  1      OPC=nop             
  nop                                                  #  58    0xb6fd2  1      OPC=nop             
  nop                                                  #  59    0xb6fd3  1      OPC=nop             
  nop                                                  #  60    0xb6fd4  1      OPC=nop             
  nop                                                  #  61    0xb6fd5  1      OPC=nop             
  nop                                                  #  62    0xb6fd6  1      OPC=nop             
  nop                                                  #  63    0xb6fd7  1      OPC=nop             
  nop                                                  #  64    0xb6fd8  1      OPC=nop             
  nop                                                  #  65    0xb6fd9  1      OPC=nop             
  nop                                                  #  66    0xb6fda  1      OPC=nop             
  nop                                                  #  67    0xb6fdb  1      OPC=nop             
  nop                                                  #  68    0xb6fdc  1      OPC=nop             
  nop                                                  #  69    0xb6fdd  1      OPC=nop             
  nop                                                  #  70    0xb6fde  1      OPC=nop             
  nop                                                  #  71    0xb6fdf  1      OPC=nop             
  nop                                                  #  72    0xb6fe0  1      OPC=nop             
  nop                                                  #  73    0xb6fe1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  74    0xb6fe2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  75    0xb6fe7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  76    0xb6feb  2      OPC=movl_r32_r32    
  nop                                                  #  77    0xb6fed  1      OPC=nop             
  nop                                                  #  78    0xb6fee  1      OPC=nop             
  nop                                                  #  79    0xb6fef  1      OPC=nop             
  nop                                                  #  80    0xb6ff0  1      OPC=nop             
  nop                                                  #  81    0xb6ff1  1      OPC=nop             
  nop                                                  #  82    0xb6ff2  1      OPC=nop             
  nop                                                  #  83    0xb6ff3  1      OPC=nop             
  nop                                                  #  84    0xb6ff4  1      OPC=nop             
  nop                                                  #  85    0xb6ff5  1      OPC=nop             
  nop                                                  #  86    0xb6ff6  1      OPC=nop             
  nop                                                  #  87    0xb6ff7  1      OPC=nop             
  nop                                                  #  88    0xb6ff8  1      OPC=nop             
  nop                                                  #  89    0xb6ff9  1      OPC=nop             
  nop                                                  #  90    0xb6ffa  1      OPC=nop             
  nop                                                  #  91    0xb6ffb  1      OPC=nop             
  nop                                                  #  92    0xb6ffc  1      OPC=nop             
  nop                                                  #  93    0xb6ffd  1      OPC=nop             
  nop                                                  #  94    0xb6ffe  1      OPC=nop             
  nop                                                  #  95    0xb6fff  1      OPC=nop             
  nop                                                  #  96    0xb7000  1      OPC=nop             
  nop                                                  #  97    0xb7001  1      OPC=nop             
  callq ._Unwind_Resume                                #  98    0xb7002  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1EPij, .-_ZNSt8numpunctIwEC1EPij

