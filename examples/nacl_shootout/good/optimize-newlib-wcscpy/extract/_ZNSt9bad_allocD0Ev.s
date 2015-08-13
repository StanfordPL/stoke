  .text
  .globl _ZNSt9bad_allocD0Ev
  .type _ZNSt9bad_allocD0Ev, @function

#! file-offset 0x120660
#! rip-offset  0xe0660
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD0Ev:              #        0xe0660  0      OPC=<label>         
  pushq %rbx                       #  1     0xe0660  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe0661  2      OPC=movl_r32_r32    
  movl %ebx, %edi                  #  3     0xe0663  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  4     0xe0665  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rbx,1)  #  5     0xe0667  8      OPC=movl_m32_imm32  
  nop                              #  6     0xe066f  1      OPC=nop             
  nop                              #  7     0xe0670  1      OPC=nop             
  nop                              #  8     0xe0671  1      OPC=nop             
  nop                              #  9     0xe0672  1      OPC=nop             
  nop                              #  10    0xe0673  1      OPC=nop             
  nop                              #  11    0xe0674  1      OPC=nop             
  nop                              #  12    0xe0675  1      OPC=nop             
  nop                              #  13    0xe0676  1      OPC=nop             
  nop                              #  14    0xe0677  1      OPC=nop             
  nop                              #  15    0xe0678  1      OPC=nop             
  nop                              #  16    0xe0679  1      OPC=nop             
  nop                              #  17    0xe067a  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  18    0xe067b  5      OPC=callq_label     
  movl %ebx, %edi                  #  19    0xe0680  2      OPC=movl_r32_r32    
  popq %rbx                        #  20    0xe0682  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                     #  21    0xe0683  5      OPC=jmpq_label_1    
  nop                              #  22    0xe0688  1      OPC=nop             
  nop                              #  23    0xe0689  1      OPC=nop             
  nop                              #  24    0xe068a  1      OPC=nop             
  nop                              #  25    0xe068b  1      OPC=nop             
  nop                              #  26    0xe068c  1      OPC=nop             
  nop                              #  27    0xe068d  1      OPC=nop             
  nop                              #  28    0xe068e  1      OPC=nop             
  nop                              #  29    0xe068f  1      OPC=nop             
  nop                              #  30    0xe0690  1      OPC=nop             
  nop                              #  31    0xe0691  1      OPC=nop             
  nop                              #  32    0xe0692  1      OPC=nop             
  nop                              #  33    0xe0693  1      OPC=nop             
  nop                              #  34    0xe0694  1      OPC=nop             
  nop                              #  35    0xe0695  1      OPC=nop             
  nop                              #  36    0xe0696  1      OPC=nop             
  nop                              #  37    0xe0697  1      OPC=nop             
  nop                              #  38    0xe0698  1      OPC=nop             
  nop                              #  39    0xe0699  1      OPC=nop             
  nop                              #  40    0xe069a  1      OPC=nop             
  nop                              #  41    0xe069b  1      OPC=nop             
  nop                              #  42    0xe069c  1      OPC=nop             
  nop                              #  43    0xe069d  1      OPC=nop             
  nop                              #  44    0xe069e  1      OPC=nop             
  nop                              #  45    0xe069f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD0Ev, .-_ZNSt9bad_allocD0Ev

