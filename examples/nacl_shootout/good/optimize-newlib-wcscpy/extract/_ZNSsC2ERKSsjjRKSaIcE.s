  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0xed8e0
#! rip-offset  0xad8e0
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0xad8e0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad8e0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                         #  2     0xad8e1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                         #  3     0xad8e3  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                         #  4     0xad8e5  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  5     0xad8e8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  6     0xad8eb  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                         #  7     0xad8ee  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                #  8     0xad8f0  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                   #  9     0xad8f4  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                         #  10    0xad8f7  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                #  11    0xad8f9  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                         #  12    0xad8fd  2      OPC=cmpl_r32_r32    
  nop                                                                     #  13    0xad8ff  1      OPC=nop             
  ja .L_ad940                                                             #  14    0xad900  2      OPC=ja_label        
  subl %edx, %esi                                                         #  15    0xad902  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                       #  16    0xad904  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                         #  17    0xad908  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                       #  18    0xad90a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                         #  19    0xad90d  2      OPC=addl_r32_r32    
  addl %edi, %esi                                                         #  20    0xad90f  2      OPC=addl_r32_r32    
  leal (%rdx,%rdi,1), %edi                                                #  21    0xad911  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                         #  22    0xad914  3      OPC=movl_r32_r32    
  nop                                                                     #  23    0xad917  1      OPC=nop             
  nop                                                                     #  24    0xad918  1      OPC=nop             
  nop                                                                     #  25    0xad919  1      OPC=nop             
  nop                                                                     #  26    0xad91a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  27    0xad91b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  28    0xad920  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  29    0xad922  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  30    0xad926  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  31    0xad929  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  32    0xad92c  1      OPC=popq_r64_1      
  popq %r11                                                               #  33    0xad92d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  34    0xad92f  7      OPC=andl_r32_imm32  
  nop                                                                     #  35    0xad936  1      OPC=nop             
  nop                                                                     #  36    0xad937  1      OPC=nop             
  nop                                                                     #  37    0xad938  1      OPC=nop             
  nop                                                                     #  38    0xad939  1      OPC=nop             
  addq %r15, %r11                                                         #  39    0xad93a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  40    0xad93d  3      OPC=jmpq_r64        
  nop                                                                     #  41    0xad940  1      OPC=nop             
  nop                                                                     #  42    0xad941  1      OPC=nop             
  nop                                                                     #  43    0xad942  1      OPC=nop             
  nop                                                                     #  44    0xad943  1      OPC=nop             
  nop                                                                     #  45    0xad944  1      OPC=nop             
  nop                                                                     #  46    0xad945  1      OPC=nop             
  nop                                                                     #  47    0xad946  1      OPC=nop             
.L_ad940:                                                                 #        0xad947  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                  #  48    0xad947  5      OPC=movl_r32_imm32  
  nop                                                                     #  49    0xad94c  1      OPC=nop             
  nop                                                                     #  50    0xad94d  1      OPC=nop             
  nop                                                                     #  51    0xad94e  1      OPC=nop             
  nop                                                                     #  52    0xad94f  1      OPC=nop             
  nop                                                                     #  53    0xad950  1      OPC=nop             
  nop                                                                     #  54    0xad951  1      OPC=nop             
  nop                                                                     #  55    0xad952  1      OPC=nop             
  nop                                                                     #  56    0xad953  1      OPC=nop             
  nop                                                                     #  57    0xad954  1      OPC=nop             
  nop                                                                     #  58    0xad955  1      OPC=nop             
  nop                                                                     #  59    0xad956  1      OPC=nop             
  nop                                                                     #  60    0xad957  1      OPC=nop             
  nop                                                                     #  61    0xad958  1      OPC=nop             
  nop                                                                     #  62    0xad959  1      OPC=nop             
  nop                                                                     #  63    0xad95a  1      OPC=nop             
  nop                                                                     #  64    0xad95b  1      OPC=nop             
  nop                                                                     #  65    0xad95c  1      OPC=nop             
  nop                                                                     #  66    0xad95d  1      OPC=nop             
  nop                                                                     #  67    0xad95e  1      OPC=nop             
  nop                                                                     #  68    0xad95f  1      OPC=nop             
  nop                                                                     #  69    0xad960  1      OPC=nop             
  nop                                                                     #  70    0xad961  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                    #  71    0xad962  5      OPC=callq_label     
                                                                                                                       
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE

