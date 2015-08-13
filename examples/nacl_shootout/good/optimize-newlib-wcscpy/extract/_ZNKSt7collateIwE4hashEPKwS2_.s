  .text
  .globl _ZNKSt7collateIwE4hashEPKwS2_
  .type _ZNKSt7collateIwE4hashEPKwS2_, @function

#! file-offset 0xf1e60
#! rip-offset  0xb1e60
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE4hashEPKwS2_:  #        0xb1e60  0      OPC=<label>         
  movl %edi, %edi                #  1     0xb1e60  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0xb1e62  2      OPC=movl_r32_r32    
  movl %edx, %edx                #  3     0xb1e64  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xb1e66  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  5     0xb1e68  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  6     0xb1e6c  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  7     0xb1e6e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax         #  8     0xb1e73  6      OPC=andl_r32_imm32  
  nop                            #  9     0xb1e79  1      OPC=nop             
  nop                            #  10    0xb1e7a  1      OPC=nop             
  nop                            #  11    0xb1e7b  1      OPC=nop             
  addq %r15, %rax                #  12    0xb1e7c  3      OPC=addq_r64_r64    
  jmpq %rax                      #  13    0xb1e7f  2      OPC=jmpq_r64        
  nop                            #  14    0xb1e81  1      OPC=nop             
  nop                            #  15    0xb1e82  1      OPC=nop             
  nop                            #  16    0xb1e83  1      OPC=nop             
  nop                            #  17    0xb1e84  1      OPC=nop             
  nop                            #  18    0xb1e85  1      OPC=nop             
                                                                              
.size _ZNKSt7collateIwE4hashEPKwS2_, .-_ZNKSt7collateIwE4hashEPKwS2_

