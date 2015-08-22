  .text
  .globl _ZNKSt10moneypunctIwLb1EE8groupingEv
  .type _ZNKSt10moneypunctIwLb1EE8groupingEv, @function

#! file-offset 0xf0600
#! rip-offset  0xb0600
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE8groupingEv:  #        0xb0600  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xb0600  2      OPC=movl_r32_r32    
  pushq %rbx                            #  2     0xb0602  1      OPC=pushq_r64_1     
  movl %edi, %ebx                       #  3     0xb0603  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  4     0xb0605  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax              #  5     0xb0607  4      OPC=movl_r32_m32    
  movl %ebx, %edi                       #  6     0xb060b  2      OPC=movl_r32_r32    
  movl %eax, %eax                       #  7     0xb060d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax          #  8     0xb060f  5      OPC=movl_r32_m32    
  nop                                   #  9     0xb0614  1      OPC=nop             
  nop                                   #  10    0xb0615  1      OPC=nop             
  nop                                   #  11    0xb0616  1      OPC=nop             
  nop                                   #  12    0xb0617  1      OPC=nop             
  andl $0xffffffe0, %eax                #  13    0xb0618  6      OPC=andl_r32_imm32  
  nop                                   #  14    0xb061e  1      OPC=nop             
  nop                                   #  15    0xb061f  1      OPC=nop             
  nop                                   #  16    0xb0620  1      OPC=nop             
  addq %r15, %rax                       #  17    0xb0621  3      OPC=addq_r64_r64    
  callq %rax                            #  18    0xb0624  2      OPC=callq_r64       
  movl %ebx, %eax                       #  19    0xb0626  2      OPC=movl_r32_r32    
  popq %rbx                             #  20    0xb0628  1      OPC=popq_r64_1      
  popq %r11                             #  21    0xb0629  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  22    0xb062b  7      OPC=andl_r32_imm32  
  nop                                   #  23    0xb0632  1      OPC=nop             
  nop                                   #  24    0xb0633  1      OPC=nop             
  nop                                   #  25    0xb0634  1      OPC=nop             
  nop                                   #  26    0xb0635  1      OPC=nop             
  addq %r15, %r11                       #  27    0xb0636  3      OPC=addq_r64_r64    
  jmpq %r11                             #  28    0xb0639  3      OPC=jmpq_r64        
  nop                                   #  29    0xb063c  1      OPC=nop             
  nop                                   #  30    0xb063d  1      OPC=nop             
  nop                                   #  31    0xb063e  1      OPC=nop             
  nop                                   #  32    0xb063f  1      OPC=nop             
  nop                                   #  33    0xb0640  1      OPC=nop             
  nop                                   #  34    0xb0641  1      OPC=nop             
  nop                                   #  35    0xb0642  1      OPC=nop             
  nop                                   #  36    0xb0643  1      OPC=nop             
  nop                                   #  37    0xb0644  1      OPC=nop             
  nop                                   #  38    0xb0645  1      OPC=nop             
  nop                                   #  39    0xb0646  1      OPC=nop             
  nop                                   #  40    0xb0647  1      OPC=nop             
  nop                                   #  41    0xb0648  1      OPC=nop             
  nop                                   #  42    0xb0649  1      OPC=nop             
  nop                                   #  43    0xb064a  1      OPC=nop             
  nop                                   #  44    0xb064b  1      OPC=nop             
  nop                                   #  45    0xb064c  1      OPC=nop             
                                                                                     
.size _ZNKSt10moneypunctIwLb1EE8groupingEv, .-_ZNKSt10moneypunctIwLb1EE8groupingEv

