  .text
  .globl _ZNKSt10moneypunctIwLb0EE13negative_signEv
  .type _ZNKSt10moneypunctIwLb0EE13negative_signEv, @function

#! file-offset 0xefd20
#! rip-offset  0xafd20
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13negative_signEv:  #        0xafd20  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xafd20  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xafd22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xafd23  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xafd25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xafd27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xafd2b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xafd2d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0xafd2f  5      OPC=movl_r32_m32    
  nop                                         #  9     0xafd34  1      OPC=nop             
  nop                                         #  10    0xafd35  1      OPC=nop             
  nop                                         #  11    0xafd36  1      OPC=nop             
  nop                                         #  12    0xafd37  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xafd38  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xafd3e  1      OPC=nop             
  nop                                         #  15    0xafd3f  1      OPC=nop             
  nop                                         #  16    0xafd40  1      OPC=nop             
  addq %r15, %rax                             #  17    0xafd41  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xafd44  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xafd46  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xafd48  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xafd49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xafd4b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xafd52  1      OPC=nop             
  nop                                         #  24    0xafd53  1      OPC=nop             
  nop                                         #  25    0xafd54  1      OPC=nop             
  nop                                         #  26    0xafd55  1      OPC=nop             
  addq %r15, %r11                             #  27    0xafd56  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xafd59  3      OPC=jmpq_r64        
  nop                                         #  29    0xafd5c  1      OPC=nop             
  nop                                         #  30    0xafd5d  1      OPC=nop             
  nop                                         #  31    0xafd5e  1      OPC=nop             
  nop                                         #  32    0xafd5f  1      OPC=nop             
  nop                                         #  33    0xafd60  1      OPC=nop             
  nop                                         #  34    0xafd61  1      OPC=nop             
  nop                                         #  35    0xafd62  1      OPC=nop             
  nop                                         #  36    0xafd63  1      OPC=nop             
  nop                                         #  37    0xafd64  1      OPC=nop             
  nop                                         #  38    0xafd65  1      OPC=nop             
  nop                                         #  39    0xafd66  1      OPC=nop             
  nop                                         #  40    0xafd67  1      OPC=nop             
  nop                                         #  41    0xafd68  1      OPC=nop             
  nop                                         #  42    0xafd69  1      OPC=nop             
  nop                                         #  43    0xafd6a  1      OPC=nop             
  nop                                         #  44    0xafd6b  1      OPC=nop             
  nop                                         #  45    0xafd6c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13negative_signEv, .-_ZNKSt10moneypunctIwLb0EE13negative_signEv

