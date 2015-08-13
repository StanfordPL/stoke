  .text
  .globl _ZNSoD0Ev
  .type _ZNSoD0Ev, @function

#! file-offset 0xdd520
#! rip-offset  0x9d520
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSoD0Ev:                        #        0x9d520  0      OPC=<label>         
  pushq %rbx                       #  1     0x9d520  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x9d521  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  3     0x9d523  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                  #  4     0x9d526  2      OPC=movl_r32_r32    
  movl $0x1003b8ec, (%r15,%rbx,1)  #  5     0x9d528  8      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  6     0x9d530  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  7     0x9d532  8      OPC=movl_m32_imm32  
  nop                              #  8     0x9d53a  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev        #  9     0x9d53b  5      OPC=callq_label     
  movl %ebx, %edi                  #  10    0x9d540  2      OPC=movl_r32_r32    
  popq %rbx                        #  11    0x9d542  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  12    0x9d543  5      OPC=jmpq_label_1    
  nop                              #  13    0x9d548  1      OPC=nop             
  nop                              #  14    0x9d549  1      OPC=nop             
  nop                              #  15    0x9d54a  1      OPC=nop             
  nop                              #  16    0x9d54b  1      OPC=nop             
  nop                              #  17    0x9d54c  1      OPC=nop             
  nop                              #  18    0x9d54d  1      OPC=nop             
  nop                              #  19    0x9d54e  1      OPC=nop             
  nop                              #  20    0x9d54f  1      OPC=nop             
  nop                              #  21    0x9d550  1      OPC=nop             
  nop                              #  22    0x9d551  1      OPC=nop             
  nop                              #  23    0x9d552  1      OPC=nop             
  nop                              #  24    0x9d553  1      OPC=nop             
  nop                              #  25    0x9d554  1      OPC=nop             
  nop                              #  26    0x9d555  1      OPC=nop             
  nop                              #  27    0x9d556  1      OPC=nop             
  nop                              #  28    0x9d557  1      OPC=nop             
  nop                              #  29    0x9d558  1      OPC=nop             
  nop                              #  30    0x9d559  1      OPC=nop             
  nop                              #  31    0x9d55a  1      OPC=nop             
  nop                              #  32    0x9d55b  1      OPC=nop             
  nop                              #  33    0x9d55c  1      OPC=nop             
  nop                              #  34    0x9d55d  1      OPC=nop             
  nop                              #  35    0x9d55e  1      OPC=nop             
  nop                              #  36    0x9d55f  1      OPC=nop             
                                                                                
.size _ZNSoD0Ev, .-_ZNSoD0Ev

