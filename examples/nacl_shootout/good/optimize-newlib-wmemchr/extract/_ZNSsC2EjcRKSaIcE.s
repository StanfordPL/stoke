  .text
  .globl _ZNSsC2EjcRKSaIcE
  .type _ZNSsC2EjcRKSaIcE, @function

#! file-offset 0xedf20
#! rip-offset  0xadf20
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC2EjcRKSaIcE:                     #        0xadf20  0      OPC=<label>         
  pushq %rbx                            #  1     0xadf20  1      OPC=pushq_r64_1     
  movl %ecx, %ecx                       #  2     0xadf21  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadf23  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xadf25  2      OPC=movl_r32_r32    
  movl %esi, %edi                       #  5     0xadf27  2      OPC=movl_r32_r32    
  movsbl %dl, %esi                      #  6     0xadf29  3      OPC=movsbl_r32_r8   
  movl %ecx, %edx                       #  7     0xadf2c  2      OPC=movl_r32_r32    
  nop                                   #  8     0xadf2e  1      OPC=nop             
  nop                                   #  9     0xadf2f  1      OPC=nop             
  nop                                   #  10    0xadf30  1      OPC=nop             
  nop                                   #  11    0xadf31  1      OPC=nop             
  nop                                   #  12    0xadf32  1      OPC=nop             
  nop                                   #  13    0xadf33  1      OPC=nop             
  nop                                   #  14    0xadf34  1      OPC=nop             
  nop                                   #  15    0xadf35  1      OPC=nop             
  nop                                   #  16    0xadf36  1      OPC=nop             
  nop                                   #  17    0xadf37  1      OPC=nop             
  nop                                   #  18    0xadf38  1      OPC=nop             
  nop                                   #  19    0xadf39  1      OPC=nop             
  nop                                   #  20    0xadf3a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  21    0xadf3b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  22    0xadf40  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  23    0xadf42  4      OPC=movl_m32_r32    
  popq %rbx                             #  24    0xadf46  1      OPC=popq_r64_1      
  popq %r11                             #  25    0xadf47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xadf49  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xadf50  1      OPC=nop             
  nop                                   #  28    0xadf51  1      OPC=nop             
  nop                                   #  29    0xadf52  1      OPC=nop             
  nop                                   #  30    0xadf53  1      OPC=nop             
  addq %r15, %r11                       #  31    0xadf54  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xadf57  3      OPC=jmpq_r64        
  nop                                   #  33    0xadf5a  1      OPC=nop             
  nop                                   #  34    0xadf5b  1      OPC=nop             
  nop                                   #  35    0xadf5c  1      OPC=nop             
  nop                                   #  36    0xadf5d  1      OPC=nop             
  nop                                   #  37    0xadf5e  1      OPC=nop             
  nop                                   #  38    0xadf5f  1      OPC=nop             
  nop                                   #  39    0xadf60  1      OPC=nop             
  nop                                   #  40    0xadf61  1      OPC=nop             
  nop                                   #  41    0xadf62  1      OPC=nop             
  nop                                   #  42    0xadf63  1      OPC=nop             
  nop                                   #  43    0xadf64  1      OPC=nop             
  nop                                   #  44    0xadf65  1      OPC=nop             
  nop                                   #  45    0xadf66  1      OPC=nop             
                                                                                     
.size _ZNSsC2EjcRKSaIcE, .-_ZNSsC2EjcRKSaIcE

