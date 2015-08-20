  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5beginEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, @function

#! file-offset 0x11a3a0
#! rip-offset  0xda3a0
#! capacity    96 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5beginEv:                 #        0xda3a0  0      OPC=<label>         
  pushq %rbx                                              #  1     0xda3a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                         #  2     0xda3a1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                         #  3     0xda3a3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  4     0xda3a5  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                   #  5     0xda3a9  3      OPC=leal_r32_m16    
  movl %edx, %edx                                         #  6     0xda3ac  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %esi                             #  7     0xda3ae  5      OPC=movl_r32_m32    
  testl %esi, %esi                                        #  8     0xda3b3  2      OPC=testl_r32_r32   
  js .L_da3e0                                             #  9     0xda3b5  2      OPC=js_label        
  movl %ebx, %edi                                         #  10    0xda3b7  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                          #  11    0xda3b9  2      OPC=xchgw_ax_r16    
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  12    0xda3bb  5      OPC=callq_label     
  movl %ebx, %ebx                                         #  13    0xda3c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                #  14    0xda3c2  4      OPC=movl_r32_m32    
  nop                                                     #  15    0xda3c6  1      OPC=nop             
  nop                                                     #  16    0xda3c7  1      OPC=nop             
  nop                                                     #  17    0xda3c8  1      OPC=nop             
  nop                                                     #  18    0xda3c9  1      OPC=nop             
  nop                                                     #  19    0xda3ca  1      OPC=nop             
  nop                                                     #  20    0xda3cb  1      OPC=nop             
  nop                                                     #  21    0xda3cc  1      OPC=nop             
  nop                                                     #  22    0xda3cd  1      OPC=nop             
  nop                                                     #  23    0xda3ce  1      OPC=nop             
  nop                                                     #  24    0xda3cf  1      OPC=nop             
  nop                                                     #  25    0xda3d0  1      OPC=nop             
  nop                                                     #  26    0xda3d1  1      OPC=nop             
  nop                                                     #  27    0xda3d2  1      OPC=nop             
  nop                                                     #  28    0xda3d3  1      OPC=nop             
  nop                                                     #  29    0xda3d4  1      OPC=nop             
  nop                                                     #  30    0xda3d5  1      OPC=nop             
  nop                                                     #  31    0xda3d6  1      OPC=nop             
  nop                                                     #  32    0xda3d7  1      OPC=nop             
  nop                                                     #  33    0xda3d8  1      OPC=nop             
  nop                                                     #  34    0xda3d9  1      OPC=nop             
  nop                                                     #  35    0xda3da  1      OPC=nop             
  nop                                                     #  36    0xda3db  1      OPC=nop             
  nop                                                     #  37    0xda3dc  1      OPC=nop             
  nop                                                     #  38    0xda3dd  1      OPC=nop             
  nop                                                     #  39    0xda3de  1      OPC=nop             
  nop                                                     #  40    0xda3df  1      OPC=nop             
.L_da3e0:                                                 #        0xda3e0  0      OPC=<label>         
  popq %rbx                                               #  41    0xda3e0  1      OPC=popq_r64_1      
  popq %r11                                               #  42    0xda3e1  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                 #  43    0xda3e3  7      OPC=andl_r32_imm32  
  nop                                                     #  44    0xda3ea  1      OPC=nop             
  nop                                                     #  45    0xda3eb  1      OPC=nop             
  nop                                                     #  46    0xda3ec  1      OPC=nop             
  nop                                                     #  47    0xda3ed  1      OPC=nop             
  addq %r15, %r11                                         #  48    0xda3ee  3      OPC=addq_r64_r64    
  jmpq %r11                                               #  49    0xda3f1  3      OPC=jmpq_r64        
  nop                                                     #  50    0xda3f4  1      OPC=nop             
  nop                                                     #  51    0xda3f5  1      OPC=nop             
  nop                                                     #  52    0xda3f6  1      OPC=nop             
  nop                                                     #  53    0xda3f7  1      OPC=nop             
  nop                                                     #  54    0xda3f8  1      OPC=nop             
  nop                                                     #  55    0xda3f9  1      OPC=nop             
  nop                                                     #  56    0xda3fa  1      OPC=nop             
  nop                                                     #  57    0xda3fb  1      OPC=nop             
  nop                                                     #  58    0xda3fc  1      OPC=nop             
  nop                                                     #  59    0xda3fd  1      OPC=nop             
  nop                                                     #  60    0xda3fe  1      OPC=nop             
  nop                                                     #  61    0xda3ff  1      OPC=nop             
  nop                                                     #  62    0xda400  1      OPC=nop             
  nop                                                     #  63    0xda401  1      OPC=nop             
  nop                                                     #  64    0xda402  1      OPC=nop             
  nop                                                     #  65    0xda403  1      OPC=nop             
  nop                                                     #  66    0xda404  1      OPC=nop             
  nop                                                     #  67    0xda405  1      OPC=nop             
  nop                                                     #  68    0xda406  1      OPC=nop             
                                                                                                       
.size _ZNSbIwSt11char_traitsIwESaIwEE5beginEv, .-_ZNSbIwSt11char_traitsIwESaIwEE5beginEv

