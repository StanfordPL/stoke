  .text
  .globl _ZNSt9bad_allocD0Ev
  .type _ZNSt9bad_allocD0Ev, @function

#! file-offset 0x121080
#! rip-offset  0xe1080
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD0Ev:              #        0xe1080  0      OPC=<label>         
  pushq %rbx                       #  1     0xe1080  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe1081  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe1083  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe1085  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rbx,1)  #  5     0xe1087  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe108f  1      OPC=nop             
  nop                              #  7     0xe1090  1      OPC=nop             
  nop                              #  8     0xe1091  1      OPC=nop             
  nop                              #  9     0xe1092  1      OPC=nop             
  nop                              #  10    0xe1093  1      OPC=nop             
  nop                              #  11    0xe1094  1      OPC=nop             
  nop                              #  12    0xe1095  1      OPC=nop             
  nop                              #  13    0xe1096  1      OPC=nop             
  nop                              #  14    0xe1097  1      OPC=nop             
  nop                              #  15    0xe1098  1      OPC=nop             
  nop                              #  16    0xe1099  1      OPC=nop             
  nop                              #  17    0xe109a  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  18    0xe109b  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe10a0  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe10a2  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe10a3  5      OPC=jmpq_label_1    
  nop                              #  22    0xe10a8  1      OPC=nop             
  nop                              #  23    0xe10a9  1      OPC=nop             
  nop                              #  24    0xe10aa  1      OPC=nop             
  nop                              #  25    0xe10ab  1      OPC=nop             
  nop                              #  26    0xe10ac  1      OPC=nop             
  nop                              #  27    0xe10ad  1      OPC=nop             
  nop                              #  28    0xe10ae  1      OPC=nop             
  nop                              #  29    0xe10af  1      OPC=nop             
  nop                              #  30    0xe10b0  1      OPC=nop             
  nop                              #  31    0xe10b1  1      OPC=nop             
  nop                              #  32    0xe10b2  1      OPC=nop             
  nop                              #  33    0xe10b3  1      OPC=nop             
  nop                              #  34    0xe10b4  1      OPC=nop             
  nop                              #  35    0xe10b5  1      OPC=nop             
  nop                              #  36    0xe10b6  1      OPC=nop             
  nop                              #  37    0xe10b7  1      OPC=nop             
  nop                              #  38    0xe10b8  1      OPC=nop             
  nop                              #  39    0xe10b9  1      OPC=nop             
  nop                              #  40    0xe10ba  1      OPC=nop             
  nop                              #  41    0xe10bb  1      OPC=nop             
  nop                              #  42    0xe10bc  1      OPC=nop             
  nop                              #  43    0xe10bd  1      OPC=nop             
  nop                              #  44    0xe10be  1      OPC=nop             
  nop                              #  45    0xe10bf  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD0Ev, .-_ZNSt9bad_allocD0Ev

