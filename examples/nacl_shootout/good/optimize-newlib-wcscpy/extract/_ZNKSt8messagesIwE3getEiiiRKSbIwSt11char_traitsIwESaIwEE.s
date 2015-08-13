  .text
  .globl _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE
  .type _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE, @function

#! file-offset 0xf1d20
#! rip-offset  0xb1d20
#! capacity    64 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE:  #        0xb1d20  0      OPC=<label>         
  movl %esi, %esi                                           #  1     0xb1d20  2      OPC=movl_r32_r32    
  pushq %rbx                                                #  2     0xb1d22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                           #  3     0xb1d23  2      OPC=movl_r32_r32    
  movl %esi, %esi                                           #  4     0xb1d25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                  #  5     0xb1d27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                           #  6     0xb1d2b  2      OPC=movl_r32_r32    
  movl %eax, %eax                                           #  7     0xb1d2d  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                               #  8     0xb1d2f  5      OPC=movl_r32_m32    
  nop                                                       #  9     0xb1d34  1      OPC=nop             
  nop                                                       #  10    0xb1d35  1      OPC=nop             
  nop                                                       #  11    0xb1d36  1      OPC=nop             
  nop                                                       #  12    0xb1d37  1      OPC=nop             
  andl $0xffffffe0, %eax                                    #  13    0xb1d38  6      OPC=andl_r32_imm32  
  nop                                                       #  14    0xb1d3e  1      OPC=nop             
  nop                                                       #  15    0xb1d3f  1      OPC=nop             
  nop                                                       #  16    0xb1d40  1      OPC=nop             
  addq %r15, %rax                                           #  17    0xb1d41  3      OPC=addq_r64_r64    
  callq %rax                                                #  18    0xb1d44  2      OPC=callq_r64       
  movl %ebx, %eax                                           #  19    0xb1d46  2      OPC=movl_r32_r32    
  popq %rbx                                                 #  20    0xb1d48  1      OPC=popq_r64_1      
  popq %r11                                                 #  21    0xb1d49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                   #  22    0xb1d4b  7      OPC=andl_r32_imm32  
  nop                                                       #  23    0xb1d52  1      OPC=nop             
  nop                                                       #  24    0xb1d53  1      OPC=nop             
  nop                                                       #  25    0xb1d54  1      OPC=nop             
  nop                                                       #  26    0xb1d55  1      OPC=nop             
  addq %r15, %r11                                           #  27    0xb1d56  3      OPC=addq_r64_r64    
  jmpq %r11                                                 #  28    0xb1d59  3      OPC=jmpq_r64        
  nop                                                       #  29    0xb1d5c  1      OPC=nop             
  nop                                                       #  30    0xb1d5d  1      OPC=nop             
  nop                                                       #  31    0xb1d5e  1      OPC=nop             
  nop                                                       #  32    0xb1d5f  1      OPC=nop             
  nop                                                       #  33    0xb1d60  1      OPC=nop             
  nop                                                       #  34    0xb1d61  1      OPC=nop             
  nop                                                       #  35    0xb1d62  1      OPC=nop             
  nop                                                       #  36    0xb1d63  1      OPC=nop             
  nop                                                       #  37    0xb1d64  1      OPC=nop             
  nop                                                       #  38    0xb1d65  1      OPC=nop             
  nop                                                       #  39    0xb1d66  1      OPC=nop             
  nop                                                       #  40    0xb1d67  1      OPC=nop             
  nop                                                       #  41    0xb1d68  1      OPC=nop             
  nop                                                       #  42    0xb1d69  1      OPC=nop             
  nop                                                       #  43    0xb1d6a  1      OPC=nop             
  nop                                                       #  44    0xb1d6b  1      OPC=nop             
  nop                                                       #  45    0xb1d6c  1      OPC=nop             
                                                                                                         
.size _ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE, .-_ZNKSt8messagesIwE3getEiiiRKSbIwSt11char_traitsIwESaIwEE

