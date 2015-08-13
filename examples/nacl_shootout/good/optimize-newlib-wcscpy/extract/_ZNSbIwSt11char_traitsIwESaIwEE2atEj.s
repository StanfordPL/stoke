  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x119fa0
#! rip-offset  0xd9fa0
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE2atEj:                    #        0xd9fa0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xd9fa0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                         #  2     0xd9fa5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xd9fa7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xd9fac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xd9faf  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xd9fb2  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xd9fb4  4      OPC=movl_r32_m32    
  movl %esi, %r12d                                        #  8     0xd9fb8  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xd9fbb  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xd9fbe  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xd9fc0  2      OPC=movl_r32_r32    
  cmpl (%r15,%rdx,1), %esi                                #  12    0xd9fc2  4      OPC=cmpl_r32_m32    
  jae .L_da020                                            #  13    0xd9fc6  2      OPC=jae_label       
  movl %edx, %edx                                         #  14    0xd9fc8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edx                             #  15    0xd9fca  5      OPC=movl_r32_m32    
  testl %edx, %edx                                        #  16    0xd9fcf  2      OPC=testl_r32_r32   
  js .L_da000                                             #  17    0xd9fd1  2      OPC=js_label        
  movl %ebx, %edi                                         #  18    0xd9fd3  2      OPC=movl_r32_r32    
  nop                                                     #  19    0xd9fd5  1      OPC=nop             
  nop                                                     #  20    0xd9fd6  1      OPC=nop             
  nop                                                     #  21    0xd9fd7  1      OPC=nop             
  nop                                                     #  22    0xd9fd8  1      OPC=nop             
  nop                                                     #  23    0xd9fd9  1      OPC=nop             
  nop                                                     #  24    0xd9fda  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  25    0xd9fdb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  26    0xd9fe0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  27    0xd9fe2  4      OPC=movl_r32_m32    
  nop                                                     #  28    0xd9fe6  1      OPC=nop             
  nop                                                     #  29    0xd9fe7  1      OPC=nop             
  nop                                                     #  30    0xd9fe8  1      OPC=nop             
  nop                                                     #  31    0xd9fe9  1      OPC=nop             
  nop                                                     #  32    0xd9fea  1      OPC=nop             
  nop                                                     #  33    0xd9feb  1      OPC=nop             
  nop                                                     #  34    0xd9fec  1      OPC=nop             
  nop                                                     #  35    0xd9fed  1      OPC=nop             
  nop                                                     #  36    0xd9fee  1      OPC=nop             
  nop                                                     #  37    0xd9fef  1      OPC=nop             
  nop                                                     #  38    0xd9ff0  1      OPC=nop             
  nop                                                     #  39    0xd9ff1  1      OPC=nop             
  nop                                                     #  40    0xd9ff2  1      OPC=nop             
  nop                                                     #  41    0xd9ff3  1      OPC=nop             
  nop                                                     #  42    0xd9ff4  1      OPC=nop             
  nop                                                     #  43    0xd9ff5  1      OPC=nop             
  nop                                                     #  44    0xd9ff6  1      OPC=nop             
  nop                                                     #  45    0xd9ff7  1      OPC=nop             
  nop                                                     #  46    0xd9ff8  1      OPC=nop             
  nop                                                     #  47    0xd9ff9  1      OPC=nop             
  nop                                                     #  48    0xd9ffa  1      OPC=nop             
  nop                                                     #  49    0xd9ffb  1      OPC=nop             
  nop                                                     #  50    0xd9ffc  1      OPC=nop             
  nop                                                     #  51    0xd9ffd  1      OPC=nop             
  nop                                                     #  52    0xd9ffe  1      OPC=nop             
  nop                                                     #  53    0xd9fff  1      OPC=nop             
.L_da000:                                                 #        0xda000  0      OPC=<label>         
  leal (%rax,%r12,4), %eax                                #  54    0xda000  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx                                    #  55    0xda004  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                   #  56    0xda009  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                        #  57    0xda00e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  58    0xda011  3      OPC=addq_r64_r64    
  popq %r11                                               #  59    0xda014  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  60    0xda016  7      OPC=andl_r32_imm32  
  nop                                                     #  61    0xda01d  1      OPC=nop             
  nop                                                     #  62    0xda01e  1      OPC=nop             
  nop                                                     #  63    0xda01f  1      OPC=nop             
  nop                                                     #  64    0xda020  1      OPC=nop             
  addq %r15, %r11                                         #  65    0xda021  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  66    0xda024  3      OPC=jmpq_r64        
.L_da020:                                                 #        0xda027  0      OPC=<label>         
  movl $0x1003baac, %edi                                  #  67    0xda027  5      OPC=movl_r32_imm32  
  nop                                                     #  68    0xda02c  1      OPC=nop             
  nop                                                     #  69    0xda02d  1      OPC=nop             
  nop                                                     #  70    0xda02e  1      OPC=nop             
  nop                                                     #  71    0xda02f  1      OPC=nop             
  nop                                                     #  72    0xda030  1      OPC=nop             
  nop                                                     #  73    0xda031  1      OPC=nop             
  nop                                                     #  74    0xda032  1      OPC=nop             
  nop                                                     #  75    0xda033  1      OPC=nop             
  nop                                                     #  76    0xda034  1      OPC=nop             
  nop                                                     #  77    0xda035  1      OPC=nop             
  nop                                                     #  78    0xda036  1      OPC=nop             
  nop                                                     #  79    0xda037  1      OPC=nop             
  nop                                                     #  80    0xda038  1      OPC=nop             
  nop                                                     #  81    0xda039  1      OPC=nop             
  nop                                                     #  82    0xda03a  1      OPC=nop             
  nop                                                     #  83    0xda03b  1      OPC=nop             
  nop                                                     #  84    0xda03c  1      OPC=nop             
  nop                                                     #  85    0xda03d  1      OPC=nop             
  nop                                                     #  86    0xda03e  1      OPC=nop             
  nop                                                     #  87    0xda03f  1      OPC=nop             
  nop                                                     #  88    0xda040  1      OPC=nop             
  nop                                                     #  89    0xda041  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                    #  90    0xda042  5      OPC=callq_label     
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNSbIwSt11char_traitsIwESaIwEE2atEj

