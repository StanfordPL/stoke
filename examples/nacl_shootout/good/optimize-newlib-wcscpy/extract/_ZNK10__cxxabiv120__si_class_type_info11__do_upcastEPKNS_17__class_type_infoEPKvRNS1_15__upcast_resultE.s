  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, @function

#! file-offset 0x1221e0
#! rip-offset  0xe21e0
#! capacity    192 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE:  #        0xe21e0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)                                                                                   #  1     0xe21e0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)                                                                                   #  2     0xe21e5  5      OPC=movq_m64_r64    
  movl %edx, %ebx                                                                                          #  3     0xe21ea  2      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)                                                                                   #  4     0xe21ec  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                                                                                    #  5     0xe21f1  5      OPC=movq_m64_r64    
  movl %edi, %r13d                                                                                         #  6     0xe21f6  3      OPC=movl_r32_r32    
  movl %esi, %r14d                                                                                         #  7     0xe21f9  3      OPC=movl_r32_r32    
  movl %ecx, %r12d                                                                                         #  8     0xe21fc  3      OPC=movl_r32_r32    
  nop                                                                                                      #  9     0xe21ff  1      OPC=nop             
  subl $0x28, %esp                                                                                         #  10    0xe2200  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  11    0xe2203  3      OPC=addq_r64_r64    
  movl %r12d, %ecx                                                                                         #  12    0xe2206  3      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                          #  13    0xe2209  2      OPC=movl_r32_r32    
  movl %r14d, %esi                                                                                         #  14    0xe220b  3      OPC=movl_r32_r32    
  movl %r13d, %edi                                                                                         #  15    0xe220e  3      OPC=movl_r32_r32    
  nop                                                                                                      #  16    0xe2211  1      OPC=nop             
  nop                                                                                                      #  17    0xe2212  1      OPC=nop             
  nop                                                                                                      #  18    0xe2213  1      OPC=nop             
  nop                                                                                                      #  19    0xe2214  1      OPC=nop             
  nop                                                                                                      #  20    0xe2215  1      OPC=nop             
  nop                                                                                                      #  21    0xe2216  1      OPC=nop             
  nop                                                                                                      #  22    0xe2217  1      OPC=nop             
  nop                                                                                                      #  23    0xe2218  1      OPC=nop             
  nop                                                                                                      #  24    0xe2219  1      OPC=nop             
  nop                                                                                                      #  25    0xe221a  1      OPC=nop             
  callq ._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE                  #  26    0xe221b  5      OPC=callq_label     
  testb %al, %al                                                                                           #  27    0xe2220  2      OPC=testb_r8_r8     
  je .L_e2260                                                                                              #  28    0xe2222  2      OPC=je_label        
  movq 0x8(%rsp), %rbx                                                                                     #  29    0xe2224  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                    #  30    0xe2229  5      OPC=movq_r64_m64    
  movl $0x1, %eax                                                                                          #  31    0xe222e  5      OPC=movl_r32_imm32  
  movq 0x18(%rsp), %r13                                                                                    #  32    0xe2233  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14                                                                                    #  33    0xe2238  5      OPC=movq_r64_m64    
  nop                                                                                                      #  34    0xe223d  1      OPC=nop             
  nop                                                                                                      #  35    0xe223e  1      OPC=nop             
  nop                                                                                                      #  36    0xe223f  1      OPC=nop             
  addl $0x28, %esp                                                                                         #  37    0xe2240  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  38    0xe2243  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  39    0xe2246  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  40    0xe2248  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  41    0xe224f  1      OPC=nop             
  nop                                                                                                      #  42    0xe2250  1      OPC=nop             
  nop                                                                                                      #  43    0xe2251  1      OPC=nop             
  nop                                                                                                      #  44    0xe2252  1      OPC=nop             
  addq %r15, %r11                                                                                          #  45    0xe2253  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  46    0xe2256  3      OPC=jmpq_r64        
  nop                                                                                                      #  47    0xe2259  1      OPC=nop             
  nop                                                                                                      #  48    0xe225a  1      OPC=nop             
  nop                                                                                                      #  49    0xe225b  1      OPC=nop             
  nop                                                                                                      #  50    0xe225c  1      OPC=nop             
  nop                                                                                                      #  51    0xe225d  1      OPC=nop             
  nop                                                                                                      #  52    0xe225e  1      OPC=nop             
  nop                                                                                                      #  53    0xe225f  1      OPC=nop             
  nop                                                                                                      #  54    0xe2260  1      OPC=nop             
  nop                                                                                                      #  55    0xe2261  1      OPC=nop             
  nop                                                                                                      #  56    0xe2262  1      OPC=nop             
  nop                                                                                                      #  57    0xe2263  1      OPC=nop             
  nop                                                                                                      #  58    0xe2264  1      OPC=nop             
  nop                                                                                                      #  59    0xe2265  1      OPC=nop             
  nop                                                                                                      #  60    0xe2266  1      OPC=nop             
.L_e2260:                                                                                                  #        0xe2267  0      OPC=<label>         
  movl %r13d, %r13d                                                                                        #  61    0xe2267  3      OPC=movl_r32_r32    
  movl 0x8(%r15,%r13,1), %edi                                                                              #  62    0xe226a  5      OPC=movl_r32_m32    
  movl %r12d, %ecx                                                                                         #  63    0xe226f  3      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                          #  64    0xe2272  2      OPC=movl_r32_r32    
  movl %r14d, %esi                                                                                         #  65    0xe2274  3      OPC=movl_r32_r32    
  movq 0x8(%rsp), %rbx                                                                                     #  66    0xe2277  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                    #  67    0xe227c  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13                                                                                    #  68    0xe2281  5      OPC=movq_r64_m64    
  nop                                                                                                      #  69    0xe2286  1      OPC=nop             
  movq 0x20(%rsp), %r14                                                                                    #  70    0xe2287  5      OPC=movq_r64_m64    
  movl %edi, %edi                                                                                          #  71    0xe228c  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  72    0xe228e  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  73    0xe2292  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                                             #  74    0xe2294  5      OPC=movl_r32_m32    
  addl $0x28, %esp                                                                                         #  75    0xe2299  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  76    0xe229c  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                                                                                   #  77    0xe229f  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  78    0xe22a5  1      OPC=nop             
  nop                                                                                                      #  79    0xe22a6  1      OPC=nop             
  nop                                                                                                      #  80    0xe22a7  1      OPC=nop             
  addq %r15, %rax                                                                                          #  81    0xe22a8  3      OPC=addq_r64_r64    
  jmpq %rax                                                                                                #  82    0xe22ab  2      OPC=jmpq_r64        
                                                                                                                                                        
.size _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE

