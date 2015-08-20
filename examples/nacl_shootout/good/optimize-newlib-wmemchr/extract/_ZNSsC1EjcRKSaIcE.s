  .text
  .globl _ZNSsC1EjcRKSaIcE
  .type _ZNSsC1EjcRKSaIcE, @function

#! file-offset 0xedee0
#! rip-offset  0xadee0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSsC1EjcRKSaIcE:                     #        0xadee0  0      OPC=<label>         
  pushq %rbx                            #  1     0xadee0  1      OPC=pushq_r64_1     
  movl %ecx, %ecx                       #  2     0xadee1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                       #  3     0xadee3  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                       #  4     0xadee5  2      OPC=movl_r32_r32    
  movl %esi, %edi                       #  5     0xadee7  2      OPC=movl_r32_r32    
  movsbl %dl, %esi                      #  6     0xadee9  3      OPC=movsbl_r32_r8   
  movl %ecx, %edx                       #  7     0xadeec  2      OPC=movl_r32_r32    
  nop                                   #  8     0xadeee  1      OPC=nop             
  nop                                   #  9     0xadeef  1      OPC=nop             
  nop                                   #  10    0xadef0  1      OPC=nop             
  nop                                   #  11    0xadef1  1      OPC=nop             
  nop                                   #  12    0xadef2  1      OPC=nop             
  nop                                   #  13    0xadef3  1      OPC=nop             
  nop                                   #  14    0xadef4  1      OPC=nop             
  nop                                   #  15    0xadef5  1      OPC=nop             
  nop                                   #  16    0xadef6  1      OPC=nop             
  nop                                   #  17    0xadef7  1      OPC=nop             
  nop                                   #  18    0xadef8  1      OPC=nop             
  nop                                   #  19    0xadef9  1      OPC=nop             
  nop                                   #  20    0xadefa  1      OPC=nop             
  callq ._ZNSs12_S_constructEjcRKSaIcE  #  21    0xadefb  5      OPC=callq_label     
  movl %ebx, %ebx                       #  22    0xadf00  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)              #  23    0xadf02  4      OPC=movl_m32_r32    
  popq %rbx                             #  24    0xadf06  1      OPC=popq_r64_1      
  popq %r11                             #  25    0xadf07  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  26    0xadf09  7      OPC=andl_r32_imm32  
  nop                                   #  27    0xadf10  1      OPC=nop             
  nop                                   #  28    0xadf11  1      OPC=nop             
  nop                                   #  29    0xadf12  1      OPC=nop             
  nop                                   #  30    0xadf13  1      OPC=nop             
  addq %r15, %r11                       #  31    0xadf14  3      OPC=addq_r64_r64    
  jmpq %r11                             #  32    0xadf17  3      OPC=jmpq_r64        
  nop                                   #  33    0xadf1a  1      OPC=nop             
  nop                                   #  34    0xadf1b  1      OPC=nop             
  nop                                   #  35    0xadf1c  1      OPC=nop             
  nop                                   #  36    0xadf1d  1      OPC=nop             
  nop                                   #  37    0xadf1e  1      OPC=nop             
  nop                                   #  38    0xadf1f  1      OPC=nop             
  nop                                   #  39    0xadf20  1      OPC=nop             
  nop                                   #  40    0xadf21  1      OPC=nop             
  nop                                   #  41    0xadf22  1      OPC=nop             
  nop                                   #  42    0xadf23  1      OPC=nop             
  nop                                   #  43    0xadf24  1      OPC=nop             
  nop                                   #  44    0xadf25  1      OPC=nop             
  nop                                   #  45    0xadf26  1      OPC=nop             
                                                                                     
.size _ZNSsC1EjcRKSaIcE, .-_ZNSsC1EjcRKSaIcE

