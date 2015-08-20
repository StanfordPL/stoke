  .text
  .globl _ZNSoD0Ev
  .type _ZNSoD0Ev, @function

#! file-offset 0xdd820
#! rip-offset  0x9d820
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSoD0Ev:                        #        0x9d820  0      OPC=<label>         
  pushq %rbx                       #  1     0x9d820  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x9d821  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  3     0x9d823  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                  #  4     0x9d826  2      OPC=movl_r32_r32    
  movl $0x1003b8ec, (%r15,%rbx,1)  #  5     0x9d828  8      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  6     0x9d830  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  7     0x9d832  8      OPC=movl_m32_imm32  
  nop                              #  8     0x9d83a  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev        #  9     0x9d83b  5      OPC=callq_label     
  movl %ebx, %edi                  #  10    0x9d840  2      OPC=movl_r32_r32    
  popq %rbx                        #  11    0x9d842  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  12    0x9d843  5      OPC=jmpq_label_1    
  nop                              #  13    0x9d848  1      OPC=nop             
  nop                              #  14    0x9d849  1      OPC=nop             
  nop                              #  15    0x9d84a  1      OPC=nop             
  nop                              #  16    0x9d84b  1      OPC=nop             
  nop                              #  17    0x9d84c  1      OPC=nop             
  nop                              #  18    0x9d84d  1      OPC=nop             
  nop                              #  19    0x9d84e  1      OPC=nop             
  nop                              #  20    0x9d84f  1      OPC=nop             
  nop                              #  21    0x9d850  1      OPC=nop             
  nop                              #  22    0x9d851  1      OPC=nop             
  nop                              #  23    0x9d852  1      OPC=nop             
  nop                              #  24    0x9d853  1      OPC=nop             
  nop                              #  25    0x9d854  1      OPC=nop             
  nop                              #  26    0x9d855  1      OPC=nop             
  nop                              #  27    0x9d856  1      OPC=nop             
  nop                              #  28    0x9d857  1      OPC=nop             
  nop                              #  29    0x9d858  1      OPC=nop             
  nop                              #  30    0x9d859  1      OPC=nop             
  nop                              #  31    0x9d85a  1      OPC=nop             
  nop                              #  32    0x9d85b  1      OPC=nop             
  nop                              #  33    0x9d85c  1      OPC=nop             
  nop                              #  34    0x9d85d  1      OPC=nop             
  nop                              #  35    0x9d85e  1      OPC=nop             
  nop                              #  36    0x9d85f  1      OPC=nop             
                                                                                
.size _ZNSoD0Ev, .-_ZNSoD0Ev

