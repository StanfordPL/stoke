  .text
  .globl _ZNSs5beginEv
  .type _ZNSs5beginEv, @function

#! file-offset 0xeef40
#! rip-offset  0xaef40
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSs5beginEv:                 #        0xaef40  0      OPC=<label>         
  pushq %rbx                    #  1     0xaef40  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0xaef41  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  3     0xaef43  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  4     0xaef45  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx         #  5     0xaef49  3      OPC=leal_r32_m16    
  movl %edx, %edx               #  6     0xaef4c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %edx   #  7     0xaef4e  5      OPC=movl_r32_m32    
  testl %edx, %edx              #  8     0xaef53  2      OPC=testl_r32_r32   
  js .L_aef80                   #  9     0xaef55  2      OPC=js_label        
  movl %ebx, %edi               #  10    0xaef57  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                #  11    0xaef59  2      OPC=xchgw_ax_r16    
  callq ._ZNSs12_M_leak_hardEv  #  12    0xaef5b  5      OPC=callq_label     
  movl %ebx, %ebx               #  13    0xaef60  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  14    0xaef62  4      OPC=movl_r32_m32    
  nop                           #  15    0xaef66  1      OPC=nop             
  nop                           #  16    0xaef67  1      OPC=nop             
  nop                           #  17    0xaef68  1      OPC=nop             
  nop                           #  18    0xaef69  1      OPC=nop             
  nop                           #  19    0xaef6a  1      OPC=nop             
  nop                           #  20    0xaef6b  1      OPC=nop             
  nop                           #  21    0xaef6c  1      OPC=nop             
  nop                           #  22    0xaef6d  1      OPC=nop             
  nop                           #  23    0xaef6e  1      OPC=nop             
  nop                           #  24    0xaef6f  1      OPC=nop             
  nop                           #  25    0xaef70  1      OPC=nop             
  nop                           #  26    0xaef71  1      OPC=nop             
  nop                           #  27    0xaef72  1      OPC=nop             
  nop                           #  28    0xaef73  1      OPC=nop             
  nop                           #  29    0xaef74  1      OPC=nop             
  nop                           #  30    0xaef75  1      OPC=nop             
  nop                           #  31    0xaef76  1      OPC=nop             
  nop                           #  32    0xaef77  1      OPC=nop             
  nop                           #  33    0xaef78  1      OPC=nop             
  nop                           #  34    0xaef79  1      OPC=nop             
  nop                           #  35    0xaef7a  1      OPC=nop             
  nop                           #  36    0xaef7b  1      OPC=nop             
  nop                           #  37    0xaef7c  1      OPC=nop             
  nop                           #  38    0xaef7d  1      OPC=nop             
  nop                           #  39    0xaef7e  1      OPC=nop             
  nop                           #  40    0xaef7f  1      OPC=nop             
.L_aef80:                       #        0xaef80  0      OPC=<label>         
  popq %rbx                     #  41    0xaef80  1      OPC=popq_r64_1      
  popq %r11                     #  42    0xaef81  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  43    0xaef83  7      OPC=andl_r32_imm32  
  nop                           #  44    0xaef8a  1      OPC=nop             
  nop                           #  45    0xaef8b  1      OPC=nop             
  nop                           #  46    0xaef8c  1      OPC=nop             
  nop                           #  47    0xaef8d  1      OPC=nop             
  addq %r15, %r11               #  48    0xaef8e  3      OPC=addq_r64_r64    
  jmpq %r11                     #  49    0xaef91  3      OPC=jmpq_r64        
  nop                           #  50    0xaef94  1      OPC=nop             
  nop                           #  51    0xaef95  1      OPC=nop             
  nop                           #  52    0xaef96  1      OPC=nop             
  nop                           #  53    0xaef97  1      OPC=nop             
  nop                           #  54    0xaef98  1      OPC=nop             
  nop                           #  55    0xaef99  1      OPC=nop             
  nop                           #  56    0xaef9a  1      OPC=nop             
  nop                           #  57    0xaef9b  1      OPC=nop             
  nop                           #  58    0xaef9c  1      OPC=nop             
  nop                           #  59    0xaef9d  1      OPC=nop             
  nop                           #  60    0xaef9e  1      OPC=nop             
  nop                           #  61    0xaef9f  1      OPC=nop             
  nop                           #  62    0xaefa0  1      OPC=nop             
  nop                           #  63    0xaefa1  1      OPC=nop             
  nop                           #  64    0xaefa2  1      OPC=nop             
  nop                           #  65    0xaefa3  1      OPC=nop             
  nop                           #  66    0xaefa4  1      OPC=nop             
  nop                           #  67    0xaefa5  1      OPC=nop             
  nop                           #  68    0xaefa6  1      OPC=nop             
                                                                             
.size _ZNSs5beginEv, .-_ZNSs5beginEv

