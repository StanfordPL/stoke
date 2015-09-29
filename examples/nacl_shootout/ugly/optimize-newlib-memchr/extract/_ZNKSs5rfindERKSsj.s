  .text
  .globl _ZNKSs5rfindERKSsj
  .type _ZNKSs5rfindERKSsj, @function

#! file-offset 0xebee0
#! rip-offset  0xabee0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode            
._ZNKSs5rfindERKSsj:        #        0xabee0  0      OPC=<label>       
  movl %esi, %esi           #  1     0xabee0  2      OPC=movl_r32_r32  
  movl %edi, %edi           #  2     0xabee2  2      OPC=movl_r32_r32  
  movl %esi, %esi           #  3     0xabee4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi  #  4     0xabee6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax     #  5     0xabeea  3      OPC=leal_r32_m16  
  movl %eax, %eax           #  6     0xabeed  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx  #  7     0xabeef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs5rfindEPKcjj  #  8     0xabef3  5      OPC=jmpq_label_1  
  nop                       #  9     0xabef8  1      OPC=nop           
  nop                       #  10    0xabef9  1      OPC=nop           
  nop                       #  11    0xabefa  1      OPC=nop           
  nop                       #  12    0xabefb  1      OPC=nop           
  nop                       #  13    0xabefc  1      OPC=nop           
  nop                       #  14    0xabefd  1      OPC=nop           
  nop                       #  15    0xabefe  1      OPC=nop           
  nop                       #  16    0xabeff  1      OPC=nop           
                                                                       
.size _ZNKSs5rfindERKSsj, .-_ZNKSs5rfindERKSsj

