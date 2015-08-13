  .text
  .globl _ZNKSt10moneypunctIwLb1EE11curr_symbolEv
  .type _ZNKSt10moneypunctIwLb1EE11curr_symbolEv, @function

#! file-offset 0xefc20
#! rip-offset  0xafc20
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11curr_symbolEv:  #        0xafc20  0      OPC=<label>         
  movl %esi, %esi                           #  1     0xafc20  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0xafc22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0xafc23  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0xafc25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0xafc27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0xafc2b  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0xafc2d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0xafc2f  5      OPC=movl_r32_m32    
  nop                                       #  9     0xafc34  1      OPC=nop             
  nop                                       #  10    0xafc35  1      OPC=nop             
  nop                                       #  11    0xafc36  1      OPC=nop             
  nop                                       #  12    0xafc37  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0xafc38  6      OPC=andl_r32_imm32  
  nop                                       #  14    0xafc3e  1      OPC=nop             
  nop                                       #  15    0xafc3f  1      OPC=nop             
  nop                                       #  16    0xafc40  1      OPC=nop             
  addq %r15, %rax                           #  17    0xafc41  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0xafc44  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0xafc46  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0xafc48  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0xafc49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0xafc4b  7      OPC=andl_r32_imm32  
  nop                                       #  23    0xafc52  1      OPC=nop             
  nop                                       #  24    0xafc53  1      OPC=nop             
  nop                                       #  25    0xafc54  1      OPC=nop             
  nop                                       #  26    0xafc55  1      OPC=nop             
  addq %r15, %r11                           #  27    0xafc56  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0xafc59  3      OPC=jmpq_r64        
  nop                                       #  29    0xafc5c  1      OPC=nop             
  nop                                       #  30    0xafc5d  1      OPC=nop             
  nop                                       #  31    0xafc5e  1      OPC=nop             
  nop                                       #  32    0xafc5f  1      OPC=nop             
  nop                                       #  33    0xafc60  1      OPC=nop             
  nop                                       #  34    0xafc61  1      OPC=nop             
  nop                                       #  35    0xafc62  1      OPC=nop             
  nop                                       #  36    0xafc63  1      OPC=nop             
  nop                                       #  37    0xafc64  1      OPC=nop             
  nop                                       #  38    0xafc65  1      OPC=nop             
  nop                                       #  39    0xafc66  1      OPC=nop             
  nop                                       #  40    0xafc67  1      OPC=nop             
  nop                                       #  41    0xafc68  1      OPC=nop             
  nop                                       #  42    0xafc69  1      OPC=nop             
  nop                                       #  43    0xafc6a  1      OPC=nop             
  nop                                       #  44    0xafc6b  1      OPC=nop             
  nop                                       #  45    0xafc6c  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11curr_symbolEv, .-_ZNKSt10moneypunctIwLb1EE11curr_symbolEv

