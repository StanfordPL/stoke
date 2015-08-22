  .text
  .globl _ZNSt14overflow_errorC2ERKSs
  .type _ZNSt14overflow_errorC2ERKSs, @function

#! file-offset 0x129ae0
#! rip-offset  0xe9ae0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorC2ERKSs:        #        0xe9ae0  0      OPC=<label>         
  pushq %rbx                          #  1     0xe9ae0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  2     0xe9ae1  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  3     0xe9ae3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                     #  4     0xe9ae5  2      OPC=movl_r32_r32    
  nop                                 #  5     0xe9ae7  1      OPC=nop             
  nop                                 #  6     0xe9ae8  1      OPC=nop             
  nop                                 #  7     0xe9ae9  1      OPC=nop             
  nop                                 #  8     0xe9aea  1      OPC=nop             
  nop                                 #  9     0xe9aeb  1      OPC=nop             
  nop                                 #  10    0xe9aec  1      OPC=nop             
  nop                                 #  11    0xe9aed  1      OPC=nop             
  nop                                 #  12    0xe9aee  1      OPC=nop             
  nop                                 #  13    0xe9aef  1      OPC=nop             
  nop                                 #  14    0xe9af0  1      OPC=nop             
  nop                                 #  15    0xe9af1  1      OPC=nop             
  nop                                 #  16    0xe9af2  1      OPC=nop             
  nop                                 #  17    0xe9af3  1      OPC=nop             
  nop                                 #  18    0xe9af4  1      OPC=nop             
  nop                                 #  19    0xe9af5  1      OPC=nop             
  nop                                 #  20    0xe9af6  1      OPC=nop             
  nop                                 #  21    0xe9af7  1      OPC=nop             
  nop                                 #  22    0xe9af8  1      OPC=nop             
  nop                                 #  23    0xe9af9  1      OPC=nop             
  nop                                 #  24    0xe9afa  1      OPC=nop             
  callq ._ZNSt13runtime_errorC2ERKSs  #  25    0xe9afb  5      OPC=callq_label     
  movl %ebx, %ebx                     #  26    0xe9b00  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)     #  27    0xe9b02  8      OPC=movl_m32_imm32  
  popq %rbx                           #  28    0xe9b0a  1      OPC=popq_r64_1      
  popq %r11                           #  29    0xe9b0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  30    0xe9b0d  7      OPC=andl_r32_imm32  
  nop                                 #  31    0xe9b14  1      OPC=nop             
  nop                                 #  32    0xe9b15  1      OPC=nop             
  nop                                 #  33    0xe9b16  1      OPC=nop             
  nop                                 #  34    0xe9b17  1      OPC=nop             
  addq %r15, %r11                     #  35    0xe9b18  3      OPC=addq_r64_r64    
  jmpq %r11                           #  36    0xe9b1b  3      OPC=jmpq_r64        
  nop                                 #  37    0xe9b1e  1      OPC=nop             
  nop                                 #  38    0xe9b1f  1      OPC=nop             
  nop                                 #  39    0xe9b20  1      OPC=nop             
  nop                                 #  40    0xe9b21  1      OPC=nop             
  nop                                 #  41    0xe9b22  1      OPC=nop             
  nop                                 #  42    0xe9b23  1      OPC=nop             
  nop                                 #  43    0xe9b24  1      OPC=nop             
  nop                                 #  44    0xe9b25  1      OPC=nop             
  nop                                 #  45    0xe9b26  1      OPC=nop             
                                                                                   
.size _ZNSt14overflow_errorC2ERKSs, .-_ZNSt14overflow_errorC2ERKSs

