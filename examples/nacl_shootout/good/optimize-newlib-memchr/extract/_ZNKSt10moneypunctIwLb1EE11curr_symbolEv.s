  .text
  .globl _ZNKSt10moneypunctIwLb1EE11curr_symbolEv
  .type _ZNKSt10moneypunctIwLb1EE11curr_symbolEv, @function

#! file-offset 0xf0640
#! rip-offset  0xb0640
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE11curr_symbolEv:  #        0xb0640  0      OPC=<label>         
  movl %esi, %esi                           #  1     0xb0640  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0xb0642  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0xb0643  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0xb0645  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0xb0647  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0xb064b  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0xb064d  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0xb064f  5      OPC=movl_r32_m32    
  nop                                       #  9     0xb0654  1      OPC=nop             
  nop                                       #  10    0xb0655  1      OPC=nop             
  nop                                       #  11    0xb0656  1      OPC=nop             
  nop                                       #  12    0xb0657  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0xb0658  6      OPC=andl_r32_imm32  
  nop                                       #  14    0xb065e  1      OPC=nop             
  nop                                       #  15    0xb065f  1      OPC=nop             
  nop                                       #  16    0xb0660  1      OPC=nop             
  addq %r15, %rax                           #  17    0xb0661  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0xb0664  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0xb0666  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0xb0668  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0xb0669  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0xb066b  7      OPC=andl_r32_imm32  
  nop                                       #  23    0xb0672  1      OPC=nop             
  nop                                       #  24    0xb0673  1      OPC=nop             
  nop                                       #  25    0xb0674  1      OPC=nop             
  nop                                       #  26    0xb0675  1      OPC=nop             
  addq %r15, %r11                           #  27    0xb0676  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0xb0679  3      OPC=jmpq_r64        
  nop                                       #  29    0xb067c  1      OPC=nop             
  nop                                       #  30    0xb067d  1      OPC=nop             
  nop                                       #  31    0xb067e  1      OPC=nop             
  nop                                       #  32    0xb067f  1      OPC=nop             
  nop                                       #  33    0xb0680  1      OPC=nop             
  nop                                       #  34    0xb0681  1      OPC=nop             
  nop                                       #  35    0xb0682  1      OPC=nop             
  nop                                       #  36    0xb0683  1      OPC=nop             
  nop                                       #  37    0xb0684  1      OPC=nop             
  nop                                       #  38    0xb0685  1      OPC=nop             
  nop                                       #  39    0xb0686  1      OPC=nop             
  nop                                       #  40    0xb0687  1      OPC=nop             
  nop                                       #  41    0xb0688  1      OPC=nop             
  nop                                       #  42    0xb0689  1      OPC=nop             
  nop                                       #  43    0xb068a  1      OPC=nop             
  nop                                       #  44    0xb068b  1      OPC=nop             
  nop                                       #  45    0xb068c  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb1EE11curr_symbolEv, .-_ZNKSt10moneypunctIwLb1EE11curr_symbolEv

