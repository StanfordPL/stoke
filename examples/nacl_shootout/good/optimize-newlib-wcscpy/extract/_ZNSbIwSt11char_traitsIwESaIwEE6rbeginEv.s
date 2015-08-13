  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x11a220
#! rip-offset  0xda220
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv:                #        0xda220  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda220  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                         #  2     0xda225  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda227  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda22c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda22f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda232  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda234  4      OPC=movl_r32_m32    
  movl %edi, %r12d                                        #  8     0xda238  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda23b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda23e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda240  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d                             #  12    0xda242  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                                        #  13    0xda247  3      OPC=testl_r32_r32   
  js .L_da280                                             #  14    0xda24a  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xda24c  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xda24e  1      OPC=nop             
  nop                                                     #  17    0xda24f  1      OPC=nop             
  nop                                                     #  18    0xda250  1      OPC=nop             
  nop                                                     #  19    0xda251  1      OPC=nop             
  nop                                                     #  20    0xda252  1      OPC=nop             
  nop                                                     #  21    0xda253  1      OPC=nop             
  nop                                                     #  22    0xda254  1      OPC=nop             
  nop                                                     #  23    0xda255  1      OPC=nop             
  nop                                                     #  24    0xda256  1      OPC=nop             
  nop                                                     #  25    0xda257  1      OPC=nop             
  nop                                                     #  26    0xda258  1      OPC=nop             
  nop                                                     #  27    0xda259  1      OPC=nop             
  nop                                                     #  28    0xda25a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xda25b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  30    0xda260  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  31    0xda262  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  32    0xda266  3      OPC=leal_r32_m16    
  nop                                                     #  33    0xda269  1      OPC=nop             
  nop                                                     #  34    0xda26a  1      OPC=nop             
  nop                                                     #  35    0xda26b  1      OPC=nop             
  nop                                                     #  36    0xda26c  1      OPC=nop             
  nop                                                     #  37    0xda26d  1      OPC=nop             
  nop                                                     #  38    0xda26e  1      OPC=nop             
  nop                                                     #  39    0xda26f  1      OPC=nop             
  nop                                                     #  40    0xda270  1      OPC=nop             
  nop                                                     #  41    0xda271  1      OPC=nop             
  nop                                                     #  42    0xda272  1      OPC=nop             
  nop                                                     #  43    0xda273  1      OPC=nop             
  nop                                                     #  44    0xda274  1      OPC=nop             
  nop                                                     #  45    0xda275  1      OPC=nop             
  nop                                                     #  46    0xda276  1      OPC=nop             
  nop                                                     #  47    0xda277  1      OPC=nop             
  nop                                                     #  48    0xda278  1      OPC=nop             
  nop                                                     #  49    0xda279  1      OPC=nop             
  nop                                                     #  50    0xda27a  1      OPC=nop             
  nop                                                     #  51    0xda27b  1      OPC=nop             
  nop                                                     #  52    0xda27c  1      OPC=nop             
  nop                                                     #  53    0xda27d  1      OPC=nop             
  nop                                                     #  54    0xda27e  1      OPC=nop             
  nop                                                     #  55    0xda27f  1      OPC=nop             
.L_da280:                                                 #        0xda280  0      OPC=<label>         
  movl %edx, %edx                                         #  56    0xda280  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                #  57    0xda282  4      OPC=movl_r32_m32    
  movq 0x8(%rsp), %rbx                                    #  58    0xda286  5      OPC=movq_r64_m64    
  leal (%rax,%rdx,4), %eax                                #  59    0xda28b  3      OPC=leal_r32_m16    
  movl %r12d, %r12d                                       #  60    0xda28e  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                #  61    0xda291  4      OPC=movl_m32_r32    
  movl %r12d, %eax                                        #  62    0xda295  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                   #  63    0xda298  5      OPC=movq_r64_m64    
  nop                                                     #  64    0xda29d  1      OPC=nop             
  nop                                                     #  65    0xda29e  1      OPC=nop             
  nop                                                     #  66    0xda29f  1      OPC=nop             
  addl $0x18, %esp                                        #  67    0xda2a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  68    0xda2a3  3      OPC=addq_r64_r64    
  popq %r11                                               #  69    0xda2a6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  70    0xda2a8  7      OPC=andl_r32_imm32  
  nop                                                     #  71    0xda2af  1      OPC=nop             
  nop                                                     #  72    0xda2b0  1      OPC=nop             
  nop                                                     #  73    0xda2b1  1      OPC=nop             
  nop                                                     #  74    0xda2b2  1      OPC=nop             
  addq %r15, %r11                                         #  75    0xda2b3  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  76    0xda2b6  3      OPC=jmpq_r64        
  nop                                                     #  77    0xda2b9  1      OPC=nop             
  nop                                                     #  78    0xda2ba  1      OPC=nop             
  nop                                                     #  79    0xda2bb  1      OPC=nop             
  nop                                                     #  80    0xda2bc  1      OPC=nop             
  nop                                                     #  81    0xda2bd  1      OPC=nop             
  nop                                                     #  82    0xda2be  1      OPC=nop             
  nop                                                     #  83    0xda2bf  1      OPC=nop             
  nop                                                     #  84    0xda2c0  1      OPC=nop             
  nop                                                     #  85    0xda2c1  1      OPC=nop             
  nop                                                     #  86    0xda2c2  1      OPC=nop             
  nop                                                     #  87    0xda2c3  1      OPC=nop             
  nop                                                     #  88    0xda2c4  1      OPC=nop             
  nop                                                     #  89    0xda2c5  1      OPC=nop             
  nop                                                     #  90    0xda2c6  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv

