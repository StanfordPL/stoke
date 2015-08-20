  .text
  .globl _ZNKSs6rbeginEv
  .type _ZNKSs6rbeginEv, @function

#! file-offset 0xea720
#! rip-offset  0xaa720
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6rbeginEv:           #        0xaa720  0      OPC=<label>         
  movl %esi, %esi           #  1     0xaa720  2      OPC=movl_r32_r32    
  movl %edi, %eax           #  2     0xaa722  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0xaa724  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  4     0xaa726  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx     #  5     0xaa72a  3      OPC=leal_r32_m16    
  movl %ecx, %ecx           #  6     0xaa72d  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx  #  7     0xaa72f  4      OPC=addl_r32_m32    
  movl %eax, %eax           #  8     0xaa733  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)  #  9     0xaa735  4      OPC=movl_m32_r32    
  popq %r11                 #  10    0xaa739  2      OPC=popq_r64_1      
  nop                       #  11    0xaa73b  1      OPC=nop             
  nop                       #  12    0xaa73c  1      OPC=nop             
  nop                       #  13    0xaa73d  1      OPC=nop             
  nop                       #  14    0xaa73e  1      OPC=nop             
  nop                       #  15    0xaa73f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  16    0xaa740  7      OPC=andl_r32_imm32  
  nop                       #  17    0xaa747  1      OPC=nop             
  nop                       #  18    0xaa748  1      OPC=nop             
  nop                       #  19    0xaa749  1      OPC=nop             
  nop                       #  20    0xaa74a  1      OPC=nop             
  addq %r15, %r11           #  21    0xaa74b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  22    0xaa74e  3      OPC=jmpq_r64        
  nop                       #  23    0xaa751  1      OPC=nop             
  nop                       #  24    0xaa752  1      OPC=nop             
  nop                       #  25    0xaa753  1      OPC=nop             
  nop                       #  26    0xaa754  1      OPC=nop             
  nop                       #  27    0xaa755  1      OPC=nop             
  nop                       #  28    0xaa756  1      OPC=nop             
  nop                       #  29    0xaa757  1      OPC=nop             
  nop                       #  30    0xaa758  1      OPC=nop             
  nop                       #  31    0xaa759  1      OPC=nop             
  nop                       #  32    0xaa75a  1      OPC=nop             
  nop                       #  33    0xaa75b  1      OPC=nop             
  nop                       #  34    0xaa75c  1      OPC=nop             
  nop                       #  35    0xaa75d  1      OPC=nop             
  nop                       #  36    0xaa75e  1      OPC=nop             
  nop                       #  37    0xaa75f  1      OPC=nop             
  nop                       #  38    0xaa760  1      OPC=nop             
  nop                       #  39    0xaa761  1      OPC=nop             
  nop                       #  40    0xaa762  1      OPC=nop             
  nop                       #  41    0xaa763  1      OPC=nop             
  nop                       #  42    0xaa764  1      OPC=nop             
  nop                       #  43    0xaa765  1      OPC=nop             
  nop                       #  44    0xaa766  1      OPC=nop             
                                                                         
.size _ZNKSs6rbeginEv, .-_ZNKSs6rbeginEv

