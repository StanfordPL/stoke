  .text
  .globl _ZNKSs6rbeginEv
  .type _ZNKSs6rbeginEv, @function

#! file-offset 0xea420
#! rip-offset  0xaa420
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6rbeginEv:           #        0xaa420  0      OPC=<label>         
  movl %esi, %esi           #  1     0xaa420  2      OPC=movl_r32_r32    
  movl %edi, %eax           #  2     0xaa422  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0xaa424  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  4     0xaa426  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx     #  5     0xaa42a  3      OPC=leal_r32_m16    
  movl %ecx, %ecx           #  6     0xaa42d  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx  #  7     0xaa42f  4      OPC=addl_r32_m32    
  movl %eax, %eax           #  8     0xaa433  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)  #  9     0xaa435  4      OPC=movl_m32_r32    
  popq %r11                 #  10    0xaa439  2      OPC=popq_r64_1      
  nop                       #  11    0xaa43b  1      OPC=nop             
  nop                       #  12    0xaa43c  1      OPC=nop             
  nop                       #  13    0xaa43d  1      OPC=nop             
  nop                       #  14    0xaa43e  1      OPC=nop             
  nop                       #  15    0xaa43f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  16    0xaa440  7      OPC=andl_r32_imm32  
  nop                       #  17    0xaa447  1      OPC=nop             
  nop                       #  18    0xaa448  1      OPC=nop             
  nop                       #  19    0xaa449  1      OPC=nop             
  nop                       #  20    0xaa44a  1      OPC=nop             
  addq %r15, %r11           #  21    0xaa44b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  22    0xaa44e  3      OPC=jmpq_r64        
  nop                       #  23    0xaa451  1      OPC=nop             
  nop                       #  24    0xaa452  1      OPC=nop             
  nop                       #  25    0xaa453  1      OPC=nop             
  nop                       #  26    0xaa454  1      OPC=nop             
  nop                       #  27    0xaa455  1      OPC=nop             
  nop                       #  28    0xaa456  1      OPC=nop             
  nop                       #  29    0xaa457  1      OPC=nop             
  nop                       #  30    0xaa458  1      OPC=nop             
  nop                       #  31    0xaa459  1      OPC=nop             
  nop                       #  32    0xaa45a  1      OPC=nop             
  nop                       #  33    0xaa45b  1      OPC=nop             
  nop                       #  34    0xaa45c  1      OPC=nop             
  nop                       #  35    0xaa45d  1      OPC=nop             
  nop                       #  36    0xaa45e  1      OPC=nop             
  nop                       #  37    0xaa45f  1      OPC=nop             
  nop                       #  38    0xaa460  1      OPC=nop             
  nop                       #  39    0xaa461  1      OPC=nop             
  nop                       #  40    0xaa462  1      OPC=nop             
  nop                       #  41    0xaa463  1      OPC=nop             
  nop                       #  42    0xaa464  1      OPC=nop             
  nop                       #  43    0xaa465  1      OPC=nop             
  nop                       #  44    0xaa466  1      OPC=nop             
                                                                         
.size _ZNKSs6rbeginEv, .-_ZNKSs6rbeginEv

