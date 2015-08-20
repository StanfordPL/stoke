  .text
  .globl _ZNSsixEj
  .type _ZNSsixEj, @function

#! file-offset 0xeee60
#! rip-offset  0xaee60
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNSsixEj:                     #        0xaee60  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)        #  1     0xaee60  5      OPC=movq_m64_r64    
  movl %edi, %ebx               #  2     0xaee65  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)         #  3     0xaee67  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0xaee6c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0xaee6f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx               #  6     0xaee72  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  7     0xaee74  4      OPC=movl_r32_m32    
  movl %esi, %r12d              #  8     0xaee78  3      OPC=movl_r32_r32    
  leal -0xc(%rax), %edx         #  9     0xaee7b  3      OPC=leal_r32_m16    
  xchgw %ax, %ax                #  10    0xaee7e  2      OPC=xchgw_ax_r16    
  movl %edx, %edx               #  11    0xaee80  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %r10d  #  12    0xaee82  5      OPC=movl_r32_m32    
  testl %r10d, %r10d            #  13    0xaee87  3      OPC=testl_r32_r32   
  js .L_aeec0                   #  14    0xaee8a  2      OPC=js_label        
  movl %ebx, %edi               #  15    0xaee8c  2      OPC=movl_r32_r32    
  nop                           #  16    0xaee8e  1      OPC=nop             
  nop                           #  17    0xaee8f  1      OPC=nop             
  nop                           #  18    0xaee90  1      OPC=nop             
  nop                           #  19    0xaee91  1      OPC=nop             
  nop                           #  20    0xaee92  1      OPC=nop             
  nop                           #  21    0xaee93  1      OPC=nop             
  nop                           #  22    0xaee94  1      OPC=nop             
  nop                           #  23    0xaee95  1      OPC=nop             
  nop                           #  24    0xaee96  1      OPC=nop             
  nop                           #  25    0xaee97  1      OPC=nop             
  nop                           #  26    0xaee98  1      OPC=nop             
  nop                           #  27    0xaee99  1      OPC=nop             
  nop                           #  28    0xaee9a  1      OPC=nop             
  callq ._ZNSs12_M_leak_hardEv  #  29    0xaee9b  5      OPC=callq_label     
  movl %ebx, %ebx               #  30    0xaeea0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax      #  31    0xaeea2  4      OPC=movl_r32_m32    
  nop                           #  32    0xaeea6  1      OPC=nop             
  nop                           #  33    0xaeea7  1      OPC=nop             
  nop                           #  34    0xaeea8  1      OPC=nop             
  nop                           #  35    0xaeea9  1      OPC=nop             
  nop                           #  36    0xaeeaa  1      OPC=nop             
  nop                           #  37    0xaeeab  1      OPC=nop             
  nop                           #  38    0xaeeac  1      OPC=nop             
  nop                           #  39    0xaeead  1      OPC=nop             
  nop                           #  40    0xaeeae  1      OPC=nop             
  nop                           #  41    0xaeeaf  1      OPC=nop             
  nop                           #  42    0xaeeb0  1      OPC=nop             
  nop                           #  43    0xaeeb1  1      OPC=nop             
  nop                           #  44    0xaeeb2  1      OPC=nop             
  nop                           #  45    0xaeeb3  1      OPC=nop             
  nop                           #  46    0xaeeb4  1      OPC=nop             
  nop                           #  47    0xaeeb5  1      OPC=nop             
  nop                           #  48    0xaeeb6  1      OPC=nop             
  nop                           #  49    0xaeeb7  1      OPC=nop             
  nop                           #  50    0xaeeb8  1      OPC=nop             
  nop                           #  51    0xaeeb9  1      OPC=nop             
  nop                           #  52    0xaeeba  1      OPC=nop             
  nop                           #  53    0xaeebb  1      OPC=nop             
  nop                           #  54    0xaeebc  1      OPC=nop             
  nop                           #  55    0xaeebd  1      OPC=nop             
  nop                           #  56    0xaeebe  1      OPC=nop             
  nop                           #  57    0xaeebf  1      OPC=nop             
.L_aeec0:                       #        0xaeec0  0      OPC=<label>         
  leal (%r12,%rax,1), %eax      #  58    0xaeec0  4      OPC=leal_r32_m16    
  movq 0x8(%rsp), %rbx          #  59    0xaeec4  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12         #  60    0xaeec9  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  61    0xaeece  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  62    0xaeed1  3      OPC=addq_r64_r64    
  popq %r11                     #  63    0xaeed4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  64    0xaeed6  7      OPC=andl_r32_imm32  
  nop                           #  65    0xaeedd  1      OPC=nop             
  nop                           #  66    0xaeede  1      OPC=nop             
  nop                           #  67    0xaeedf  1      OPC=nop             
  nop                           #  68    0xaeee0  1      OPC=nop             
  addq %r15, %r11               #  69    0xaeee1  3      OPC=addq_r64_r64    
  jmpq %r11                     #  70    0xaeee4  3      OPC=jmpq_r64        
                                                                             
.size _ZNSsixEj, .-_ZNSsixEj

