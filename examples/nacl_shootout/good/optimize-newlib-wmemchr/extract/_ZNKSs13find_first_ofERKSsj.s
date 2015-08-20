  .text
  .globl _ZNKSs13find_first_ofERKSsj
  .type _ZNKSs13find_first_ofERKSsj, @function

#! file-offset 0xeb6c0
#! rip-offset  0xab6c0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode            
._ZNKSs13find_first_ofERKSsj:        #        0xab6c0  0      OPC=<label>       
  movl %esi, %esi                    #  1     0xab6c0  2      OPC=movl_r32_r32  
  movl %edi, %edi                    #  2     0xab6c2  2      OPC=movl_r32_r32  
  movl %esi, %esi                    #  3     0xab6c4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi           #  4     0xab6c6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax              #  5     0xab6ca  3      OPC=leal_r32_m16  
  movl %eax, %eax                    #  6     0xab6cd  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx           #  7     0xab6cf  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  8     0xab6d3  5      OPC=jmpq_label_1  
  nop                                #  9     0xab6d8  1      OPC=nop           
  nop                                #  10    0xab6d9  1      OPC=nop           
  nop                                #  11    0xab6da  1      OPC=nop           
  nop                                #  12    0xab6db  1      OPC=nop           
  nop                                #  13    0xab6dc  1      OPC=nop           
  nop                                #  14    0xab6dd  1      OPC=nop           
  nop                                #  15    0xab6de  1      OPC=nop           
  nop                                #  16    0xab6df  1      OPC=nop           
                                                                                
.size _ZNKSs13find_first_ofERKSsj, .-_ZNKSs13find_first_ofERKSsj

