  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0xeee80
#! rip-offset  0xaee80
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6assignERKSsjj:                   #        0xaee80  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xaee80  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaee82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaee85  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaee88  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  5     0xaee8a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi              #  6     0xaee8c  4      OPC=movl_r32_m32    
  leal -0xc(%rsi), %eax                 #  7     0xaee90  3      OPC=leal_r32_m16    
  movl %eax, %eax                       #  8     0xaee93  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xaee95  4      OPC=movl_r32_m32    
  cmpl %eax, %edx                       #  10    0xaee99  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xaee9b  1      OPC=nop             
  nop                                   #  12    0xaee9c  1      OPC=nop             
  nop                                   #  13    0xaee9d  1      OPC=nop             
  nop                                   #  14    0xaee9e  1      OPC=nop             
  nop                                   #  15    0xaee9f  1      OPC=nop             
  ja .L_aeec0                           #  16    0xaeea0  2      OPC=ja_label        
  subl %edx, %eax                       #  17    0xaeea2  2      OPC=subl_r32_r32    
  leal (%rdx,%rsi,1), %esi              #  18    0xaeea4  3      OPC=leal_r32_m16    
  cmpl %ecx, %eax                       #  19    0xaeea7  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %eax                     #  20    0xaeea9  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xaeeac  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xaeeaf  3      OPC=addq_r64_r64    
  movl %eax, %edx                       #  23    0xaeeb2  2      OPC=movl_r32_r32    
  jmpq ._ZNSs6assignEPKcj               #  24    0xaeeb4  5      OPC=jmpq_label_1    
  nop                                   #  25    0xaeeb9  1      OPC=nop             
  nop                                   #  26    0xaeeba  1      OPC=nop             
  nop                                   #  27    0xaeebb  1      OPC=nop             
  nop                                   #  28    0xaeebc  1      OPC=nop             
  nop                                   #  29    0xaeebd  1      OPC=nop             
  nop                                   #  30    0xaeebe  1      OPC=nop             
  nop                                   #  31    0xaeebf  1      OPC=nop             
.L_aeec0:                               #        0xaeec0  0      OPC=<label>         
  movl $0x1003bb2b, %edi                #  32    0xaeec0  5      OPC=movl_r32_imm32  
  nop                                   #  33    0xaeec5  1      OPC=nop             
  nop                                   #  34    0xaeec6  1      OPC=nop             
  nop                                   #  35    0xaeec7  1      OPC=nop             
  nop                                   #  36    0xaeec8  1      OPC=nop             
  nop                                   #  37    0xaeec9  1      OPC=nop             
  nop                                   #  38    0xaeeca  1      OPC=nop             
  nop                                   #  39    0xaeecb  1      OPC=nop             
  nop                                   #  40    0xaeecc  1      OPC=nop             
  nop                                   #  41    0xaeecd  1      OPC=nop             
  nop                                   #  42    0xaeece  1      OPC=nop             
  nop                                   #  43    0xaeecf  1      OPC=nop             
  nop                                   #  44    0xaeed0  1      OPC=nop             
  nop                                   #  45    0xaeed1  1      OPC=nop             
  nop                                   #  46    0xaeed2  1      OPC=nop             
  nop                                   #  47    0xaeed3  1      OPC=nop             
  nop                                   #  48    0xaeed4  1      OPC=nop             
  nop                                   #  49    0xaeed5  1      OPC=nop             
  nop                                   #  50    0xaeed6  1      OPC=nop             
  nop                                   #  51    0xaeed7  1      OPC=nop             
  nop                                   #  52    0xaeed8  1      OPC=nop             
  nop                                   #  53    0xaeed9  1      OPC=nop             
  nop                                   #  54    0xaeeda  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xaeedb  5      OPC=callq_label     
                                                                                     
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

