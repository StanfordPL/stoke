  .text
  .globl _ZNKSt10moneypunctIwLb1EE10pos_formatEv
  .type _ZNKSt10moneypunctIwLb1EE10pos_formatEv, @function

#! file-offset 0xefd00
#! rip-offset  0xafd00
#! capacity    64 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE10pos_formatEv:  #        0xafd00  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xafd00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                          #  2     0xafd02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                          #  3     0xafd05  3      OPC=addq_r64_r64    
  movl %edi, %edi                          #  4     0xafd08  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xafd0a  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xafd0e  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax             #  7     0xafd10  5      OPC=movl_r32_m32    
  nop                                      #  8     0xafd15  1      OPC=nop             
  nop                                      #  9     0xafd16  1      OPC=nop             
  nop                                      #  10    0xafd17  1      OPC=nop             
  andl $0xffffffe0, %eax                   #  11    0xafd18  6      OPC=andl_r32_imm32  
  nop                                      #  12    0xafd1e  1      OPC=nop             
  nop                                      #  13    0xafd1f  1      OPC=nop             
  nop                                      #  14    0xafd20  1      OPC=nop             
  addq %r15, %rax                          #  15    0xafd21  3      OPC=addq_r64_r64    
  callq %rax                               #  16    0xafd24  2      OPC=callq_r64       
  addl $0x8, %esp                          #  17    0xafd26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                          #  18    0xafd29  3      OPC=addq_r64_r64    
  popq %r11                                #  19    0xafd2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                  #  20    0xafd2e  7      OPC=andl_r32_imm32  
  nop                                      #  21    0xafd35  1      OPC=nop             
  nop                                      #  22    0xafd36  1      OPC=nop             
  nop                                      #  23    0xafd37  1      OPC=nop             
  nop                                      #  24    0xafd38  1      OPC=nop             
  addq %r15, %r11                          #  25    0xafd39  3      OPC=addq_r64_r64    
  jmpq %r11                                #  26    0xafd3c  3      OPC=jmpq_r64        
  nop                                      #  27    0xafd3f  1      OPC=nop             
  nop                                      #  28    0xafd40  1      OPC=nop             
  nop                                      #  29    0xafd41  1      OPC=nop             
  nop                                      #  30    0xafd42  1      OPC=nop             
  nop                                      #  31    0xafd43  1      OPC=nop             
  nop                                      #  32    0xafd44  1      OPC=nop             
  nop                                      #  33    0xafd45  1      OPC=nop             
  nop                                      #  34    0xafd46  1      OPC=nop             
  nop                                      #  35    0xafd47  1      OPC=nop             
  nop                                      #  36    0xafd48  1      OPC=nop             
  nop                                      #  37    0xafd49  1      OPC=nop             
  nop                                      #  38    0xafd4a  1      OPC=nop             
  nop                                      #  39    0xafd4b  1      OPC=nop             
  nop                                      #  40    0xafd4c  1      OPC=nop             
                                                                                        
.size _ZNKSt10moneypunctIwLb1EE10pos_formatEv, .-_ZNKSt10moneypunctIwLb1EE10pos_formatEv

