  .text
  .globl _ZNKSt10moneypunctIcLb1EE13negative_signEv
  .type _ZNKSt10moneypunctIcLb1EE13negative_signEv, @function

#! file-offset 0xb6fe0
#! rip-offset  0x76fe0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13negative_signEv:  #        0x76fe0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x76fe0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x76fe2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x76fe3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x76fe5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x76fe7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x76feb  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x76fed  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0x76fef  5      OPC=movl_r32_m32    
  nop                                         #  9     0x76ff4  1      OPC=nop             
  nop                                         #  10    0x76ff5  1      OPC=nop             
  nop                                         #  11    0x76ff6  1      OPC=nop             
  nop                                         #  12    0x76ff7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x76ff8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x76ffe  1      OPC=nop             
  nop                                         #  15    0x76fff  1      OPC=nop             
  nop                                         #  16    0x77000  1      OPC=nop             
  addq %r15, %rax                             #  17    0x77001  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x77004  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x77006  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x77008  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x77009  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x7700b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x77012  1      OPC=nop             
  nop                                         #  24    0x77013  1      OPC=nop             
  nop                                         #  25    0x77014  1      OPC=nop             
  nop                                         #  26    0x77015  1      OPC=nop             
  addq %r15, %r11                             #  27    0x77016  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x77019  3      OPC=jmpq_r64        
  nop                                         #  29    0x7701c  1      OPC=nop             
  nop                                         #  30    0x7701d  1      OPC=nop             
  nop                                         #  31    0x7701e  1      OPC=nop             
  nop                                         #  32    0x7701f  1      OPC=nop             
  nop                                         #  33    0x77020  1      OPC=nop             
  nop                                         #  34    0x77021  1      OPC=nop             
  nop                                         #  35    0x77022  1      OPC=nop             
  nop                                         #  36    0x77023  1      OPC=nop             
  nop                                         #  37    0x77024  1      OPC=nop             
  nop                                         #  38    0x77025  1      OPC=nop             
  nop                                         #  39    0x77026  1      OPC=nop             
  nop                                         #  40    0x77027  1      OPC=nop             
  nop                                         #  41    0x77028  1      OPC=nop             
  nop                                         #  42    0x77029  1      OPC=nop             
  nop                                         #  43    0x7702a  1      OPC=nop             
  nop                                         #  44    0x7702b  1      OPC=nop             
  nop                                         #  45    0x7702c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13negative_signEv, .-_ZNKSt10moneypunctIcLb1EE13negative_signEv

