  .text
  .globl _ZNSt6locale18_S_initialize_onceEv
  .type _ZNSt6locale18_S_initialize_onceEv, @function

#! file-offset 0xa2280
#! rip-offset  0x62280
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
._ZNSt6locale18_S_initialize_onceEv:  #        0x62280  0      OPC=0     
  pushq %rbx                          #  1     0x62280  1      OPC=1861  
  leal 0x10011229(%rip), %edi         #  2     0x62281  6      OPC=1066  
  movl $0x100734b0, %ebx              #  3     0x62287  5      OPC=1154  
  movl $0x2, %esi                     #  4     0x6228c  5      OPC=1154  
  nop                                 #  5     0x62291  1      OPC=1343  
  nop                                 #  6     0x62292  1      OPC=1343  
  nop                                 #  7     0x62293  1      OPC=1343  
  nop                                 #  8     0x62294  1      OPC=1343  
  nop                                 #  9     0x62295  1      OPC=1343  
  nop                                 #  10    0x62296  1      OPC=1343  
  nop                                 #  11    0x62297  1      OPC=1343  
  nop                                 #  12    0x62298  1      OPC=1343  
  nop                                 #  13    0x62299  1      OPC=1343  
  nop                                 #  14    0x6229a  1      OPC=1343  
  callq ._ZNSt6locale5_ImplC1Ej       #  15    0x6229b  5      OPC=260   
  movl %ebx, 0x1001037e(%rip)         #  16    0x622a0  6      OPC=1136  
  movl %ebx, 0x1001037c(%rip)         #  17    0x622a6  6      OPC=1136  
  popq %rbx                           #  18    0x622ac  1      OPC=1694  
  popq %r11                           #  19    0x622ad  2      OPC=1694  
  andl $0xffffffe0, %r11d             #  20    0x622af  7      OPC=131   
  nop                                 #  21    0x622b6  1      OPC=1343  
  nop                                 #  22    0x622b7  1      OPC=1343  
  nop                                 #  23    0x622b8  1      OPC=1343  
  nop                                 #  24    0x622b9  1      OPC=1343  
  addq %r15, %r11                     #  25    0x622ba  3      OPC=72    
  jmpq %r11                           #  26    0x622bd  3      OPC=928   
  nop                                 #  27    0x622c0  1      OPC=1343  
  nop                                 #  28    0x622c1  1      OPC=1343  
  nop                                 #  29    0x622c2  1      OPC=1343  
  nop                                 #  30    0x622c3  1      OPC=1343  
  nop                                 #  31    0x622c4  1      OPC=1343  
  nop                                 #  32    0x622c5  1      OPC=1343  
  nop                                 #  33    0x622c6  1      OPC=1343  
                                                                         
.size _ZNSt6locale18_S_initialize_onceEv, .-_ZNSt6locale18_S_initialize_onceEv

