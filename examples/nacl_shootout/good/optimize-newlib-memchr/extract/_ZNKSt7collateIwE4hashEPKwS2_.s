  .text
  .globl _ZNKSt7collateIwE4hashEPKwS2_
  .type _ZNKSt7collateIwE4hashEPKwS2_, @function

#! file-offset 0xf2880
#! rip-offset  0xb2880
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE4hashEPKwS2_:  #        0xb2880  0      OPC=<label>         
  movl %edi, %edi                #  1     0xb2880  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0xb2882  2      OPC=movl_r32_r32    
  movl %edx, %edx                #  3     0xb2884  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xb2886  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  5     0xb2888  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  6     0xb288c  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  7     0xb288e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax         #  8     0xb2893  6      OPC=andl_r32_imm32  
  nop                            #  9     0xb2899  1      OPC=nop             
  nop                            #  10    0xb289a  1      OPC=nop             
  nop                            #  11    0xb289b  1      OPC=nop             
  addq %r15, %rax                #  12    0xb289c  3      OPC=addq_r64_r64    
  jmpq %rax                      #  13    0xb289f  2      OPC=jmpq_r64        
  nop                            #  14    0xb28a1  1      OPC=nop             
  nop                            #  15    0xb28a2  1      OPC=nop             
  nop                            #  16    0xb28a3  1      OPC=nop             
  nop                            #  17    0xb28a4  1      OPC=nop             
  nop                            #  18    0xb28a5  1      OPC=nop             
                                                                              
.size _ZNKSt7collateIwE4hashEPKwS2_, .-_ZNKSt7collateIwE4hashEPKwS2_

