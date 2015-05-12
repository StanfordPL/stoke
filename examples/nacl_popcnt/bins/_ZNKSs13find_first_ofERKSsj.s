  .text
  .globl _ZNKSs13find_first_ofERKSsj
  .type _ZNKSs13find_first_ofERKSsj, @function

#! file-offset 0x453e0
#! rip-offset  0x453e0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs13find_first_ofERKSsj:        #        0x453e0  0      
  movl %esi, %esi                    #  1     0x453e0  2      
  movl %edi, %edi                    #  2     0x453e2  2      
  movl %esi, %esi                    #  3     0x453e4  2      
  movl (%r15,%rsi,1), %esi           #  4     0x453e6  4      
  leal -0xc(%rsi), %eax              #  5     0x453ea  3      
  movl %eax, %eax                    #  6     0x453ed  2      
  movl (%r15,%rax,1), %ecx           #  7     0x453ef  4      
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  8     0x453f3  5      
  nop                                #  9     0x453f8  1      
  nop                                #  10    0x453f9  1      
  nop                                #  11    0x453fa  1      
  nop                                #  12    0x453fb  1      
  nop                                #  13    0x453fc  1      
  nop                                #  14    0x453fd  1      
  nop                                #  15    0x453fe  1      
  nop                                #  16    0x453ff  1      
                                                              
.size _ZNKSs13find_first_ofERKSsj, .-_ZNKSs13find_first_ofERKSsj

