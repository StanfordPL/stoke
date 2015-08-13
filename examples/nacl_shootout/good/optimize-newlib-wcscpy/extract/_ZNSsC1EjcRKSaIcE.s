  .text
  .globl _ZNSsC1EjcRKSaIcE
  .type _ZNSsC1EjcRKSaIcE, @function

#! file-offset 0xedbe0
#! rip-offset  0xadbe0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC1EjcRKSaIcE:                     #        0xadbe0  0      OPC=<label>         
  pushq %rbx                            #  1     0xadbe0  1      OPC=pushq_r64_1     
  movl %ecx, %ecx                       #  2     0xadbe1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadbe3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xadbe5  2      OPC=movl_r32_r32    
  movl %esi, %edi                       #  5     0xadbe7  2      OPC=movl_r32_r32    
  movsbl %dl, %esi                      #  6     0xadbe9  3      OPC=movsbl_r32_r8   
  movl %ecx, %edx                       #  7     0xadbec  2      OPC=movl_r32_r32    
  nop                                   #  8     0xadbee  1      OPC=nop             
  nop                                   #  9     0xadbef  1      OPC=nop             
  nop                                   #  10    0xadbf0  1      OPC=nop             
  nop                                   #  11    0xadbf1  1      OPC=nop             
  nop                                   #  12    0xadbf2  1      OPC=nop             
  nop                                   #  13    0xadbf3  1      OPC=nop             
  nop                                   #  14    0xadbf4  1      OPC=nop             
  nop                                   #  15    0xadbf5  1      OPC=nop             
  nop                                   #  16    0xadbf6  1      OPC=nop             
  nop                                   #  17    0xadbf7  1      OPC=nop             
  nop                                   #  18    0xadbf8  1      OPC=nop             
  nop                                   #  19    0xadbf9  1      OPC=nop             
  nop                                   #  20    0xadbfa  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  21    0xadbfb  5      OPC=callq_label     
  movl %ebx, %ebx                       #  22    0xadc00  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  23    0xadc02  4      OPC=movl_m32_r32    
  popq %rbx                             #  24    0xadc06  1      OPC=popq_r64_1      
  popq %r11                             #  25    0xadc07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xadc09  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xadc10  1      OPC=nop             
  nop                                   #  28    0xadc11  1      OPC=nop             
  nop                                   #  29    0xadc12  1      OPC=nop             
  nop                                   #  30    0xadc13  1      OPC=nop             
  addq %r15, %r11                       #  31    0xadc14  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xadc17  3      OPC=jmpq_r64        
  nop                                   #  33    0xadc1a  1      OPC=nop             
  nop                                   #  34    0xadc1b  1      OPC=nop             
  nop                                   #  35    0xadc1c  1      OPC=nop             
  nop                                   #  36    0xadc1d  1      OPC=nop             
  nop                                   #  37    0xadc1e  1      OPC=nop             
  nop                                   #  38    0xadc1f  1      OPC=nop             
  nop                                   #  39    0xadc20  1      OPC=nop             
  nop                                   #  40    0xadc21  1      OPC=nop             
  nop                                   #  41    0xadc22  1      OPC=nop             
  nop                                   #  42    0xadc23  1      OPC=nop             
  nop                                   #  43    0xadc24  1      OPC=nop             
  nop                                   #  44    0xadc25  1      OPC=nop             
  nop                                   #  45    0xadc26  1      OPC=nop             
                                                                                     
.size _ZNSsC1EjcRKSaIcE, .-_ZNSsC1EjcRKSaIcE

