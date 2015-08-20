  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0xee760
#! rip-offset  0xae760
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6assignERKSsjj:                   #        0xae760  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xae760  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xae762  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xae765  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xae768  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  5     0xae76a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi              #  6     0xae76c  4      OPC=movl_r32_m32    
  leal -0xc(%rsi), %eax                 #  7     0xae770  3      OPC=leal_r32_m16    
  movl %eax, %eax                       #  8     0xae773  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xae775  4      OPC=movl_r32_m32    
  cmpl %eax, %edx                       #  10    0xae779  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xae77b  1      OPC=nop             
  nop                                   #  12    0xae77c  1      OPC=nop             
  nop                                   #  13    0xae77d  1      OPC=nop             
  nop                                   #  14    0xae77e  1      OPC=nop             
  nop                                   #  15    0xae77f  1      OPC=nop             
  ja .L_ae7a0                           #  16    0xae780  2      OPC=ja_label        
  subl %edx, %eax                       #  17    0xae782  2      OPC=subl_r32_r32    
  leal (%rdx,%rsi,1), %esi              #  18    0xae784  3      OPC=leal_r32_m16    
  cmpl %ecx, %eax                       #  19    0xae787  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %eax                     #  20    0xae789  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xae78c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xae78f  3      OPC=addq_r64_r64    
  movl %eax, %edx                       #  23    0xae792  2      OPC=movl_r32_r32    
  jmpq ._ZNSs6assignEPKcj               #  24    0xae794  5      OPC=jmpq_label_1    
  nop                                   #  25    0xae799  1      OPC=nop             
  nop                                   #  26    0xae79a  1      OPC=nop             
  nop                                   #  27    0xae79b  1      OPC=nop             
  nop                                   #  28    0xae79c  1      OPC=nop             
  nop                                   #  29    0xae79d  1      OPC=nop             
  nop                                   #  30    0xae79e  1      OPC=nop             
  nop                                   #  31    0xae79f  1      OPC=nop             
.L_ae7a0:                               #        0xae7a0  0      OPC=<label>         
  movl $0x1003bb2b, %edi                #  32    0xae7a0  5      OPC=movl_r32_imm32  
  nop                                   #  33    0xae7a5  1      OPC=nop             
  nop                                   #  34    0xae7a6  1      OPC=nop             
  nop                                   #  35    0xae7a7  1      OPC=nop             
  nop                                   #  36    0xae7a8  1      OPC=nop             
  nop                                   #  37    0xae7a9  1      OPC=nop             
  nop                                   #  38    0xae7aa  1      OPC=nop             
  nop                                   #  39    0xae7ab  1      OPC=nop             
  nop                                   #  40    0xae7ac  1      OPC=nop             
  nop                                   #  41    0xae7ad  1      OPC=nop             
  nop                                   #  42    0xae7ae  1      OPC=nop             
  nop                                   #  43    0xae7af  1      OPC=nop             
  nop                                   #  44    0xae7b0  1      OPC=nop             
  nop                                   #  45    0xae7b1  1      OPC=nop             
  nop                                   #  46    0xae7b2  1      OPC=nop             
  nop                                   #  47    0xae7b3  1      OPC=nop             
  nop                                   #  48    0xae7b4  1      OPC=nop             
  nop                                   #  49    0xae7b5  1      OPC=nop             
  nop                                   #  50    0xae7b6  1      OPC=nop             
  nop                                   #  51    0xae7b7  1      OPC=nop             
  nop                                   #  52    0xae7b8  1      OPC=nop             
  nop                                   #  53    0xae7b9  1      OPC=nop             
  nop                                   #  54    0xae7ba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xae7bb  5      OPC=callq_label     
                                                                                     
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

