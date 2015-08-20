  .text
  .globl _ZNKSt10moneypunctIwLb0EE11do_groupingEv
  .type _ZNKSt10moneypunctIwLb0EE11do_groupingEv, @function

#! file-offset 0xf7100
#! rip-offset  0xb7100
#! capacity    128 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11do_groupingEv:  #        0xb7100  0      OPC=<label>         
  pushq %rbx                                #  1     0xb7100  1      OPC=pushq_r64_1     
  movl %esi, %esi                           #  2     0xb7101  2      OPC=movl_r32_r32    
  movl %edi, %ebx                           #  3     0xb7103  2      OPC=movl_r32_r32    
  movl %ebx, %edi                           #  4     0xb7105  2      OPC=movl_r32_r32    
  subl $0x10, %esp                          #  5     0xb7107  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                           #  6     0xb710a  3      OPC=addq_r64_r64    
  movl %esi, %esi                           #  7     0xb710d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax               #  8     0xb710f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                      #  9     0xb7114  4      OPC=leal_r32_m16    
  movl %eax, %eax                           #  10    0xb7118  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi               #  11    0xb711a  5      OPC=movl_r32_m32    
  nop                                       #  12    0xb711f  1      OPC=nop             
  nop                                       #  13    0xb7120  1      OPC=nop             
  nop                                       #  14    0xb7121  1      OPC=nop             
  nop                                       #  15    0xb7122  1      OPC=nop             
  nop                                       #  16    0xb7123  1      OPC=nop             
  nop                                       #  17    0xb7124  1      OPC=nop             
  nop                                       #  18    0xb7125  1      OPC=nop             
  nop                                       #  19    0xb7126  1      OPC=nop             
  nop                                       #  20    0xb7127  1      OPC=nop             
  nop                                       #  21    0xb7128  1      OPC=nop             
  nop                                       #  22    0xb7129  1      OPC=nop             
  nop                                       #  23    0xb712a  1      OPC=nop             
  nop                                       #  24    0xb712b  1      OPC=nop             
  nop                                       #  25    0xb712c  1      OPC=nop             
  nop                                       #  26    0xb712d  1      OPC=nop             
  nop                                       #  27    0xb712e  1      OPC=nop             
  nop                                       #  28    0xb712f  1      OPC=nop             
  nop                                       #  29    0xb7130  1      OPC=nop             
  nop                                       #  30    0xb7131  1      OPC=nop             
  nop                                       #  31    0xb7132  1      OPC=nop             
  nop                                       #  32    0xb7133  1      OPC=nop             
  nop                                       #  33    0xb7134  1      OPC=nop             
  nop                                       #  34    0xb7135  1      OPC=nop             
  nop                                       #  35    0xb7136  1      OPC=nop             
  nop                                       #  36    0xb7137  1      OPC=nop             
  nop                                       #  37    0xb7138  1      OPC=nop             
  nop                                       #  38    0xb7139  1      OPC=nop             
  nop                                       #  39    0xb713a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE                 #  40    0xb713b  5      OPC=callq_label     
  movl %ebx, %eax                           #  41    0xb7140  2      OPC=movl_r32_r32    
  addl $0x10, %esp                          #  42    0xb7142  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                           #  43    0xb7145  3      OPC=addq_r64_r64    
  popq %rbx                                 #  44    0xb7148  1      OPC=popq_r64_1      
  popq %r11                                 #  45    0xb7149  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  46    0xb714b  7      OPC=andl_r32_imm32  
  nop                                       #  47    0xb7152  1      OPC=nop             
  nop                                       #  48    0xb7153  1      OPC=nop             
  nop                                       #  49    0xb7154  1      OPC=nop             
  nop                                       #  50    0xb7155  1      OPC=nop             
  addq %r15, %r11                           #  51    0xb7156  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  52    0xb7159  3      OPC=jmpq_r64        
  nop                                       #  53    0xb715c  1      OPC=nop             
  nop                                       #  54    0xb715d  1      OPC=nop             
  nop                                       #  55    0xb715e  1      OPC=nop             
  nop                                       #  56    0xb715f  1      OPC=nop             
  nop                                       #  57    0xb7160  1      OPC=nop             
  nop                                       #  58    0xb7161  1      OPC=nop             
  nop                                       #  59    0xb7162  1      OPC=nop             
  nop                                       #  60    0xb7163  1      OPC=nop             
  nop                                       #  61    0xb7164  1      OPC=nop             
  nop                                       #  62    0xb7165  1      OPC=nop             
  nop                                       #  63    0xb7166  1      OPC=nop             
  movl %eax, %edi                           #  64    0xb7167  2      OPC=movl_r32_r32    
  nop                                       #  65    0xb7169  1      OPC=nop             
  nop                                       #  66    0xb716a  1      OPC=nop             
  nop                                       #  67    0xb716b  1      OPC=nop             
  nop                                       #  68    0xb716c  1      OPC=nop             
  nop                                       #  69    0xb716d  1      OPC=nop             
  nop                                       #  70    0xb716e  1      OPC=nop             
  nop                                       #  71    0xb716f  1      OPC=nop             
  nop                                       #  72    0xb7170  1      OPC=nop             
  nop                                       #  73    0xb7171  1      OPC=nop             
  nop                                       #  74    0xb7172  1      OPC=nop             
  nop                                       #  75    0xb7173  1      OPC=nop             
  nop                                       #  76    0xb7174  1      OPC=nop             
  nop                                       #  77    0xb7175  1      OPC=nop             
  nop                                       #  78    0xb7176  1      OPC=nop             
  nop                                       #  79    0xb7177  1      OPC=nop             
  nop                                       #  80    0xb7178  1      OPC=nop             
  nop                                       #  81    0xb7179  1      OPC=nop             
  nop                                       #  82    0xb717a  1      OPC=nop             
  nop                                       #  83    0xb717b  1      OPC=nop             
  nop                                       #  84    0xb717c  1      OPC=nop             
  nop                                       #  85    0xb717d  1      OPC=nop             
  nop                                       #  86    0xb717e  1      OPC=nop             
  nop                                       #  87    0xb717f  1      OPC=nop             
  nop                                       #  88    0xb7180  1      OPC=nop             
  nop                                       #  89    0xb7181  1      OPC=nop             
  callq ._Unwind_Resume                     #  90    0xb7182  5      OPC=callq_label     
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11do_groupingEv, .-_ZNKSt10moneypunctIwLb0EE11do_groupingEv

