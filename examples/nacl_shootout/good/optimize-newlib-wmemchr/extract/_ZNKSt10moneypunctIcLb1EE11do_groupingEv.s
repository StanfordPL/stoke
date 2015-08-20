  .text
  .globl _ZNKSt10moneypunctIcLb1EE11do_groupingEv
  .type _ZNKSt10moneypunctIcLb1EE11do_groupingEv, @function

#! file-offset 0xbe3e0
#! rip-offset  0x7e3e0
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE11do_groupingEv:  #        0x7e3e0  0      OPC=<label>         
  pushq %rbx                                #  1     0x7e3e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0x7e3e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0x7e3e3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0x7e3e5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0x7e3e7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0x7e3ea  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0x7e3ed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0x7e3ef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0x7e3f4  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0x7e3f8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0x7e3fa  5      OPC=movl_r32_m32    
  nop                                       #  12    0x7e3ff  1      OPC=nop             
  nop                                       #  13    0x7e400  1      OPC=nop             
  nop                                       #  14    0x7e401  1      OPC=nop             
  nop                                       #  15    0x7e402  1      OPC=nop             
  nop                                       #  16    0x7e403  1      OPC=nop             
  nop                                       #  17    0x7e404  1      OPC=nop             
  nop                                       #  18    0x7e405  1      OPC=nop             
  nop                                       #  19    0x7e406  1      OPC=nop             
  nop                                       #  20    0x7e407  1      OPC=nop             
  nop                                       #  21    0x7e408  1      OPC=nop             
  nop                                       #  22    0x7e409  1      OPC=nop             
  nop                                       #  23    0x7e40a  1      OPC=nop             
  nop                                       #  24    0x7e40b  1      OPC=nop             
  nop                                       #  25    0x7e40c  1      OPC=nop             
  nop                                       #  26    0x7e40d  1      OPC=nop             
  nop                                       #  27    0x7e40e  1      OPC=nop             
  nop                                       #  28    0x7e40f  1      OPC=nop             
  nop                                       #  29    0x7e410  1      OPC=nop             
  nop                                       #  30    0x7e411  1      OPC=nop             
  nop                                       #  31    0x7e412  1      OPC=nop             
  nop                                       #  32    0x7e413  1      OPC=nop             
  nop                                       #  33    0x7e414  1      OPC=nop             
  nop                                       #  34    0x7e415  1      OPC=nop             
  nop                                       #  35    0x7e416  1      OPC=nop             
  nop                                       #  36    0x7e417  1      OPC=nop             
  nop                                       #  37    0x7e418  1      OPC=nop             
  nop                                       #  38    0x7e419  1      OPC=nop             
  nop                                       #  39    0x7e41a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0x7e41b  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0x7e420  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0x7e422  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0x7e425  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0x7e428  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0x7e429  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0x7e42b  7      OPC=andl_r32_imm32  
  nop                                       #  47    0x7e432  1      OPC=nop             
  nop                                       #  48    0x7e433  1      OPC=nop             
  nop                                       #  49    0x7e434  1      OPC=nop             
  nop                                       #  50    0x7e435  1      OPC=nop             
  addq %r15, %r11                           #  51    0x7e436  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0x7e439  3      OPC=jmpq_r64        
  nop                                       #  53    0x7e43c  1      OPC=nop             
  nop                                       #  54    0x7e43d  1      OPC=nop             
  nop                                       #  55    0x7e43e  1      OPC=nop             
  nop                                       #  56    0x7e43f  1      OPC=nop             
  nop                                       #  57    0x7e440  1      OPC=nop             
  nop                                       #  58    0x7e441  1      OPC=nop             
  nop                                       #  59    0x7e442  1      OPC=nop             
  nop                                       #  60    0x7e443  1      OPC=nop             
  nop                                       #  61    0x7e444  1      OPC=nop             
  nop                                       #  62    0x7e445  1      OPC=nop             
  nop                                       #  63    0x7e446  1      OPC=nop             
  movl %eax, %edi                           #  64    0x7e447  2      OPC=movl_r32_r32    
  nop                                       #  65    0x7e449  1      OPC=nop             
  nop                                       #  66    0x7e44a  1      OPC=nop             
  nop                                       #  67    0x7e44b  1      OPC=nop             
  nop                                       #  68    0x7e44c  1      OPC=nop             
  nop                                       #  69    0x7e44d  1      OPC=nop             
  nop                                       #  70    0x7e44e  1      OPC=nop             
  nop                                       #  71    0x7e44f  1      OPC=nop             
  nop                                       #  72    0x7e450  1      OPC=nop             
  nop                                       #  73    0x7e451  1      OPC=nop             
  nop                                       #  74    0x7e452  1      OPC=nop             
  nop                                       #  75    0x7e453  1      OPC=nop             
  nop                                       #  76    0x7e454  1      OPC=nop             
  nop                                       #  77    0x7e455  1      OPC=nop             
  nop                                       #  78    0x7e456  1      OPC=nop             
  nop                                       #  79    0x7e457  1      OPC=nop             
  nop                                       #  80    0x7e458  1      OPC=nop             
  nop                                       #  81    0x7e459  1      OPC=nop             
  nop                                       #  82    0x7e45a  1      OPC=nop             
  nop                                       #  83    0x7e45b  1      OPC=nop             
  nop                                       #  84    0x7e45c  1      OPC=nop             
  nop                                       #  85    0x7e45d  1      OPC=nop             
  nop                                       #  86    0x7e45e  1      OPC=nop             
  nop                                       #  87    0x7e45f  1      OPC=nop             
  nop                                       #  88    0x7e460  1      OPC=nop             
  nop                                       #  89    0x7e461  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0x7e462  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIcLb1EE11do_groupingEv, .-_ZNKSt10moneypunctIcLb1EE11do_groupingEv

