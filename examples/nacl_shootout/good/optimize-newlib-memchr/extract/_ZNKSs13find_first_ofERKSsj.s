  .text
  .globl _ZNKSs13find_first_ofERKSsj
  .type _ZNKSs13find_first_ofERKSsj, @function

#! file-offset 0xebde0
#! rip-offset  0xabde0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode            
._ZNKSs13find_first_ofERKSsj:        #        0xabde0  0      OPC=<label>       
  movl %esi, %esi                    #  1     0xabde0  2      OPC=movl_r32_r32  
  movl %edi, %edi                    #  2     0xabde2  2      OPC=movl_r32_r32  
  movl %esi, %esi                    #  3     0xabde4  2      OPC=movl_r32_r32  
  movl (%r15,%rsi,1), %esi           #  4     0xabde6  4      OPC=movl_r32_m32  
  leal -0xc(%rsi), %eax              #  5     0xabdea  3      OPC=leal_r32_m16  
  movl %eax, %eax                    #  6     0xabded  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %ecx           #  7     0xabdef  4      OPC=movl_r32_m32  
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  8     0xabdf3  5      OPC=jmpq_label_1  
  nop                                #  9     0xabdf8  1      OPC=nop           
  nop                                #  10    0xabdf9  1      OPC=nop           
  nop                                #  11    0xabdfa  1      OPC=nop           
  nop                                #  12    0xabdfb  1      OPC=nop           
  nop                                #  13    0xabdfc  1      OPC=nop           
  nop                                #  14    0xabdfd  1      OPC=nop           
  nop                                #  15    0xabdfe  1      OPC=nop           
  nop                                #  16    0xabdff  1      OPC=nop           
                                                                                
.size _ZNKSs13find_first_ofERKSsj, .-_ZNKSs13find_first_ofERKSsj

