  .text
  .globl _ZNSsC2EjcRKSaIcE
  .type _ZNSsC2EjcRKSaIcE, @function

#! file-offset 0xedc20
#! rip-offset  0xadc20
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC2EjcRKSaIcE:                     #        0xadc20  0      OPC=<label>         
  pushq %rbx                            #  1     0xadc20  1      OPC=pushq_r64_1     
  movl %ecx, %ecx                       #  2     0xadc21  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadc23  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xadc25  2      OPC=movl_r32_r32    
  movl %esi, %edi                       #  5     0xadc27  2      OPC=movl_r32_r32    
  movsbl %dl, %esi                      #  6     0xadc29  3      OPC=movsbl_r32_r8   
  movl %ecx, %edx                       #  7     0xadc2c  2      OPC=movl_r32_r32    
  nop                                   #  8     0xadc2e  1      OPC=nop             
  nop                                   #  9     0xadc2f  1      OPC=nop             
  nop                                   #  10    0xadc30  1      OPC=nop             
  nop                                   #  11    0xadc31  1      OPC=nop             
  nop                                   #  12    0xadc32  1      OPC=nop             
  nop                                   #  13    0xadc33  1      OPC=nop             
  nop                                   #  14    0xadc34  1      OPC=nop             
  nop                                   #  15    0xadc35  1      OPC=nop             
  nop                                   #  16    0xadc36  1      OPC=nop             
  nop                                   #  17    0xadc37  1      OPC=nop             
  nop                                   #  18    0xadc38  1      OPC=nop             
  nop                                   #  19    0xadc39  1      OPC=nop             
  nop                                   #  20    0xadc3a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  21    0xadc3b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  22    0xadc40  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  23    0xadc42  4      OPC=movl_m32_r32    
  popq %rbx                             #  24    0xadc46  1      OPC=popq_r64_1      
  popq %r11                             #  25    0xadc47  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xadc49  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xadc50  1      OPC=nop             
  nop                                   #  28    0xadc51  1      OPC=nop             
  nop                                   #  29    0xadc52  1      OPC=nop             
  nop                                   #  30    0xadc53  1      OPC=nop             
  addq %r15, %r11                       #  31    0xadc54  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xadc57  3      OPC=jmpq_r64        
  nop                                   #  33    0xadc5a  1      OPC=nop             
  nop                                   #  34    0xadc5b  1      OPC=nop             
  nop                                   #  35    0xadc5c  1      OPC=nop             
  nop                                   #  36    0xadc5d  1      OPC=nop             
  nop                                   #  37    0xadc5e  1      OPC=nop             
  nop                                   #  38    0xadc5f  1      OPC=nop             
  nop                                   #  39    0xadc60  1      OPC=nop             
  nop                                   #  40    0xadc61  1      OPC=nop             
  nop                                   #  41    0xadc62  1      OPC=nop             
  nop                                   #  42    0xadc63  1      OPC=nop             
  nop                                   #  43    0xadc64  1      OPC=nop             
  nop                                   #  44    0xadc65  1      OPC=nop             
  nop                                   #  45    0xadc66  1      OPC=nop             
                                                                                     
.size _ZNSsC2EjcRKSaIcE, .-_ZNSsC2EjcRKSaIcE

