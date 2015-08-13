  .text
  .globl _ZNKSs16find_last_not_ofERKSsj
  .type _ZNKSs16find_last_not_ofERKSsj, @function

#! file-offset 0xeb0c0
#! rip-offset  0xab0c0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode            
._ZNKSs16find_last_not_ofERKSsj:        #        0xab0c0  0      OPC=<label>       
  movl %esi, %esi                       #  1     0xab0c0  2      OPC=movl_r32_r32  
  movl %edi, %edi                       #  2     0xab0c2  2      OPC=movl_r32_r32  
  movl %esi, %esi                       #  3     0xab0c4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi              #  4     0xab0c6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                 #  5     0xab0ca  3      OPC=leal_r32_m16  
  movl %eax, %eax                       #  6     0xab0cd  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx              #  7     0xab0cf  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  8     0xab0d3  5      OPC=jmpq_label_1  
  nop                                   #  9     0xab0d8  1      OPC=nop           
  nop                                   #  10    0xab0d9  1      OPC=nop           
  nop                                   #  11    0xab0da  1      OPC=nop           
  nop                                   #  12    0xab0db  1      OPC=nop           
  nop                                   #  13    0xab0dc  1      OPC=nop           
  nop                                   #  14    0xab0dd  1      OPC=nop           
  nop                                   #  15    0xab0de  1      OPC=nop           
  nop                                   #  16    0xab0df  1      OPC=nop           
                                                                                   
.size _ZNKSs16find_last_not_ofERKSsj, .-_ZNKSs16find_last_not_ofERKSsj

