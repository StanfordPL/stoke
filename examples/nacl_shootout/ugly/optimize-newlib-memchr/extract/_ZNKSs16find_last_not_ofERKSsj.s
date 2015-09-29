  .text
  .globl _ZNKSs16find_last_not_ofERKSsj
  .type _ZNKSs16find_last_not_ofERKSsj, @function

#! file-offset 0xebae0
#! rip-offset  0xabae0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode            
._ZNKSs16find_last_not_ofERKSsj:        #        0xabae0  0      OPC=<label>       
  movl %esi, %esi                       #  1     0xabae0  2      OPC=movl_r32_r32  
  movl %edi, %edi                       #  2     0xabae2  2      OPC=movl_r32_r32  
  movl %esi, %esi                       #  3     0xabae4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi              #  4     0xabae6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax                 #  5     0xabaea  3      OPC=leal_r32_m16  
  movl %eax, %eax                       #  6     0xabaed  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx              #  7     0xabaef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  8     0xabaf3  5      OPC=jmpq_label_1  
  nop                                   #  9     0xabaf8  1      OPC=nop           
  nop                                   #  10    0xabaf9  1      OPC=nop           
  nop                                   #  11    0xabafa  1      OPC=nop           
  nop                                   #  12    0xabafb  1      OPC=nop           
  nop                                   #  13    0xabafc  1      OPC=nop           
  nop                                   #  14    0xabafd  1      OPC=nop           
  nop                                   #  15    0xabafe  1      OPC=nop           
  nop                                   #  16    0xabaff  1      OPC=nop           
                                                                                   
.size _ZNKSs16find_last_not_ofERKSsj, .-_ZNKSs16find_last_not_ofERKSsj

