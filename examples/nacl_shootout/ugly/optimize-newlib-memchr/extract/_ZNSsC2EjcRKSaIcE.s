  .text
  .globl _ZNSsC2EjcRKSaIcE
  .type _ZNSsC2EjcRKSaIcE, @function

#! file-offset 0xee640
#! rip-offset  0xae640
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC2EjcRKSaIcE:                     #        0xae640  0      OPC=<label>         
  pushq %rbx                            #  1     0xae640  1      OPC=pushq_r64_1     
  movl %ecx, %ecx                       #  2     0xae641  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xae643  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xae645  2      OPC=movl_r32_r32    
  movl %esi, %edi                       #  5     0xae647  2      OPC=movl_r32_r32    
  movsbl %dl, %esi                      #  6     0xae649  3      OPC=movsbl_r32_r8   
  movl %ecx, %edx                       #  7     0xae64c  2      OPC=movl_r32_r32    
  nop                                   #  8     0xae64e  1      OPC=nop             
  nop                                   #  9     0xae64f  1      OPC=nop             
  nop                                   #  10    0xae650  1      OPC=nop             
  nop                                   #  11    0xae651  1      OPC=nop             
  nop                                   #  12    0xae652  1      OPC=nop             
  nop                                   #  13    0xae653  1      OPC=nop             
  nop                                   #  14    0xae654  1      OPC=nop             
  nop                                   #  15    0xae655  1      OPC=nop             
  nop                                   #  16    0xae656  1      OPC=nop             
  nop                                   #  17    0xae657  1      OPC=nop             
  nop                                   #  18    0xae658  1      OPC=nop             
  nop                                   #  19    0xae659  1      OPC=nop             
  nop                                   #  20    0xae65a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  21    0xae65b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  22    0xae660  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  23    0xae662  4      OPC=movl_m32_r32    
  popq %rbx                             #  24    0xae666  1      OPC=popq_r64_1      
  popq %r11                             #  25    0xae667  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xae669  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xae670  1      OPC=nop             
  nop                                   #  28    0xae671  1      OPC=nop             
  nop                                   #  29    0xae672  1      OPC=nop             
  nop                                   #  30    0xae673  1      OPC=nop             
  addq %r15, %r11                       #  31    0xae674  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xae677  3      OPC=jmpq_r64        
  nop                                   #  33    0xae67a  1      OPC=nop             
  nop                                   #  34    0xae67b  1      OPC=nop             
  nop                                   #  35    0xae67c  1      OPC=nop             
  nop                                   #  36    0xae67d  1      OPC=nop             
  nop                                   #  37    0xae67e  1      OPC=nop             
  nop                                   #  38    0xae67f  1      OPC=nop             
  nop                                   #  39    0xae680  1      OPC=nop             
  nop                                   #  40    0xae681  1      OPC=nop             
  nop                                   #  41    0xae682  1      OPC=nop             
  nop                                   #  42    0xae683  1      OPC=nop             
  nop                                   #  43    0xae684  1      OPC=nop             
  nop                                   #  44    0xae685  1      OPC=nop             
  nop                                   #  45    0xae686  1      OPC=nop             
                                                                                     
.size _ZNSsC2EjcRKSaIcE, .-_ZNSsC2EjcRKSaIcE

