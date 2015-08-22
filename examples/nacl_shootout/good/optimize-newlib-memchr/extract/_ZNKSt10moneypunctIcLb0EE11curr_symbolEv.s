  .text
  .globl _ZNKSt10moneypunctIcLb0EE11curr_symbolEv
  .type _ZNKSt10moneypunctIcLb0EE11curr_symbolEv, @function

#! file-offset 0xb7400
#! rip-offset  0x77400
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE11curr_symbolEv:  #        0x77400  0      OPC=<label>         
  movl %esi, %esi                           #  1     0x77400  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0x77402  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0x77403  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0x77405  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0x77407  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0x7740b  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0x7740d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0x7740f  5      OPC=movl_r32_m32    
  nop                                       #  9     0x77414  1      OPC=nop             
  nop                                       #  10    0x77415  1      OPC=nop             
  nop                                       #  11    0x77416  1      OPC=nop             
  nop                                       #  12    0x77417  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0x77418  6      OPC=andl_r32_imm32  
  nop                                       #  14    0x7741e  1      OPC=nop             
  nop                                       #  15    0x7741f  1      OPC=nop             
  nop                                       #  16    0x77420  1      OPC=nop             
  addq %r15, %rax                           #  17    0x77421  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0x77424  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0x77426  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0x77428  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0x77429  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0x7742b  7      OPC=andl_r32_imm32  
  nop                                       #  23    0x77432  1      OPC=nop             
  nop                                       #  24    0x77433  1      OPC=nop             
  nop                                       #  25    0x77434  1      OPC=nop             
  nop                                       #  26    0x77435  1      OPC=nop             
  addq %r15, %r11                           #  27    0x77436  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0x77439  3      OPC=jmpq_r64        
  nop                                       #  29    0x7743c  1      OPC=nop             
  nop                                       #  30    0x7743d  1      OPC=nop             
  nop                                       #  31    0x7743e  1      OPC=nop             
  nop                                       #  32    0x7743f  1      OPC=nop             
  nop                                       #  33    0x77440  1      OPC=nop             
  nop                                       #  34    0x77441  1      OPC=nop             
  nop                                       #  35    0x77442  1      OPC=nop             
  nop                                       #  36    0x77443  1      OPC=nop             
  nop                                       #  37    0x77444  1      OPC=nop             
  nop                                       #  38    0x77445  1      OPC=nop             
  nop                                       #  39    0x77446  1      OPC=nop             
  nop                                       #  40    0x77447  1      OPC=nop             
  nop                                       #  41    0x77448  1      OPC=nop             
  nop                                       #  42    0x77449  1      OPC=nop             
  nop                                       #  43    0x7744a  1      OPC=nop             
  nop                                       #  44    0x7744b  1      OPC=nop             
  nop                                       #  45    0x7744c  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb0EE11curr_symbolEv, .-_ZNKSt10moneypunctIcLb0EE11curr_symbolEv

