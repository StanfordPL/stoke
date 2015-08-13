  .text
  .globl _ZNKSt10moneypunctIcLb0EE13negative_signEv
  .type _ZNKSt10moneypunctIcLb0EE13negative_signEv, @function

#! file-offset 0xb6a60
#! rip-offset  0x76a60
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE13negative_signEv:  #        0x76a60  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x76a60  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x76a62  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x76a63  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x76a65  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x76a67  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x76a6b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x76a6d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0x76a6f  5      OPC=movl_r32_m32    
  nop                                         #  9     0x76a74  1      OPC=nop             
  nop                                         #  10    0x76a75  1      OPC=nop             
  nop                                         #  11    0x76a76  1      OPC=nop             
  nop                                         #  12    0x76a77  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x76a78  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x76a7e  1      OPC=nop             
  nop                                         #  15    0x76a7f  1      OPC=nop             
  nop                                         #  16    0x76a80  1      OPC=nop             
  addq %r15, %rax                             #  17    0x76a81  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x76a84  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x76a86  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x76a88  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x76a89  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x76a8b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x76a92  1      OPC=nop             
  nop                                         #  24    0x76a93  1      OPC=nop             
  nop                                         #  25    0x76a94  1      OPC=nop             
  nop                                         #  26    0x76a95  1      OPC=nop             
  addq %r15, %r11                             #  27    0x76a96  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x76a99  3      OPC=jmpq_r64        
  nop                                         #  29    0x76a9c  1      OPC=nop             
  nop                                         #  30    0x76a9d  1      OPC=nop             
  nop                                         #  31    0x76a9e  1      OPC=nop             
  nop                                         #  32    0x76a9f  1      OPC=nop             
  nop                                         #  33    0x76aa0  1      OPC=nop             
  nop                                         #  34    0x76aa1  1      OPC=nop             
  nop                                         #  35    0x76aa2  1      OPC=nop             
  nop                                         #  36    0x76aa3  1      OPC=nop             
  nop                                         #  37    0x76aa4  1      OPC=nop             
  nop                                         #  38    0x76aa5  1      OPC=nop             
  nop                                         #  39    0x76aa6  1      OPC=nop             
  nop                                         #  40    0x76aa7  1      OPC=nop             
  nop                                         #  41    0x76aa8  1      OPC=nop             
  nop                                         #  42    0x76aa9  1      OPC=nop             
  nop                                         #  43    0x76aaa  1      OPC=nop             
  nop                                         #  44    0x76aab  1      OPC=nop             
  nop                                         #  45    0x76aac  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb0EE13negative_signEv, .-_ZNKSt10moneypunctIcLb0EE13negative_signEv

