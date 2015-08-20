  .text
  .globl _ZNKSt10moneypunctIwLb1EE8groupingEv
  .type _ZNKSt10moneypunctIwLb1EE8groupingEv, @function

#! file-offset 0xefee0
#! rip-offset  0xafee0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE8groupingEv:  #        0xafee0  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xafee0  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xafee2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xafee3  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xafee5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xafee7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                       #  6     0xafeeb  2      OPC=movl_r32_r32    
  movl %eax, %eax                       #  7     0xafeed  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax          #  8     0xafeef  5      OPC=movl_r32_m32    
  nop                                   #  9     0xafef4  1      OPC=nop             
  nop                                   #  10    0xafef5  1      OPC=nop             
  nop                                   #  11    0xafef6  1      OPC=nop             
  nop                                   #  12    0xafef7  1      OPC=nop             
  andl $0xffffffe0, %eax                #  13    0xafef8  6      OPC=andl_r32_imm32  
  nop                                   #  14    0xafefe  1      OPC=nop             
  nop                                   #  15    0xafeff  1      OPC=nop             
  nop                                   #  16    0xaff00  1      OPC=nop             
  addq %r15, %rax                       #  17    0xaff01  3      OPC=addq_r64_r64    
  callq %rax                            #  18    0xaff04  2      OPC=callq_r64       
  movl %ebx, %eax                       #  19    0xaff06  2      OPC=movl_r32_r32    
  popq %rbx                             #  20    0xaff08  1      OPC=popq_r64_1      
  popq %r11                             #  21    0xaff09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  22    0xaff0b  7      OPC=andl_r32_imm32  
  nop                                   #  23    0xaff12  1      OPC=nop             
  nop                                   #  24    0xaff13  1      OPC=nop             
  nop                                   #  25    0xaff14  1      OPC=nop             
  nop                                   #  26    0xaff15  1      OPC=nop             
  addq %r15, %r11                       #  27    0xaff16  3      OPC=addq_r64_r64    
  jmpq %r11                             #  28    0xaff19  3      OPC=jmpq_r64        
  nop                                   #  29    0xaff1c  1      OPC=nop             
  nop                                   #  30    0xaff1d  1      OPC=nop             
  nop                                   #  31    0xaff1e  1      OPC=nop             
  nop                                   #  32    0xaff1f  1      OPC=nop             
  nop                                   #  33    0xaff20  1      OPC=nop             
  nop                                   #  34    0xaff21  1      OPC=nop             
  nop                                   #  35    0xaff22  1      OPC=nop             
  nop                                   #  36    0xaff23  1      OPC=nop             
  nop                                   #  37    0xaff24  1      OPC=nop             
  nop                                   #  38    0xaff25  1      OPC=nop             
  nop                                   #  39    0xaff26  1      OPC=nop             
  nop                                   #  40    0xaff27  1      OPC=nop             
  nop                                   #  41    0xaff28  1      OPC=nop             
  nop                                   #  42    0xaff29  1      OPC=nop             
  nop                                   #  43    0xaff2a  1      OPC=nop             
  nop                                   #  44    0xaff2b  1      OPC=nop             
  nop                                   #  45    0xaff2c  1      OPC=nop             
                                                                                     
.size _ZNKSt10moneypunctIwLb1EE8groupingEv, .-_ZNKSt10moneypunctIwLb1EE8groupingEv

