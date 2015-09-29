  .text
  .globl _ZNKSt11logic_error4whatEv
  .type _ZNKSt11logic_error4whatEv, @function

#! file-offset 0x129820
#! rip-offset  0xe9820
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSt11logic_error4whatEv:   #        0xe9820  0      OPC=<label>         
  popq %r11                    #  1     0xe9820  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0xe9822  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xe9824  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  4     0xe9826  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  5     0xe982b  7      OPC=andl_r32_imm32  
  nop                          #  6     0xe9832  1      OPC=nop             
  nop                          #  7     0xe9833  1      OPC=nop             
  nop                          #  8     0xe9834  1      OPC=nop             
  nop                          #  9     0xe9835  1      OPC=nop             
  addq %r15, %r11              #  10    0xe9836  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0xe9839  3      OPC=jmpq_r64        
  nop                          #  12    0xe983c  1      OPC=nop             
  nop                          #  13    0xe983d  1      OPC=nop             
  nop                          #  14    0xe983e  1      OPC=nop             
  nop                          #  15    0xe983f  1      OPC=nop             
  nop                          #  16    0xe9840  1      OPC=nop             
  nop                          #  17    0xe9841  1      OPC=nop             
  nop                          #  18    0xe9842  1      OPC=nop             
  nop                          #  19    0xe9843  1      OPC=nop             
  nop                          #  20    0xe9844  1      OPC=nop             
  nop                          #  21    0xe9845  1      OPC=nop             
  nop                          #  22    0xe9846  1      OPC=nop             
                                                                            
.size _ZNKSt11logic_error4whatEv, .-_ZNKSt11logic_error4whatEv

