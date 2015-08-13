  .text
  .globl _ZNKSt10moneypunctIcLb1EE11curr_symbolEv
  .type _ZNKSt10moneypunctIcLb1EE11curr_symbolEv, @function

#! file-offset 0xb6c60
#! rip-offset  0x76c60
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE11curr_symbolEv:  #        0x76c60  0      OPC=<label>         
  movl %esi, %esi                           #  1     0x76c60  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0x76c62  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0x76c63  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0x76c65  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0x76c67  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0x76c6b  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0x76c6d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0x76c6f  5      OPC=movl_r32_m32    
  nop                                       #  9     0x76c74  1      OPC=nop             
  nop                                       #  10    0x76c75  1      OPC=nop             
  nop                                       #  11    0x76c76  1      OPC=nop             
  nop                                       #  12    0x76c77  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0x76c78  6      OPC=andl_r32_imm32  
  nop                                       #  14    0x76c7e  1      OPC=nop             
  nop                                       #  15    0x76c7f  1      OPC=nop             
  nop                                       #  16    0x76c80  1      OPC=nop             
  addq %r15, %rax                           #  17    0x76c81  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0x76c84  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0x76c86  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0x76c88  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0x76c89  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0x76c8b  7      OPC=andl_r32_imm32  
  nop                                       #  23    0x76c92  1      OPC=nop             
  nop                                       #  24    0x76c93  1      OPC=nop             
  nop                                       #  25    0x76c94  1      OPC=nop             
  nop                                       #  26    0x76c95  1      OPC=nop             
  addq %r15, %r11                           #  27    0x76c96  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0x76c99  3      OPC=jmpq_r64        
  nop                                       #  29    0x76c9c  1      OPC=nop             
  nop                                       #  30    0x76c9d  1      OPC=nop             
  nop                                       #  31    0x76c9e  1      OPC=nop             
  nop                                       #  32    0x76c9f  1      OPC=nop             
  nop                                       #  33    0x76ca0  1      OPC=nop             
  nop                                       #  34    0x76ca1  1      OPC=nop             
  nop                                       #  35    0x76ca2  1      OPC=nop             
  nop                                       #  36    0x76ca3  1      OPC=nop             
  nop                                       #  37    0x76ca4  1      OPC=nop             
  nop                                       #  38    0x76ca5  1      OPC=nop             
  nop                                       #  39    0x76ca6  1      OPC=nop             
  nop                                       #  40    0x76ca7  1      OPC=nop             
  nop                                       #  41    0x76ca8  1      OPC=nop             
  nop                                       #  42    0x76ca9  1      OPC=nop             
  nop                                       #  43    0x76caa  1      OPC=nop             
  nop                                       #  44    0x76cab  1      OPC=nop             
  nop                                       #  45    0x76cac  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb1EE11curr_symbolEv, .-_ZNKSt10moneypunctIcLb1EE11curr_symbolEv

