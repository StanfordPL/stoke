  .text
  .globl _ZNSs3endEv
  .type _ZNSs3endEv, @function

#! file-offset 0xeeee0
#! rip-offset  0xaeee0
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs3endEv:                   #        0xaeee0  0      OPC=<label>         
  pushq %rbx                    #  1     0xaeee0  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0xaeee1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  3     0xaeee3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  4     0xaeee5  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  5     0xaeee9  3      OPC=leal_r32_m16    
  movl %edx, %edx               #  6     0xaeeec  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r11d  #  7     0xaeeee  5      OPC=movl_r32_m32    
  testl %r11d, %r11d            #  8     0xaeef3  3      OPC=testl_r32_r32   
  js .L_aef20                   #  9     0xaeef6  2      OPC=js_label        
  movl %ebx, %edi               #  10    0xaeef8  2      OPC=movl_r32_r32    
  nop                           #  11    0xaeefa  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  12    0xaeefb  5      OPC=callq_label     
  movl %ebx, %ebx               #  13    0xaef00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  14    0xaef02  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  15    0xaef06  3      OPC=leal_r32_m16    
  nop                           #  16    0xaef09  1      OPC=nop             
  nop                           #  17    0xaef0a  1      OPC=nop             
  nop                           #  18    0xaef0b  1      OPC=nop             
  nop                           #  19    0xaef0c  1      OPC=nop             
  nop                           #  20    0xaef0d  1      OPC=nop             
  nop                           #  21    0xaef0e  1      OPC=nop             
  nop                           #  22    0xaef0f  1      OPC=nop             
  nop                           #  23    0xaef10  1      OPC=nop             
  nop                           #  24    0xaef11  1      OPC=nop             
  nop                           #  25    0xaef12  1      OPC=nop             
  nop                           #  26    0xaef13  1      OPC=nop             
  nop                           #  27    0xaef14  1      OPC=nop             
  nop                           #  28    0xaef15  1      OPC=nop             
  nop                           #  29    0xaef16  1      OPC=nop             
  nop                           #  30    0xaef17  1      OPC=nop             
  nop                           #  31    0xaef18  1      OPC=nop             
  nop                           #  32    0xaef19  1      OPC=nop             
  nop                           #  33    0xaef1a  1      OPC=nop             
  nop                           #  34    0xaef1b  1      OPC=nop             
  nop                           #  35    0xaef1c  1      OPC=nop             
  nop                           #  36    0xaef1d  1      OPC=nop             
  nop                           #  37    0xaef1e  1      OPC=nop             
  nop                           #  38    0xaef1f  1      OPC=nop             
.L_aef20:                       #        0xaef20  0      OPC=<label>         
  popq %rbx                     #  39    0xaef20  1      OPC=popq_r64_1      
  popq %r11                     #  40    0xaef21  2      OPC=popq_r64_1      
  movl %edx, %edx               #  41    0xaef23  2      OPC=movl_r32_r32    
  addl (%r15,%rdx,1), %eax      #  42    0xaef25  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d       #  43    0xaef29  7      OPC=andl_r32_imm32  
  nop                           #  44    0xaef30  1      OPC=nop             
  nop                           #  45    0xaef31  1      OPC=nop             
  nop                           #  46    0xaef32  1      OPC=nop             
  nop                           #  47    0xaef33  1      OPC=nop             
  addq %r15, %r11               #  48    0xaef34  3      OPC=addq_r64_r64    
  jmpq %r11                     #  49    0xaef37  3      OPC=jmpq_r64        
  nop                           #  50    0xaef3a  1      OPC=nop             
  nop                           #  51    0xaef3b  1      OPC=nop             
  nop                           #  52    0xaef3c  1      OPC=nop             
  nop                           #  53    0xaef3d  1      OPC=nop             
  nop                           #  54    0xaef3e  1      OPC=nop             
  nop                           #  55    0xaef3f  1      OPC=nop             
  nop                           #  56    0xaef40  1      OPC=nop             
  nop                           #  57    0xaef41  1      OPC=nop             
  nop                           #  58    0xaef42  1      OPC=nop             
  nop                           #  59    0xaef43  1      OPC=nop             
  nop                           #  60    0xaef44  1      OPC=nop             
  nop                           #  61    0xaef45  1      OPC=nop             
  nop                           #  62    0xaef46  1      OPC=nop             
                                                                             
.size _ZNSs3endEv, .-_ZNSs3endEv

