  .text
  .globl _ZNKSt10moneypunctIwLb1EE11curr_symbolEv
  .type _ZNKSt10moneypunctIwLb1EE11curr_symbolEv, @function

#! file-offset 0xeff20
#! rip-offset  0xaff20
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11curr_symbolEv:  #        0xaff20  0      OPC=<label>         
  movl %esi, %esi                           #  1     0xaff20  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0xaff22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0xaff23  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0xaff25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0xaff27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0xaff2b  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0xaff2d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0xaff2f  5      OPC=movl_r32_m32    
  nop                                       #  9     0xaff34  1      OPC=nop             
  nop                                       #  10    0xaff35  1      OPC=nop             
  nop                                       #  11    0xaff36  1      OPC=nop             
  nop                                       #  12    0xaff37  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0xaff38  6      OPC=andl_r32_imm32  
  nop                                       #  14    0xaff3e  1      OPC=nop             
  nop                                       #  15    0xaff3f  1      OPC=nop             
  nop                                       #  16    0xaff40  1      OPC=nop             
  addq %r15, %rax                           #  17    0xaff41  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0xaff44  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0xaff46  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0xaff48  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0xaff49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0xaff4b  7      OPC=andl_r32_imm32  
  nop                                       #  23    0xaff52  1      OPC=nop             
  nop                                       #  24    0xaff53  1      OPC=nop             
  nop                                       #  25    0xaff54  1      OPC=nop             
  nop                                       #  26    0xaff55  1      OPC=nop             
  addq %r15, %r11                           #  27    0xaff56  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0xaff59  3      OPC=jmpq_r64        
  nop                                       #  29    0xaff5c  1      OPC=nop             
  nop                                       #  30    0xaff5d  1      OPC=nop             
  nop                                       #  31    0xaff5e  1      OPC=nop             
  nop                                       #  32    0xaff5f  1      OPC=nop             
  nop                                       #  33    0xaff60  1      OPC=nop             
  nop                                       #  34    0xaff61  1      OPC=nop             
  nop                                       #  35    0xaff62  1      OPC=nop             
  nop                                       #  36    0xaff63  1      OPC=nop             
  nop                                       #  37    0xaff64  1      OPC=nop             
  nop                                       #  38    0xaff65  1      OPC=nop             
  nop                                       #  39    0xaff66  1      OPC=nop             
  nop                                       #  40    0xaff67  1      OPC=nop             
  nop                                       #  41    0xaff68  1      OPC=nop             
  nop                                       #  42    0xaff69  1      OPC=nop             
  nop                                       #  43    0xaff6a  1      OPC=nop             
  nop                                       #  44    0xaff6b  1      OPC=nop             
  nop                                       #  45    0xaff6c  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11curr_symbolEv, .-_ZNKSt10moneypunctIwLb1EE11curr_symbolEv

