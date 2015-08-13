  .text
  .globl _ZNSt14overflow_errorD0Ev
  .type _ZNSt14overflow_errorD0Ev, @function

#! file-offset 0x1268e0
#! rip-offset  0xe68e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorD0Ev:        #        0xe68e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe68e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe68e1  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe68e3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe68e5  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rbx,1)  #  5     0xe68e7  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe68ef  1      OPC=nop             
  nop                              #  7     0xe68f0  1      OPC=nop             
  nop                              #  8     0xe68f1  1      OPC=nop             
  nop                              #  9     0xe68f2  1      OPC=nop             
  nop                              #  10    0xe68f3  1      OPC=nop             
  nop                              #  11    0xe68f4  1      OPC=nop             
  nop                              #  12    0xe68f5  1      OPC=nop             
  nop                              #  13    0xe68f6  1      OPC=nop             
  nop                              #  14    0xe68f7  1      OPC=nop             
  nop                              #  15    0xe68f8  1      OPC=nop             
  nop                              #  16    0xe68f9  1      OPC=nop             
  nop                              #  17    0xe68fa  1      OPC=nop             
  callq ._ZNSt13runtime_errorD2Ev  #  18    0xe68fb  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe6900  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe6902  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe6903  5      OPC=jmpq_label_1    
  nop                              #  22    0xe6908  1      OPC=nop             
  nop                              #  23    0xe6909  1      OPC=nop             
  nop                              #  24    0xe690a  1      OPC=nop             
  nop                              #  25    0xe690b  1      OPC=nop             
  nop                              #  26    0xe690c  1      OPC=nop             
  nop                              #  27    0xe690d  1      OPC=nop             
  nop                              #  28    0xe690e  1      OPC=nop             
  nop                              #  29    0xe690f  1      OPC=nop             
  nop                              #  30    0xe6910  1      OPC=nop             
  nop                              #  31    0xe6911  1      OPC=nop             
  nop                              #  32    0xe6912  1      OPC=nop             
  nop                              #  33    0xe6913  1      OPC=nop             
  nop                              #  34    0xe6914  1      OPC=nop             
  nop                              #  35    0xe6915  1      OPC=nop             
  nop                              #  36    0xe6916  1      OPC=nop             
  nop                              #  37    0xe6917  1      OPC=nop             
  nop                              #  38    0xe6918  1      OPC=nop             
  nop                              #  39    0xe6919  1      OPC=nop             
  nop                              #  40    0xe691a  1      OPC=nop             
  nop                              #  41    0xe691b  1      OPC=nop             
  nop                              #  42    0xe691c  1      OPC=nop             
  nop                              #  43    0xe691d  1      OPC=nop             
  nop                              #  44    0xe691e  1      OPC=nop             
  nop                              #  45    0xe691f  1      OPC=nop             
                                                                                
.size _ZNSt14overflow_errorD0Ev, .-_ZNSt14overflow_errorD0Ev

