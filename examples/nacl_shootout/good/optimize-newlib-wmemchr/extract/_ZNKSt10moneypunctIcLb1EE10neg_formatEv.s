  .text
  .globl _ZNKSt10moneypunctIcLb1EE10neg_formatEv
  .type _ZNKSt10moneypunctIcLb1EE10neg_formatEv, @function

#! file-offset 0xb7080
#! rip-offset  0x77080
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE10neg_formatEv:  #        0x77080  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x77080  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0x77082  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0x77085  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0x77088  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x7708a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x7708e  2      OPC=movl_r32_r32    
  movl 0x28(%r15,%rax,1), %eax             #  7     0x77090  5      OPC=movl_r32_m32    
  nop                                      #  8     0x77095  1      OPC=nop             
  nop                                      #  9     0x77096  1      OPC=nop             
  nop                                      #  10    0x77097  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0x77098  6      OPC=andl_r32_imm32  
  nop                                      #  12    0x7709e  1      OPC=nop             
  nop                                      #  13    0x7709f  1      OPC=nop             
  nop                                      #  14    0x770a0  1      OPC=nop             
  addq %r15, %rax                          #  15    0x770a1  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0x770a4  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0x770a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0x770a9  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0x770ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0x770ae  7      OPC=andl_r32_imm32  
  nop                                      #  21    0x770b5  1      OPC=nop             
  nop                                      #  22    0x770b6  1      OPC=nop             
  nop                                      #  23    0x770b7  1      OPC=nop             
  nop                                      #  24    0x770b8  1      OPC=nop             
  addq %r15, %r11                          #  25    0x770b9  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0x770bc  3      OPC=jmpq_r64        
  nop                                      #  27    0x770bf  1      OPC=nop             
  nop                                      #  28    0x770c0  1      OPC=nop             
  nop                                      #  29    0x770c1  1      OPC=nop             
  nop                                      #  30    0x770c2  1      OPC=nop             
  nop                                      #  31    0x770c3  1      OPC=nop             
  nop                                      #  32    0x770c4  1      OPC=nop             
  nop                                      #  33    0x770c5  1      OPC=nop             
  nop                                      #  34    0x770c6  1      OPC=nop             
  nop                                      #  35    0x770c7  1      OPC=nop             
  nop                                      #  36    0x770c8  1      OPC=nop             
  nop                                      #  37    0x770c9  1      OPC=nop             
  nop                                      #  38    0x770ca  1      OPC=nop             
  nop                                      #  39    0x770cb  1      OPC=nop             
  nop                                      #  40    0x770cc  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIcLb1EE10neg_formatEv, .-_ZNKSt10moneypunctIcLb1EE10neg_formatEv

