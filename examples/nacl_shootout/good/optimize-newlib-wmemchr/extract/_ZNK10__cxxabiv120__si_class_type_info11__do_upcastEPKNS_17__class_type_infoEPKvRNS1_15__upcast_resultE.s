  .text
  .globl _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE
  .type _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, @function

#! file-offset 0x1224e0
#! rip-offset  0xe24e0
#! capacity    192 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE:  #        0xe24e0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)                                                                                   #  1     0xe24e0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)                                                                                   #  2     0xe24e5  5      OPC=movq_m64_r64    
  movl %edx, %ebx                                                                                          #  3     0xe24ea  2      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)                                                                                   #  4     0xe24ec  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)                                                                                    #  5     0xe24f1  5      OPC=movq_m64_r64    
  movl %edi, %r13d                                                                                         #  6     0xe24f6  3      OPC=movl_r32_r32    
  movl %esi, %r14d                                                                                         #  7     0xe24f9  3      OPC=movl_r32_r32    
  movl %ecx, %r12d                                                                                         #  8     0xe24fc  3      OPC=movl_r32_r32    
  nop                                                                                                      #  9     0xe24ff  1      OPC=nop             
  subl $0x28, %esp                                                                                         #  10    0xe2500  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  11    0xe2503  3      OPC=addq_r64_r64    
  movl %r12d, %ecx                                                                                         #  12    0xe2506  3      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                          #  13    0xe2509  2      OPC=movl_r32_r32    
  movl %r14d, %esi                                                                                         #  14    0xe250b  3      OPC=movl_r32_r32    
  movl %r13d, %edi                                                                                         #  15    0xe250e  3      OPC=movl_r32_r32    
  nop                                                                                                      #  16    0xe2511  1      OPC=nop             
  nop                                                                                                      #  17    0xe2512  1      OPC=nop             
  nop                                                                                                      #  18    0xe2513  1      OPC=nop             
  nop                                                                                                      #  19    0xe2514  1      OPC=nop             
  nop                                                                                                      #  20    0xe2515  1      OPC=nop             
  nop                                                                                                      #  21    0xe2516  1      OPC=nop             
  nop                                                                                                      #  22    0xe2517  1      OPC=nop             
  nop                                                                                                      #  23    0xe2518  1      OPC=nop             
  nop                                                                                                      #  24    0xe2519  1      OPC=nop             
  nop                                                                                                      #  25    0xe251a  1      OPC=nop             
  callq ._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE                  #  26    0xe251b  5      OPC=callq_label     
  testb %al, %al                                                                                           #  27    0xe2520  2      OPC=testb_r8_r8     
  je .L_e2560                                                                                              #  28    0xe2522  2      OPC=je_label        
  movq 0x8(%rsp), %rbx                                                                                     #  29    0xe2524  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                    #  30    0xe2529  5      OPC=movq_r64_m64    
  movl $0x1, %eax                                                                                          #  31    0xe252e  5      OPC=movl_r32_imm32  
  movq 0x18(%rsp), %r13                                                                                    #  32    0xe2533  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14                                                                                    #  33    0xe2538  5      OPC=movq_r64_m64    
  nop                                                                                                      #  34    0xe253d  1      OPC=nop             
  nop                                                                                                      #  35    0xe253e  1      OPC=nop             
  nop                                                                                                      #  36    0xe253f  1      OPC=nop             
  addl $0x28, %esp                                                                                         #  37    0xe2540  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  38    0xe2543  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  39    0xe2546  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  40    0xe2548  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  41    0xe254f  1      OPC=nop             
  nop                                                                                                      #  42    0xe2550  1      OPC=nop             
  nop                                                                                                      #  43    0xe2551  1      OPC=nop             
  nop                                                                                                      #  44    0xe2552  1      OPC=nop             
  addq %r15, %r11                                                                                          #  45    0xe2553  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  46    0xe2556  3      OPC=jmpq_r64        
  nop                                                                                                      #  47    0xe2559  1      OPC=nop             
  nop                                                                                                      #  48    0xe255a  1      OPC=nop             
  nop                                                                                                      #  49    0xe255b  1      OPC=nop             
  nop                                                                                                      #  50    0xe255c  1      OPC=nop             
  nop                                                                                                      #  51    0xe255d  1      OPC=nop             
  nop                                                                                                      #  52    0xe255e  1      OPC=nop             
  nop                                                                                                      #  53    0xe255f  1      OPC=nop             
  nop                                                                                                      #  54    0xe2560  1      OPC=nop             
  nop                                                                                                      #  55    0xe2561  1      OPC=nop             
  nop                                                                                                      #  56    0xe2562  1      OPC=nop             
  nop                                                                                                      #  57    0xe2563  1      OPC=nop             
  nop                                                                                                      #  58    0xe2564  1      OPC=nop             
  nop                                                                                                      #  59    0xe2565  1      OPC=nop             
  nop                                                                                                      #  60    0xe2566  1      OPC=nop             
.L_e2560:                                                                                                  #        0xe2567  0      OPC=<label>         
  movl %r13d, %r13d                                                                                        #  61    0xe2567  3      OPC=movl_r32_r32    
  movl 0x8(%r15,%r13,1), %edi                                                                              #  62    0xe256a  5      OPC=movl_r32_m32    
  movl %r12d, %ecx                                                                                         #  63    0xe256f  3      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                          #  64    0xe2572  2      OPC=movl_r32_r32    
  movl %r14d, %esi                                                                                         #  65    0xe2574  3      OPC=movl_r32_r32    
  movq 0x8(%rsp), %rbx                                                                                     #  66    0xe2577  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                    #  67    0xe257c  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13                                                                                    #  68    0xe2581  5      OPC=movq_r64_m64    
  nop                                                                                                      #  69    0xe2586  1      OPC=nop             
  movq 0x20(%rsp), %r14                                                                                    #  70    0xe2587  5      OPC=movq_r64_m64    
  movl %edi, %edi                                                                                          #  71    0xe258c  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  72    0xe258e  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  73    0xe2592  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                                                                             #  74    0xe2594  5      OPC=movl_r32_m32    
  addl $0x28, %esp                                                                                         #  75    0xe2599  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  76    0xe259c  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %eax                                                                                   #  77    0xe259f  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  78    0xe25a5  1      OPC=nop             
  nop                                                                                                      #  79    0xe25a6  1      OPC=nop             
  nop                                                                                                      #  80    0xe25a7  1      OPC=nop             
  addq %r15, %rax                                                                                          #  81    0xe25a8  3      OPC=addq_r64_r64    
  jmpq %rax                                                                                                #  82    0xe25ab  2      OPC=jmpq_r64        
                                                                                                                                                        
.size _ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE, .-_ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE

