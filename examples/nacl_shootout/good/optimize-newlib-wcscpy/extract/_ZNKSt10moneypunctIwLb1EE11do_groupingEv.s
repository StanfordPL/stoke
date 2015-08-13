  .text
  .globl _ZNKSt10moneypunctIwLb1EE11do_groupingEv
  .type _ZNKSt10moneypunctIwLb1EE11do_groupingEv, @function

#! file-offset 0xf6d80
#! rip-offset  0xb6d80
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11do_groupingEv:  #        0xb6d80  0      OPC=<label>         
  pushq %rbx                                #  1     0xb6d80  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0xb6d81  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0xb6d83  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0xb6d85  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0xb6d87  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0xb6d8a  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0xb6d8d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0xb6d8f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0xb6d94  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0xb6d98  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0xb6d9a  5      OPC=movl_r32_m32    
  nop                                       #  12    0xb6d9f  1      OPC=nop             
  nop                                       #  13    0xb6da0  1      OPC=nop             
  nop                                       #  14    0xb6da1  1      OPC=nop             
  nop                                       #  15    0xb6da2  1      OPC=nop             
  nop                                       #  16    0xb6da3  1      OPC=nop             
  nop                                       #  17    0xb6da4  1      OPC=nop             
  nop                                       #  18    0xb6da5  1      OPC=nop             
  nop                                       #  19    0xb6da6  1      OPC=nop             
  nop                                       #  20    0xb6da7  1      OPC=nop             
  nop                                       #  21    0xb6da8  1      OPC=nop             
  nop                                       #  22    0xb6da9  1      OPC=nop             
  nop                                       #  23    0xb6daa  1      OPC=nop             
  nop                                       #  24    0xb6dab  1      OPC=nop             
  nop                                       #  25    0xb6dac  1      OPC=nop             
  nop                                       #  26    0xb6dad  1      OPC=nop             
  nop                                       #  27    0xb6dae  1      OPC=nop             
  nop                                       #  28    0xb6daf  1      OPC=nop             
  nop                                       #  29    0xb6db0  1      OPC=nop             
  nop                                       #  30    0xb6db1  1      OPC=nop             
  nop                                       #  31    0xb6db2  1      OPC=nop             
  nop                                       #  32    0xb6db3  1      OPC=nop             
  nop                                       #  33    0xb6db4  1      OPC=nop             
  nop                                       #  34    0xb6db5  1      OPC=nop             
  nop                                       #  35    0xb6db6  1      OPC=nop             
  nop                                       #  36    0xb6db7  1      OPC=nop             
  nop                                       #  37    0xb6db8  1      OPC=nop             
  nop                                       #  38    0xb6db9  1      OPC=nop             
  nop                                       #  39    0xb6dba  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0xb6dbb  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0xb6dc0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0xb6dc2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0xb6dc5  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0xb6dc8  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0xb6dc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0xb6dcb  7      OPC=andl_r32_imm32  
  nop                                       #  47    0xb6dd2  1      OPC=nop             
  nop                                       #  48    0xb6dd3  1      OPC=nop             
  nop                                       #  49    0xb6dd4  1      OPC=nop             
  nop                                       #  50    0xb6dd5  1      OPC=nop             
  addq %r15, %r11                           #  51    0xb6dd6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0xb6dd9  3      OPC=jmpq_r64        
  nop                                       #  53    0xb6ddc  1      OPC=nop             
  nop                                       #  54    0xb6ddd  1      OPC=nop             
  nop                                       #  55    0xb6dde  1      OPC=nop             
  nop                                       #  56    0xb6ddf  1      OPC=nop             
  nop                                       #  57    0xb6de0  1      OPC=nop             
  nop                                       #  58    0xb6de1  1      OPC=nop             
  nop                                       #  59    0xb6de2  1      OPC=nop             
  nop                                       #  60    0xb6de3  1      OPC=nop             
  nop                                       #  61    0xb6de4  1      OPC=nop             
  nop                                       #  62    0xb6de5  1      OPC=nop             
  nop                                       #  63    0xb6de6  1      OPC=nop             
  movl %eax, %edi                           #  64    0xb6de7  2      OPC=movl_r32_r32    
  nop                                       #  65    0xb6de9  1      OPC=nop             
  nop                                       #  66    0xb6dea  1      OPC=nop             
  nop                                       #  67    0xb6deb  1      OPC=nop             
  nop                                       #  68    0xb6dec  1      OPC=nop             
  nop                                       #  69    0xb6ded  1      OPC=nop             
  nop                                       #  70    0xb6dee  1      OPC=nop             
  nop                                       #  71    0xb6def  1      OPC=nop             
  nop                                       #  72    0xb6df0  1      OPC=nop             
  nop                                       #  73    0xb6df1  1      OPC=nop             
  nop                                       #  74    0xb6df2  1      OPC=nop             
  nop                                       #  75    0xb6df3  1      OPC=nop             
  nop                                       #  76    0xb6df4  1      OPC=nop             
  nop                                       #  77    0xb6df5  1      OPC=nop             
  nop                                       #  78    0xb6df6  1      OPC=nop             
  nop                                       #  79    0xb6df7  1      OPC=nop             
  nop                                       #  80    0xb6df8  1      OPC=nop             
  nop                                       #  81    0xb6df9  1      OPC=nop             
  nop                                       #  82    0xb6dfa  1      OPC=nop             
  nop                                       #  83    0xb6dfb  1      OPC=nop             
  nop                                       #  84    0xb6dfc  1      OPC=nop             
  nop                                       #  85    0xb6dfd  1      OPC=nop             
  nop                                       #  86    0xb6dfe  1      OPC=nop             
  nop                                       #  87    0xb6dff  1      OPC=nop             
  nop                                       #  88    0xb6e00  1      OPC=nop             
  nop                                       #  89    0xb6e01  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0xb6e02  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11do_groupingEv, .-_ZNKSt10moneypunctIwLb1EE11do_groupingEv

