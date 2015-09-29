  .text
  .globl _ZNKSs6rbeginEv
  .type _ZNKSs6rbeginEv, @function

#! file-offset 0xeae40
#! rip-offset  0xaae40
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs6rbeginEv:           #        0xaae40  0      OPC=<label>         
  movl %esi, %esi           #  1     0xaae40  2      OPC=movl_r32_r32    
  movl %edi, %eax           #  2     0xaae42  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0xaae44  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edx  #  4     0xaae46  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %ecx     #  5     0xaae4a  3      OPC=leal_r32_m16    
  movl %ecx, %ecx           #  6     0xaae4d  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx  #  7     0xaae4f  4      OPC=addl_r32_m32    
  movl %eax, %eax           #  8     0xaae53  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)  #  9     0xaae55  4      OPC=movl_m32_r32    
  popq %r11                 #  10    0xaae59  2      OPC=popq_r64_1      
  nop                       #  11    0xaae5b  1      OPC=nop             
  nop                       #  12    0xaae5c  1      OPC=nop             
  nop                       #  13    0xaae5d  1      OPC=nop             
  nop                       #  14    0xaae5e  1      OPC=nop             
  nop                       #  15    0xaae5f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  16    0xaae60  7      OPC=andl_r32_imm32  
  nop                       #  17    0xaae67  1      OPC=nop             
  nop                       #  18    0xaae68  1      OPC=nop             
  nop                       #  19    0xaae69  1      OPC=nop             
  nop                       #  20    0xaae6a  1      OPC=nop             
  addq %r15, %r11           #  21    0xaae6b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  22    0xaae6e  3      OPC=jmpq_r64        
  nop                       #  23    0xaae71  1      OPC=nop             
  nop                       #  24    0xaae72  1      OPC=nop             
  nop                       #  25    0xaae73  1      OPC=nop             
  nop                       #  26    0xaae74  1      OPC=nop             
  nop                       #  27    0xaae75  1      OPC=nop             
  nop                       #  28    0xaae76  1      OPC=nop             
  nop                       #  29    0xaae77  1      OPC=nop             
  nop                       #  30    0xaae78  1      OPC=nop             
  nop                       #  31    0xaae79  1      OPC=nop             
  nop                       #  32    0xaae7a  1      OPC=nop             
  nop                       #  33    0xaae7b  1      OPC=nop             
  nop                       #  34    0xaae7c  1      OPC=nop             
  nop                       #  35    0xaae7d  1      OPC=nop             
  nop                       #  36    0xaae7e  1      OPC=nop             
  nop                       #  37    0xaae7f  1      OPC=nop             
  nop                       #  38    0xaae80  1      OPC=nop             
  nop                       #  39    0xaae81  1      OPC=nop             
  nop                       #  40    0xaae82  1      OPC=nop             
  nop                       #  41    0xaae83  1      OPC=nop             
  nop                       #  42    0xaae84  1      OPC=nop             
  nop                       #  43    0xaae85  1      OPC=nop             
  nop                       #  44    0xaae86  1      OPC=nop             
                                                                         
.size _ZNKSs6rbeginEv, .-_ZNKSs6rbeginEv

