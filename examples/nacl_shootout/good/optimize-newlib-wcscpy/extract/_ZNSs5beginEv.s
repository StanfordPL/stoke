  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0xeec40
#! rip-offset  0xaec40
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs5beginEv:                 #        0xaec40  0      OPC=<label>         
  pushq %rbx                    #  1     0xaec40  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0xaec41  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  3     0xaec43  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  4     0xaec45  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  5     0xaec49  3      OPC=leal_r32_m16    
  movl %edx, %edx               #  6     0xaec4c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edx   #  7     0xaec4e  5      OPC=movl_r32_m32    
  testl %edx, %edx              #  8     0xaec53  2      OPC=testl_r32_r32   
  js .L_aec80                   #  9     0xaec55  2      OPC=js_label        
  movl %ebx, %edi               #  10    0xaec57  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  11    0xaec59  2      OPC=xchgw_ax_r16    
  callq ._ZNSs12_M_leak_hardEv  #  12    0xaec5b  5      OPC=callq_label     
  movl %ebx, %ebx               #  13    0xaec60  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  14    0xaec62  4      OPC=movl_r32_m32    
  nop                           #  15    0xaec66  1      OPC=nop             
  nop                           #  16    0xaec67  1      OPC=nop             
  nop                           #  17    0xaec68  1      OPC=nop             
  nop                           #  18    0xaec69  1      OPC=nop             
  nop                           #  19    0xaec6a  1      OPC=nop             
  nop                           #  20    0xaec6b  1      OPC=nop             
  nop                           #  21    0xaec6c  1      OPC=nop             
  nop                           #  22    0xaec6d  1      OPC=nop             
  nop                           #  23    0xaec6e  1      OPC=nop             
  nop                           #  24    0xaec6f  1      OPC=nop             
  nop                           #  25    0xaec70  1      OPC=nop             
  nop                           #  26    0xaec71  1      OPC=nop             
  nop                           #  27    0xaec72  1      OPC=nop             
  nop                           #  28    0xaec73  1      OPC=nop             
  nop                           #  29    0xaec74  1      OPC=nop             
  nop                           #  30    0xaec75  1      OPC=nop             
  nop                           #  31    0xaec76  1      OPC=nop             
  nop                           #  32    0xaec77  1      OPC=nop             
  nop                           #  33    0xaec78  1      OPC=nop             
  nop                           #  34    0xaec79  1      OPC=nop             
  nop                           #  35    0xaec7a  1      OPC=nop             
  nop                           #  36    0xaec7b  1      OPC=nop             
  nop                           #  37    0xaec7c  1      OPC=nop             
  nop                           #  38    0xaec7d  1      OPC=nop             
  nop                           #  39    0xaec7e  1      OPC=nop             
  nop                           #  40    0xaec7f  1      OPC=nop             
.L_aec80:                       #        0xaec80  0      OPC=<label>         
  popq %rbx                     #  41    0xaec80  1      OPC=popq_r64_1      
  popq %r11                     #  42    0xaec81  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  43    0xaec83  7      OPC=andl_r32_imm32  
  nop                           #  44    0xaec8a  1      OPC=nop             
  nop                           #  45    0xaec8b  1      OPC=nop             
  nop                           #  46    0xaec8c  1      OPC=nop             
  nop                           #  47    0xaec8d  1      OPC=nop             
  addq %r15, %r11               #  48    0xaec8e  3      OPC=addq_r64_r64    
  jmpq %r11                     #  49    0xaec91  3      OPC=jmpq_r64        
  nop                           #  50    0xaec94  1      OPC=nop             
  nop                           #  51    0xaec95  1      OPC=nop             
  nop                           #  52    0xaec96  1      OPC=nop             
  nop                           #  53    0xaec97  1      OPC=nop             
  nop                           #  54    0xaec98  1      OPC=nop             
  nop                           #  55    0xaec99  1      OPC=nop             
  nop                           #  56    0xaec9a  1      OPC=nop             
  nop                           #  57    0xaec9b  1      OPC=nop             
  nop                           #  58    0xaec9c  1      OPC=nop             
  nop                           #  59    0xaec9d  1      OPC=nop             
  nop                           #  60    0xaec9e  1      OPC=nop             
  nop                           #  61    0xaec9f  1      OPC=nop             
  nop                           #  62    0xaeca0  1      OPC=nop             
  nop                           #  63    0xaeca1  1      OPC=nop             
  nop                           #  64    0xaeca2  1      OPC=nop             
  nop                           #  65    0xaeca3  1      OPC=nop             
  nop                           #  66    0xaeca4  1      OPC=nop             
  nop                           #  67    0xaeca5  1      OPC=nop             
  nop                           #  68    0xaeca6  1      OPC=nop             
                                                                             
.size _ZNSs5beginEv, .-_ZNSs5beginEv

