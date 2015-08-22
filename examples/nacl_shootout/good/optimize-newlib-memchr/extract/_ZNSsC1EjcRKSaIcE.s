  .text
  .globl _ZNSsC1EjcRKSaIcE
  .type _ZNSsC1EjcRKSaIcE, @function

#! file-offset 0xee600
#! rip-offset  0xae600
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC1EjcRKSaIcE:                     #        0xae600  0      OPC=<label>         
  pushq %rbx                            #  1     0xae600  1      OPC=pushq_r64_1     
  movl %ecx, %ecx                       #  2     0xae601  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xae603  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xae605  2      OPC=movl_r32_r32    
  movl %esi, %edi                       #  5     0xae607  2      OPC=movl_r32_r32    
  movsbl %dl, %esi                      #  6     0xae609  3      OPC=movsbl_r32_r8   
  movl %ecx, %edx                       #  7     0xae60c  2      OPC=movl_r32_r32    
  nop                                   #  8     0xae60e  1      OPC=nop             
  nop                                   #  9     0xae60f  1      OPC=nop             
  nop                                   #  10    0xae610  1      OPC=nop             
  nop                                   #  11    0xae611  1      OPC=nop             
  nop                                   #  12    0xae612  1      OPC=nop             
  nop                                   #  13    0xae613  1      OPC=nop             
  nop                                   #  14    0xae614  1      OPC=nop             
  nop                                   #  15    0xae615  1      OPC=nop             
  nop                                   #  16    0xae616  1      OPC=nop             
  nop                                   #  17    0xae617  1      OPC=nop             
  nop                                   #  18    0xae618  1      OPC=nop             
  nop                                   #  19    0xae619  1      OPC=nop             
  nop                                   #  20    0xae61a  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  21    0xae61b  5      OPC=callq_label     
  movl %ebx, %ebx                       #  22    0xae620  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  23    0xae622  4      OPC=movl_m32_r32    
  popq %rbx                             #  24    0xae626  1      OPC=popq_r64_1      
  popq %r11                             #  25    0xae627  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xae629  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xae630  1      OPC=nop             
  nop                                   #  28    0xae631  1      OPC=nop             
  nop                                   #  29    0xae632  1      OPC=nop             
  nop                                   #  30    0xae633  1      OPC=nop             
  addq %r15, %r11                       #  31    0xae634  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xae637  3      OPC=jmpq_r64        
  nop                                   #  33    0xae63a  1      OPC=nop             
  nop                                   #  34    0xae63b  1      OPC=nop             
  nop                                   #  35    0xae63c  1      OPC=nop             
  nop                                   #  36    0xae63d  1      OPC=nop             
  nop                                   #  37    0xae63e  1      OPC=nop             
  nop                                   #  38    0xae63f  1      OPC=nop             
  nop                                   #  39    0xae640  1      OPC=nop             
  nop                                   #  40    0xae641  1      OPC=nop             
  nop                                   #  41    0xae642  1      OPC=nop             
  nop                                   #  42    0xae643  1      OPC=nop             
  nop                                   #  43    0xae644  1      OPC=nop             
  nop                                   #  44    0xae645  1      OPC=nop             
  nop                                   #  45    0xae646  1      OPC=nop             
                                                                                     
.size _ZNSsC1EjcRKSaIcE, .-_ZNSsC1EjcRKSaIcE

