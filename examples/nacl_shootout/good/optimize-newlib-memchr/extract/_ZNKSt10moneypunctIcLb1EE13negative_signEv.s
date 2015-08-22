  .text
  .globl _ZNKSt10moneypunctIcLb1EE13negative_signEv
  .type _ZNKSt10moneypunctIcLb1EE13negative_signEv, @function

#! file-offset 0xb7700
#! rip-offset  0x77700
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13negative_signEv:  #        0x77700  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x77700  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x77702  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x77703  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x77705  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x77707  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x7770b  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x7770d  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0x7770f  5      OPC=movl_r32_m32    
  nop                                         #  9     0x77714  1      OPC=nop             
  nop                                         #  10    0x77715  1      OPC=nop             
  nop                                         #  11    0x77716  1      OPC=nop             
  nop                                         #  12    0x77717  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x77718  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x7771e  1      OPC=nop             
  nop                                         #  15    0x7771f  1      OPC=nop             
  nop                                         #  16    0x77720  1      OPC=nop             
  addq %r15, %rax                             #  17    0x77721  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x77724  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x77726  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x77728  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x77729  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x7772b  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x77732  1      OPC=nop             
  nop                                         #  24    0x77733  1      OPC=nop             
  nop                                         #  25    0x77734  1      OPC=nop             
  nop                                         #  26    0x77735  1      OPC=nop             
  addq %r15, %r11                             #  27    0x77736  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x77739  3      OPC=jmpq_r64        
  nop                                         #  29    0x7773c  1      OPC=nop             
  nop                                         #  30    0x7773d  1      OPC=nop             
  nop                                         #  31    0x7773e  1      OPC=nop             
  nop                                         #  32    0x7773f  1      OPC=nop             
  nop                                         #  33    0x77740  1      OPC=nop             
  nop                                         #  34    0x77741  1      OPC=nop             
  nop                                         #  35    0x77742  1      OPC=nop             
  nop                                         #  36    0x77743  1      OPC=nop             
  nop                                         #  37    0x77744  1      OPC=nop             
  nop                                         #  38    0x77745  1      OPC=nop             
  nop                                         #  39    0x77746  1      OPC=nop             
  nop                                         #  40    0x77747  1      OPC=nop             
  nop                                         #  41    0x77748  1      OPC=nop             
  nop                                         #  42    0x77749  1      OPC=nop             
  nop                                         #  43    0x7774a  1      OPC=nop             
  nop                                         #  44    0x7774b  1      OPC=nop             
  nop                                         #  45    0x7774c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13negative_signEv, .-_ZNKSt10moneypunctIcLb1EE13negative_signEv

