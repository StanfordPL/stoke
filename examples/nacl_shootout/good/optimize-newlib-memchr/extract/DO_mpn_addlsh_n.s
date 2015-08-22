  .text
  .globl DO_mpn_addlsh_n
  .type DO_mpn_addlsh_n, @function

#! file-offset 0x8c620
#! rip-offset  0x4c620
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.DO_mpn_addlsh_n:          #        0x4c620  0      OPC=<label>         
  movq %r13, -0x10(%rsp)   #  1     0x4c620  5      OPC=movq_m64_r64    
  movl %r8d, %r13d         #  2     0x4c625  3      OPC=movl_r32_r32    
  movq %rbx, -0x20(%rsp)   #  3     0x4c628  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)   #  4     0x4c62d  5      OPC=movq_m64_r64    
  movl %edx, %ebx          #  5     0x4c632  2      OPC=movl_r32_r32    
  movl %edi, %r12d         #  6     0x4c634  3      OPC=movl_r32_r32    
  movq %r14, -0x8(%rsp)    #  7     0x4c637  5      OPC=movq_m64_r64    
  movl %r13d, %edi         #  8     0x4c63c  3      OPC=movl_r32_r32    
  nop                      #  9     0x4c63f  1      OPC=nop             
  subl $0x28, %esp         #  10    0x4c640  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  11    0x4c643  3      OPC=addq_r64_r64    
  movl %esi, %esi          #  12    0x4c646  2      OPC=movl_r32_r32    
  nop                      #  13    0x4c648  1      OPC=nop             
  nop                      #  14    0x4c649  1      OPC=nop             
  nop                      #  15    0x4c64a  1      OPC=nop             
  nop                      #  16    0x4c64b  1      OPC=nop             
  nop                      #  17    0x4c64c  1      OPC=nop             
  nop                      #  18    0x4c64d  1      OPC=nop             
  nop                      #  19    0x4c64e  1      OPC=nop             
  nop                      #  20    0x4c64f  1      OPC=nop             
  nop                      #  21    0x4c650  1      OPC=nop             
  nop                      #  22    0x4c651  1      OPC=nop             
  nop                      #  23    0x4c652  1      OPC=nop             
  nop                      #  24    0x4c653  1      OPC=nop             
  nop                      #  25    0x4c654  1      OPC=nop             
  nop                      #  26    0x4c655  1      OPC=nop             
  nop                      #  27    0x4c656  1      OPC=nop             
  nop                      #  28    0x4c657  1      OPC=nop             
  nop                      #  29    0x4c658  1      OPC=nop             
  nop                      #  30    0x4c659  1      OPC=nop             
  nop                      #  31    0x4c65a  1      OPC=nop             
  callq .__gmpn_lshift     #  32    0x4c65b  5      OPC=callq_label     
  movl %ebx, %ecx          #  33    0x4c660  2      OPC=movl_r32_r32    
  movl %eax, %r14d         #  34    0x4c662  3      OPC=movl_r32_r32    
  movl %r13d, %edx         #  35    0x4c665  3      OPC=movl_r32_r32    
  movl %r12d, %esi         #  36    0x4c668  3      OPC=movl_r32_r32    
  movl %r12d, %edi         #  37    0x4c66b  3      OPC=movl_r32_r32    
  nop                      #  38    0x4c66e  1      OPC=nop             
  nop                      #  39    0x4c66f  1      OPC=nop             
  nop                      #  40    0x4c670  1      OPC=nop             
  nop                      #  41    0x4c671  1      OPC=nop             
  nop                      #  42    0x4c672  1      OPC=nop             
  nop                      #  43    0x4c673  1      OPC=nop             
  nop                      #  44    0x4c674  1      OPC=nop             
  nop                      #  45    0x4c675  1      OPC=nop             
  nop                      #  46    0x4c676  1      OPC=nop             
  nop                      #  47    0x4c677  1      OPC=nop             
  nop                      #  48    0x4c678  1      OPC=nop             
  nop                      #  49    0x4c679  1      OPC=nop             
  nop                      #  50    0x4c67a  1      OPC=nop             
  callq .__gmpn_add_n      #  51    0x4c67b  5      OPC=callq_label     
  movq 0x8(%rsp), %rbx     #  52    0x4c680  5      OPC=movq_r64_m64    
  addl %r14d, %eax         #  53    0x4c685  3      OPC=addl_r32_r32    
  movq 0x10(%rsp), %r12    #  54    0x4c688  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %r13    #  55    0x4c68d  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r14    #  56    0x4c692  5      OPC=movq_r64_m64    
  addl $0x28, %esp         #  57    0x4c697  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  58    0x4c69a  3      OPC=addq_r64_r64    
  popq %r11                #  59    0x4c69d  2      OPC=popq_r64_1      
  nop                      #  60    0x4c69f  1      OPC=nop             
  andl $0xffffffe0, %r11d  #  61    0x4c6a0  7      OPC=andl_r32_imm32  
  nop                      #  62    0x4c6a7  1      OPC=nop             
  nop                      #  63    0x4c6a8  1      OPC=nop             
  nop                      #  64    0x4c6a9  1      OPC=nop             
  nop                      #  65    0x4c6aa  1      OPC=nop             
  addq %r15, %r11          #  66    0x4c6ab  3      OPC=addq_r64_r64    
  jmpq %r11                #  67    0x4c6ae  3      OPC=jmpq_r64        
  nop                      #  68    0x4c6b1  1      OPC=nop             
  nop                      #  69    0x4c6b2  1      OPC=nop             
  nop                      #  70    0x4c6b3  1      OPC=nop             
  nop                      #  71    0x4c6b4  1      OPC=nop             
  nop                      #  72    0x4c6b5  1      OPC=nop             
  nop                      #  73    0x4c6b6  1      OPC=nop             
  nop                      #  74    0x4c6b7  1      OPC=nop             
  nop                      #  75    0x4c6b8  1      OPC=nop             
  nop                      #  76    0x4c6b9  1      OPC=nop             
  nop                      #  77    0x4c6ba  1      OPC=nop             
  nop                      #  78    0x4c6bb  1      OPC=nop             
  nop                      #  79    0x4c6bc  1      OPC=nop             
  nop                      #  80    0x4c6bd  1      OPC=nop             
  nop                      #  81    0x4c6be  1      OPC=nop             
  nop                      #  82    0x4c6bf  1      OPC=nop             
  nop                      #  83    0x4c6c0  1      OPC=nop             
  nop                      #  84    0x4c6c1  1      OPC=nop             
  nop                      #  85    0x4c6c2  1      OPC=nop             
  nop                      #  86    0x4c6c3  1      OPC=nop             
  nop                      #  87    0x4c6c4  1      OPC=nop             
  nop                      #  88    0x4c6c5  1      OPC=nop             
  nop                      #  89    0x4c6c6  1      OPC=nop             
                                                                        
.size DO_mpn_addlsh_n, .-DO_mpn_addlsh_n

