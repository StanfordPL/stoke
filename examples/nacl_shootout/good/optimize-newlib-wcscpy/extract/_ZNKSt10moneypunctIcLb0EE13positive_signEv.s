  .text
  .globl _ZNKSt10moneypunctIcLb0EE13positive_signEv
  .type _ZNKSt10moneypunctIcLb0EE13positive_signEv, @function

#! file-offset 0xb6a20
#! rip-offset  0x76a20
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13positive_signEv:  #        0x76a20  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x76a20  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x76a22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x76a23  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x76a25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x76a27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x76a2b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x76a2d  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0x76a2f  5      OPC=movl_r32_m32    
  nop                                         #  9     0x76a34  1      OPC=nop             
  nop                                         #  10    0x76a35  1      OPC=nop             
  nop                                         #  11    0x76a36  1      OPC=nop             
  nop                                         #  12    0x76a37  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x76a38  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x76a3e  1      OPC=nop             
  nop                                         #  15    0x76a3f  1      OPC=nop             
  nop                                         #  16    0x76a40  1      OPC=nop             
  addq %r15, %rax                             #  17    0x76a41  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x76a44  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x76a46  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x76a48  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x76a49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x76a4b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x76a52  1      OPC=nop             
  nop                                         #  24    0x76a53  1      OPC=nop             
  nop                                         #  25    0x76a54  1      OPC=nop             
  nop                                         #  26    0x76a55  1      OPC=nop             
  addq %r15, %r11                             #  27    0x76a56  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x76a59  3      OPC=jmpq_r64        
  nop                                         #  29    0x76a5c  1      OPC=nop             
  nop                                         #  30    0x76a5d  1      OPC=nop             
  nop                                         #  31    0x76a5e  1      OPC=nop             
  nop                                         #  32    0x76a5f  1      OPC=nop             
  nop                                         #  33    0x76a60  1      OPC=nop             
  nop                                         #  34    0x76a61  1      OPC=nop             
  nop                                         #  35    0x76a62  1      OPC=nop             
  nop                                         #  36    0x76a63  1      OPC=nop             
  nop                                         #  37    0x76a64  1      OPC=nop             
  nop                                         #  38    0x76a65  1      OPC=nop             
  nop                                         #  39    0x76a66  1      OPC=nop             
  nop                                         #  40    0x76a67  1      OPC=nop             
  nop                                         #  41    0x76a68  1      OPC=nop             
  nop                                         #  42    0x76a69  1      OPC=nop             
  nop                                         #  43    0x76a6a  1      OPC=nop             
  nop                                         #  44    0x76a6b  1      OPC=nop             
  nop                                         #  45    0x76a6c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13positive_signEv, .-_ZNKSt10moneypunctIcLb0EE13positive_signEv

