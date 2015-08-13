  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, @function

#! file-offset 0x122700
#! rip-offset  0xe2700
#! capacity    160 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv:  #        0xe2700  0      OPC=<label>         
  pushq %rbx                                                 #  1     0xe2700  1      OPC=pushq_r64_1     
  movl %edi, %edi                                            #  2     0xe2701  2      OPC=movl_r32_r32    
  movl %edx, %ebx                                            #  3     0xe2703  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  4     0xe2705  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                           #  5     0xe2707  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                            #  6     0xe270a  3      OPC=addq_r64_r64    
  movl %edi, %edi                                            #  7     0xe270d  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  8     0xe270f  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                            #  9     0xe2713  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                   #  10    0xe2715  4      OPC=movl_r32_m32    
  movl $0x0, (%rsp)                                          #  11    0xe2719  7      OPC=movl_m32_imm32  
  movl $0x0, 0x4(%rsp)                                       #  12    0xe2720  8      OPC=movl_m32_imm32  
  movl %esp, %ecx                                            #  13    0xe2728  2      OPC=movl_r32_r32    
  movl $0x10, 0x8(%rsp)                                      #  14    0xe272a  8      OPC=movl_m32_imm32  
  movl $0x0, 0xc(%rsp)                                       #  15    0xe2732  8      OPC=movl_m32_imm32  
  nop                                                        #  16    0xe273a  1      OPC=nop             
  nop                                                        #  17    0xe273b  1      OPC=nop             
  nop                                                        #  18    0xe273c  1      OPC=nop             
  nop                                                        #  19    0xe273d  1      OPC=nop             
  nop                                                        #  20    0xe273e  1      OPC=nop             
  nop                                                        #  21    0xe273f  1      OPC=nop             
  movl %eax, %eax                                            #  22    0xe2740  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                               #  23    0xe2742  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                             #  24    0xe2747  2      OPC=xchgw_ax_r16    
  nop                                                        #  25    0xe2749  1      OPC=nop             
  nop                                                        #  26    0xe274a  1      OPC=nop             
  nop                                                        #  27    0xe274b  1      OPC=nop             
  nop                                                        #  28    0xe274c  1      OPC=nop             
  nop                                                        #  29    0xe274d  1      OPC=nop             
  nop                                                        #  30    0xe274e  1      OPC=nop             
  nop                                                        #  31    0xe274f  1      OPC=nop             
  nop                                                        #  32    0xe2750  1      OPC=nop             
  nop                                                        #  33    0xe2751  1      OPC=nop             
  nop                                                        #  34    0xe2752  1      OPC=nop             
  nop                                                        #  35    0xe2753  1      OPC=nop             
  nop                                                        #  36    0xe2754  1      OPC=nop             
  nop                                                        #  37    0xe2755  1      OPC=nop             
  nop                                                        #  38    0xe2756  1      OPC=nop             
  nop                                                        #  39    0xe2757  1      OPC=nop             
  andl $0xffffffe0, %eax                                     #  40    0xe2758  6      OPC=andl_r32_imm32  
  nop                                                        #  41    0xe275e  1      OPC=nop             
  nop                                                        #  42    0xe275f  1      OPC=nop             
  nop                                                        #  43    0xe2760  1      OPC=nop             
  addq %r15, %rax                                            #  44    0xe2761  3      OPC=addq_r64_r64    
  callq %rax                                                 #  45    0xe2764  2      OPC=callq_r64       
  movl 0x4(%rsp), %edx                                       #  46    0xe2766  4      OPC=movl_r32_m32    
  xorl %eax, %eax                                            #  47    0xe276a  2      OPC=xorl_r32_r32    
  andl $0x6, %edx                                            #  48    0xe276c  3      OPC=andl_r32_imm8   
  cmpl $0x6, %edx                                            #  49    0xe276f  3      OPC=cmpl_r32_imm8   
  jne .L_e2780                                               #  50    0xe2772  2      OPC=jne_label       
  movl (%rsp), %eax                                          #  51    0xe2774  3      OPC=movl_r32_m32    
  movl %ebx, %ebx                                            #  52    0xe2777  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                   #  53    0xe2779  4      OPC=movl_m32_r32    
  movl $0x1, %eax                                            #  54    0xe277d  5      OPC=movl_r32_imm32  
  nop                                                        #  55    0xe2782  1      OPC=nop             
  nop                                                        #  56    0xe2783  1      OPC=nop             
  nop                                                        #  57    0xe2784  1      OPC=nop             
  nop                                                        #  58    0xe2785  1      OPC=nop             
.L_e2780:                                                    #        0xe2786  0      OPC=<label>         
  addl $0x10, %esp                                           #  59    0xe2786  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                            #  60    0xe2789  3      OPC=addq_r64_r64    
  popq %rbx                                                  #  61    0xe278c  1      OPC=popq_r64_1      
  popq %r11                                                  #  62    0xe278d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                    #  63    0xe278f  7      OPC=andl_r32_imm32  
  nop                                                        #  64    0xe2796  1      OPC=nop             
  nop                                                        #  65    0xe2797  1      OPC=nop             
  nop                                                        #  66    0xe2798  1      OPC=nop             
  nop                                                        #  67    0xe2799  1      OPC=nop             
  addq %r15, %r11                                            #  68    0xe279a  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  69    0xe279d  3      OPC=jmpq_r64        
  nop                                                        #  70    0xe27a0  1      OPC=nop             
  nop                                                        #  71    0xe27a1  1      OPC=nop             
  nop                                                        #  72    0xe27a2  1      OPC=nop             
  nop                                                        #  73    0xe27a3  1      OPC=nop             
  nop                                                        #  74    0xe27a4  1      OPC=nop             
  nop                                                        #  75    0xe27a5  1      OPC=nop             
  nop                                                        #  76    0xe27a6  1      OPC=nop             
  nop                                                        #  77    0xe27a7  1      OPC=nop             
  nop                                                        #  78    0xe27a8  1      OPC=nop             
  nop                                                        #  79    0xe27a9  1      OPC=nop             
  nop                                                        #  80    0xe27aa  1      OPC=nop             
  nop                                                        #  81    0xe27ab  1      OPC=nop             
  nop                                                        #  82    0xe27ac  1      OPC=nop             
                                                                                                          
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv

