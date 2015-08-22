  .text
  .globl _ZNKSt10moneypunctIcLb1EE11curr_symbolEv
  .type _ZNKSt10moneypunctIcLb1EE11curr_symbolEv, @function

#! file-offset 0xb7680
#! rip-offset  0x77680
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE11curr_symbolEv:  #        0x77680  0      OPC=<label>         
  movl %esi, %esi                           #  1     0x77680  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0x77682  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0x77683  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0x77685  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0x77687  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0x7768b  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0x7768d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0x7768f  5      OPC=movl_r32_m32    
  nop                                       #  9     0x77694  1      OPC=nop             
  nop                                       #  10    0x77695  1      OPC=nop             
  nop                                       #  11    0x77696  1      OPC=nop             
  nop                                       #  12    0x77697  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0x77698  6      OPC=andl_r32_imm32  
  nop                                       #  14    0x7769e  1      OPC=nop             
  nop                                       #  15    0x7769f  1      OPC=nop             
  nop                                       #  16    0x776a0  1      OPC=nop             
  addq %r15, %rax                           #  17    0x776a1  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0x776a4  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0x776a6  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0x776a8  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0x776a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0x776ab  7      OPC=andl_r32_imm32  
  nop                                       #  23    0x776b2  1      OPC=nop             
  nop                                       #  24    0x776b3  1      OPC=nop             
  nop                                       #  25    0x776b4  1      OPC=nop             
  nop                                       #  26    0x776b5  1      OPC=nop             
  addq %r15, %r11                           #  27    0x776b6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0x776b9  3      OPC=jmpq_r64        
  nop                                       #  29    0x776bc  1      OPC=nop             
  nop                                       #  30    0x776bd  1      OPC=nop             
  nop                                       #  31    0x776be  1      OPC=nop             
  nop                                       #  32    0x776bf  1      OPC=nop             
  nop                                       #  33    0x776c0  1      OPC=nop             
  nop                                       #  34    0x776c1  1      OPC=nop             
  nop                                       #  35    0x776c2  1      OPC=nop             
  nop                                       #  36    0x776c3  1      OPC=nop             
  nop                                       #  37    0x776c4  1      OPC=nop             
  nop                                       #  38    0x776c5  1      OPC=nop             
  nop                                       #  39    0x776c6  1      OPC=nop             
  nop                                       #  40    0x776c7  1      OPC=nop             
  nop                                       #  41    0x776c8  1      OPC=nop             
  nop                                       #  42    0x776c9  1      OPC=nop             
  nop                                       #  43    0x776ca  1      OPC=nop             
  nop                                       #  44    0x776cb  1      OPC=nop             
  nop                                       #  45    0x776cc  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIcLb1EE11curr_symbolEv, .-_ZNKSt10moneypunctIcLb1EE11curr_symbolEv

