  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, @function

#! file-offset 0x11a520
#! rip-offset  0xda520
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv:                #        0xda520  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                  #  1     0xda520  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                         #  2     0xda525  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                   #  3     0xda527  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                        #  4     0xda52c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                         #  5     0xda52f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                         #  6     0xda532  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  7     0xda534  4      OPC=movl_r32_m32    
  movl %edi, %r12d                                        #  8     0xda538  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx                                   #  9     0xda53b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                                          #  10    0xda53e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx                                         #  11    0xda540  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r9d                             #  12    0xda542  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                                        #  13    0xda547  3      OPC=testl_r32_r32   
  js .L_da580                                             #  14    0xda54a  2      OPC=js_label        
  movl %ebx, %edi                                         #  15    0xda54c  2      OPC=movl_r32_r32    
  nop                                                     #  16    0xda54e  1      OPC=nop             
  nop                                                     #  17    0xda54f  1      OPC=nop             
  nop                                                     #  18    0xda550  1      OPC=nop             
  nop                                                     #  19    0xda551  1      OPC=nop             
  nop                                                     #  20    0xda552  1      OPC=nop             
  nop                                                     #  21    0xda553  1      OPC=nop             
  nop                                                     #  22    0xda554  1      OPC=nop             
  nop                                                     #  23    0xda555  1      OPC=nop             
  nop                                                     #  24    0xda556  1      OPC=nop             
  nop                                                     #  25    0xda557  1      OPC=nop             
  nop                                                     #  26    0xda558  1      OPC=nop             
  nop                                                     #  27    0xda559  1      OPC=nop             
  nop                                                     #  28    0xda55a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  29    0xda55b  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  30    0xda560  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  31    0xda562  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  32    0xda566  3      OPC=leal_r32_m16    
  nop                                                     #  33    0xda569  1      OPC=nop             
  nop                                                     #  34    0xda56a  1      OPC=nop             
  nop                                                     #  35    0xda56b  1      OPC=nop             
  nop                                                     #  36    0xda56c  1      OPC=nop             
  nop                                                     #  37    0xda56d  1      OPC=nop             
  nop                                                     #  38    0xda56e  1      OPC=nop             
  nop                                                     #  39    0xda56f  1      OPC=nop             
  nop                                                     #  40    0xda570  1      OPC=nop             
  nop                                                     #  41    0xda571  1      OPC=nop             
  nop                                                     #  42    0xda572  1      OPC=nop             
  nop                                                     #  43    0xda573  1      OPC=nop             
  nop                                                     #  44    0xda574  1      OPC=nop             
  nop                                                     #  45    0xda575  1      OPC=nop             
  nop                                                     #  46    0xda576  1      OPC=nop             
  nop                                                     #  47    0xda577  1      OPC=nop             
  nop                                                     #  48    0xda578  1      OPC=nop             
  nop                                                     #  49    0xda579  1      OPC=nop             
  nop                                                     #  50    0xda57a  1      OPC=nop             
  nop                                                     #  51    0xda57b  1      OPC=nop             
  nop                                                     #  52    0xda57c  1      OPC=nop             
  nop                                                     #  53    0xda57d  1      OPC=nop             
  nop                                                     #  54    0xda57e  1      OPC=nop             
  nop                                                     #  55    0xda57f  1      OPC=nop             
.L_da580:                                                 #        0xda580  0      OPC=<label>         
  movl %edx, %edx                                         #  56    0xda580  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                #  57    0xda582  4      OPC=movl_r32_m32    
  movq 0x8(%rsp), %rbx                                    #  58    0xda586  5      OPC=movq_r64_m64    
  leal (%rax,%rdx,4), %eax                                #  59    0xda58b  3      OPC=leal_r32_m16    
  movl %r12d, %r12d                                       #  60    0xda58e  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)                                #  61    0xda591  4      OPC=movl_m32_r32    
  movl %r12d, %eax                                        #  62    0xda595  3      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12                                   #  63    0xda598  5      OPC=movq_r64_m64    
  nop                                                     #  64    0xda59d  1      OPC=nop             
  nop                                                     #  65    0xda59e  1      OPC=nop             
  nop                                                     #  66    0xda59f  1      OPC=nop             
  addl $0x18, %esp                                        #  67    0xda5a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                         #  68    0xda5a3  3      OPC=addq_r64_r64    
  popq %r11                                               #  69    0xda5a6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  70    0xda5a8  7      OPC=andl_r32_imm32  
  nop                                                     #  71    0xda5af  1      OPC=nop             
  nop                                                     #  72    0xda5b0  1      OPC=nop             
  nop                                                     #  73    0xda5b1  1      OPC=nop             
  nop                                                     #  74    0xda5b2  1      OPC=nop             
  addq %r15, %r11                                         #  75    0xda5b3  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  76    0xda5b6  3      OPC=jmpq_r64        
  nop                                                     #  77    0xda5b9  1      OPC=nop             
  nop                                                     #  78    0xda5ba  1      OPC=nop             
  nop                                                     #  79    0xda5bb  1      OPC=nop             
  nop                                                     #  80    0xda5bc  1      OPC=nop             
  nop                                                     #  81    0xda5bd  1      OPC=nop             
  nop                                                     #  82    0xda5be  1      OPC=nop             
  nop                                                     #  83    0xda5bf  1      OPC=nop             
  nop                                                     #  84    0xda5c0  1      OPC=nop             
  nop                                                     #  85    0xda5c1  1      OPC=nop             
  nop                                                     #  86    0xda5c2  1      OPC=nop             
  nop                                                     #  87    0xda5c3  1      OPC=nop             
  nop                                                     #  88    0xda5c4  1      OPC=nop             
  nop                                                     #  89    0xda5c5  1      OPC=nop             
  nop                                                     #  90    0xda5c6  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE6rbeginEv

