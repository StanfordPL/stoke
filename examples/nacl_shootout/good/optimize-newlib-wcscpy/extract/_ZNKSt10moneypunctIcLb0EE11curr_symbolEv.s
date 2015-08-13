  .text
  .globl _ZNKSt10moneypunctIcLb0EE11curr_symbolEv
  .type _ZNKSt10moneypunctIcLb0EE11curr_symbolEv, @function

#! file-offset 0xb69e0
#! rip-offset  0x769e0
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb0EE11curr_symbolEv:  #        0x769e0  0      OPC=<label>         
  movl %esi, %esi                           #  1     0x769e0  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0x769e2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0x769e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0x769e5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0x769e7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0x769eb  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0x769ed  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0x769ef  5      OPC=movl_r32_m32    
  nop                                       #  9     0x769f4  1      OPC=nop             
  nop                                       #  10    0x769f5  1      OPC=nop             
  nop                                       #  11    0x769f6  1      OPC=nop             
  nop                                       #  12    0x769f7  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0x769f8  6      OPC=andl_r32_imm32  
  nop                                       #  14    0x769fe  1      OPC=nop             
  nop                                       #  15    0x769ff  1      OPC=nop             
  nop                                       #  16    0x76a00  1      OPC=nop             
  addq %r15, %rax                           #  17    0x76a01  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0x76a04  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0x76a06  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0x76a08  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0x76a09  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0x76a0b  7      OPC=andl_r32_imm32  
  nop                                       #  23    0x76a12  1      OPC=nop             
  nop                                       #  24    0x76a13  1      OPC=nop             
  nop                                       #  25    0x76a14  1      OPC=nop             
  nop                                       #  26    0x76a15  1      OPC=nop             
  addq %r15, %r11                           #  27    0x76a16  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0x76a19  3      OPC=jmpq_r64        
  nop                                       #  29    0x76a1c  1      OPC=nop             
  nop                                       #  30    0x76a1d  1      OPC=nop             
  nop                                       #  31    0x76a1e  1      OPC=nop             
  nop                                       #  32    0x76a1f  1      OPC=nop             
  nop                                       #  33    0x76a20  1      OPC=nop             
  nop                                       #  34    0x76a21  1      OPC=nop             
  nop                                       #  35    0x76a22  1      OPC=nop             
  nop                                       #  36    0x76a23  1      OPC=nop             
  nop                                       #  37    0x76a24  1      OPC=nop             
  nop                                       #  38    0x76a25  1      OPC=nop             
  nop                                       #  39    0x76a26  1      OPC=nop             
  nop                                       #  40    0x76a27  1      OPC=nop             
  nop                                       #  41    0x76a28  1      OPC=nop             
  nop                                       #  42    0x76a29  1      OPC=nop             
  nop                                       #  43    0x76a2a  1      OPC=nop             
  nop                                       #  44    0x76a2b  1      OPC=nop             
  nop                                       #  45    0x76a2c  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb0EE11curr_symbolEv, .-_ZNKSt10moneypunctIcLb0EE11curr_symbolEv

