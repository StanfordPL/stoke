  .text
  .globl _ZNKSt10moneypunctIwLb0EE11curr_symbolEv
  .type _ZNKSt10moneypunctIwLb0EE11curr_symbolEv, @function

#! file-offset 0xef9a0
#! rip-offset  0xaf9a0
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11curr_symbolEv:  #        0xaf9a0  0      OPC=<label>         
  movl %esi, %esi                           #  1     0xaf9a0  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0xaf9a2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0xaf9a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0xaf9a5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0xaf9a7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0xaf9ab  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0xaf9ad  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0xaf9af  5      OPC=movl_r32_m32    
  nop                                       #  9     0xaf9b4  1      OPC=nop             
  nop                                       #  10    0xaf9b5  1      OPC=nop             
  nop                                       #  11    0xaf9b6  1      OPC=nop             
  nop                                       #  12    0xaf9b7  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0xaf9b8  6      OPC=andl_r32_imm32  
  nop                                       #  14    0xaf9be  1      OPC=nop             
  nop                                       #  15    0xaf9bf  1      OPC=nop             
  nop                                       #  16    0xaf9c0  1      OPC=nop             
  addq %r15, %rax                           #  17    0xaf9c1  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0xaf9c4  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0xaf9c6  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0xaf9c8  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0xaf9c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0xaf9cb  7      OPC=andl_r32_imm32  
  nop                                       #  23    0xaf9d2  1      OPC=nop             
  nop                                       #  24    0xaf9d3  1      OPC=nop             
  nop                                       #  25    0xaf9d4  1      OPC=nop             
  nop                                       #  26    0xaf9d5  1      OPC=nop             
  addq %r15, %r11                           #  27    0xaf9d6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0xaf9d9  3      OPC=jmpq_r64        
  nop                                       #  29    0xaf9dc  1      OPC=nop             
  nop                                       #  30    0xaf9dd  1      OPC=nop             
  nop                                       #  31    0xaf9de  1      OPC=nop             
  nop                                       #  32    0xaf9df  1      OPC=nop             
  nop                                       #  33    0xaf9e0  1      OPC=nop             
  nop                                       #  34    0xaf9e1  1      OPC=nop             
  nop                                       #  35    0xaf9e2  1      OPC=nop             
  nop                                       #  36    0xaf9e3  1      OPC=nop             
  nop                                       #  37    0xaf9e4  1      OPC=nop             
  nop                                       #  38    0xaf9e5  1      OPC=nop             
  nop                                       #  39    0xaf9e6  1      OPC=nop             
  nop                                       #  40    0xaf9e7  1      OPC=nop             
  nop                                       #  41    0xaf9e8  1      OPC=nop             
  nop                                       #  42    0xaf9e9  1      OPC=nop             
  nop                                       #  43    0xaf9ea  1      OPC=nop             
  nop                                       #  44    0xaf9eb  1      OPC=nop             
  nop                                       #  45    0xaf9ec  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11curr_symbolEv, .-_ZNKSt10moneypunctIwLb0EE11curr_symbolEv

