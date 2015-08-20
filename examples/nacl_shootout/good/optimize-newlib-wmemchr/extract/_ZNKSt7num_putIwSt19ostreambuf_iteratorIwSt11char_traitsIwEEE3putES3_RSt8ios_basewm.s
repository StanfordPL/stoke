  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm, @function

#! file-offset 0xf0fc0
#! rip-offset  0xb0fc0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm:  #        0xb0fc0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb0fc0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb0fc2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb0fc5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb0fc8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb0fca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb0fcc  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb0fd0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                         #  8     0xb0fd2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb0fd7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb0fd8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb0fde  1      OPC=nop             
  nop                                                                                  #  12    0xb0fdf  1      OPC=nop             
  nop                                                                                  #  13    0xb0fe0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb0fe1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb0fe4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb0fe6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb0fe9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb0fec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb0fee  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb0ff5  1      OPC=nop             
  nop                                                                                  #  21    0xb0ff6  1      OPC=nop             
  nop                                                                                  #  22    0xb0ff7  1      OPC=nop             
  nop                                                                                  #  23    0xb0ff8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb0ff9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb0ffc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb0fff  1      OPC=nop             
  nop                                                                                  #  27    0xb1000  1      OPC=nop             
  nop                                                                                  #  28    0xb1001  1      OPC=nop             
  nop                                                                                  #  29    0xb1002  1      OPC=nop             
  nop                                                                                  #  30    0xb1003  1      OPC=nop             
  nop                                                                                  #  31    0xb1004  1      OPC=nop             
  nop                                                                                  #  32    0xb1005  1      OPC=nop             
  nop                                                                                  #  33    0xb1006  1      OPC=nop             
  nop                                                                                  #  34    0xb1007  1      OPC=nop             
  nop                                                                                  #  35    0xb1008  1      OPC=nop             
  nop                                                                                  #  36    0xb1009  1      OPC=nop             
  nop                                                                                  #  37    0xb100a  1      OPC=nop             
  nop                                                                                  #  38    0xb100b  1      OPC=nop             
  nop                                                                                  #  39    0xb100c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm

