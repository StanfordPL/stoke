  .text
  .globl _ZNSoD0Ev
  .type _ZNSoD0Ev, @function

#! file-offset 0xddf40
#! rip-offset  0x9df40
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSoD0Ev:                        #        0x9df40  0      OPC=<label>         
  pushq %rbx                       #  1     0x9df40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x9df41  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  3     0x9df43  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                  #  4     0x9df46  2      OPC=movl_r32_r32    
  movl $0x1003b8ec, (%r15,%rbx,1)  #  5     0x9df48  8      OPC=movl_m32_imm32  
  movl %edi, %edi                  #  6     0x9df50  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)  #  7     0x9df52  8      OPC=movl_m32_imm32  
  nop                              #  8     0x9df5a  1      OPC=nop             
  callq ._ZNSt8ios_baseD2Ev        #  9     0x9df5b  5      OPC=callq_label     
  movl %ebx, %edi                  #  10    0x9df60  2      OPC=movl_r32_r32    
  popq %rbx                        #  11    0x9df62  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  12    0x9df63  5      OPC=jmpq_label_1    
  nop                              #  13    0x9df68  1      OPC=nop             
  nop                              #  14    0x9df69  1      OPC=nop             
  nop                              #  15    0x9df6a  1      OPC=nop             
  nop                              #  16    0x9df6b  1      OPC=nop             
  nop                              #  17    0x9df6c  1      OPC=nop             
  nop                              #  18    0x9df6d  1      OPC=nop             
  nop                              #  19    0x9df6e  1      OPC=nop             
  nop                              #  20    0x9df6f  1      OPC=nop             
  nop                              #  21    0x9df70  1      OPC=nop             
  nop                              #  22    0x9df71  1      OPC=nop             
  nop                              #  23    0x9df72  1      OPC=nop             
  nop                              #  24    0x9df73  1      OPC=nop             
  nop                              #  25    0x9df74  1      OPC=nop             
  nop                              #  26    0x9df75  1      OPC=nop             
  nop                              #  27    0x9df76  1      OPC=nop             
  nop                              #  28    0x9df77  1      OPC=nop             
  nop                              #  29    0x9df78  1      OPC=nop             
  nop                              #  30    0x9df79  1      OPC=nop             
  nop                              #  31    0x9df7a  1      OPC=nop             
  nop                              #  32    0x9df7b  1      OPC=nop             
  nop                              #  33    0x9df7c  1      OPC=nop             
  nop                              #  34    0x9df7d  1      OPC=nop             
  nop                              #  35    0x9df7e  1      OPC=nop             
  nop                              #  36    0x9df7f  1      OPC=nop             
                                                                                
.size _ZNSoD0Ev, .-_ZNSoD0Ev

