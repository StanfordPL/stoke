  .text
  .globl _ZNKSt10moneypunctIcLb0EE10neg_formatEv
  .type _ZNKSt10moneypunctIcLb0EE10neg_formatEv, @function

#! file-offset 0xb6e00
#! rip-offset  0x76e00
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE10neg_formatEv:  #        0x76e00  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x76e00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x76e02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x76e05  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x76e08  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x76e0a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x76e0e  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0x76e10  5      OPC=movl_r32_m32    
  nop                                      #  8     0x76e15  1      OPC=nop             
  nop                                      #  9     0x76e16  1      OPC=nop             
  nop                                      #  10    0x76e17  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x76e18  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x76e1e  1      OPC=nop             
  nop                                      #  13    0x76e1f  1      OPC=nop             
  nop                                      #  14    0x76e20  1      OPC=nop             
  addq %r15, %rax                          #  15    0x76e21  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x76e24  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x76e26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x76e29  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x76e2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x76e2e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x76e35  1      OPC=nop             
  nop                                      #  22    0x76e36  1      OPC=nop             
  nop                                      #  23    0x76e37  1      OPC=nop             
  nop                                      #  24    0x76e38  1      OPC=nop             
  addq %r15, %r11                          #  25    0x76e39  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x76e3c  3      OPC=jmpq_r64        
  nop                                      #  27    0x76e3f  1      OPC=nop             
  nop                                      #  28    0x76e40  1      OPC=nop             
  nop                                      #  29    0x76e41  1      OPC=nop             
  nop                                      #  30    0x76e42  1      OPC=nop             
  nop                                      #  31    0x76e43  1      OPC=nop             
  nop                                      #  32    0x76e44  1      OPC=nop             
  nop                                      #  33    0x76e45  1      OPC=nop             
  nop                                      #  34    0x76e46  1      OPC=nop             
  nop                                      #  35    0x76e47  1      OPC=nop             
  nop                                      #  36    0x76e48  1      OPC=nop             
  nop                                      #  37    0x76e49  1      OPC=nop             
  nop                                      #  38    0x76e4a  1      OPC=nop             
  nop                                      #  39    0x76e4b  1      OPC=nop             
  nop                                      #  40    0x76e4c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb0EE10neg_formatEv, .-_ZNKSt10moneypunctIcLb0EE10neg_formatEv

