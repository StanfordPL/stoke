  .text
  .globl _ZNKSt7collateIcE4hashEPKcS2_
  .type _ZNKSt7collateIcE4hashEPKcS2_, @function

#! file-offset 0xb98e0
#! rip-offset  0x798e0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE4hashEPKcS2_:  #        0x798e0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x798e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0x798e2  2      OPC=movl_r32_r32    
  movl %edx, %edx                #  3     0x798e4  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0x798e6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  5     0x798e8  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  6     0x798ec  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  7     0x798ee  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax         #  8     0x798f3  6      OPC=andl_r32_imm32  
  nop                            #  9     0x798f9  1      OPC=nop             
  nop                            #  10    0x798fa  1      OPC=nop             
  nop                            #  11    0x798fb  1      OPC=nop             
  addq %r15, %rax                #  12    0x798fc  3      OPC=addq_r64_r64    
  jmpq %rax                      #  13    0x798ff  2      OPC=jmpq_r64        
  nop                            #  14    0x79901  1      OPC=nop             
  nop                            #  15    0x79902  1      OPC=nop             
  nop                            #  16    0x79903  1      OPC=nop             
  nop                            #  17    0x79904  1      OPC=nop             
  nop                            #  18    0x79905  1      OPC=nop             
                                                                              
.size _ZNKSt7collateIcE4hashEPKcS2_, .-_ZNKSt7collateIcE4hashEPKcS2_

