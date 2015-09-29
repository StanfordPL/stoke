  .text
  .globl _ZNKSt10moneypunctIwLb1EE13negative_signEv
  .type _ZNKSt10moneypunctIwLb1EE13negative_signEv, @function

#! file-offset 0xf06c0
#! rip-offset  0xb06c0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE13negative_signEv:  #        0xb06c0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0xb06c0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0xb06c2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0xb06c3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0xb06c5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0xb06c7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0xb06cb  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0xb06cd  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %eax                #  8     0xb06cf  5      OPC=movl_r32_m32    
  nop                                         #  9     0xb06d4  1      OPC=nop             
  nop                                         #  10    0xb06d5  1      OPC=nop             
  nop                                         #  11    0xb06d6  1      OPC=nop             
  nop                                         #  12    0xb06d7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0xb06d8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0xb06de  1      OPC=nop             
  nop                                         #  15    0xb06df  1      OPC=nop             
  nop                                         #  16    0xb06e0  1      OPC=nop             
  addq %r15, %rax                             #  17    0xb06e1  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0xb06e4  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0xb06e6  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0xb06e8  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0xb06e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0xb06eb  7      OPC=andl_r32_imm32  
  nop                                         #  23    0xb06f2  1      OPC=nop             
  nop                                         #  24    0xb06f3  1      OPC=nop             
  nop                                         #  25    0xb06f4  1      OPC=nop             
  nop                                         #  26    0xb06f5  1      OPC=nop             
  addq %r15, %r11                             #  27    0xb06f6  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0xb06f9  3      OPC=jmpq_r64        
  nop                                         #  29    0xb06fc  1      OPC=nop             
  nop                                         #  30    0xb06fd  1      OPC=nop             
  nop                                         #  31    0xb06fe  1      OPC=nop             
  nop                                         #  32    0xb06ff  1      OPC=nop             
  nop                                         #  33    0xb0700  1      OPC=nop             
  nop                                         #  34    0xb0701  1      OPC=nop             
  nop                                         #  35    0xb0702  1      OPC=nop             
  nop                                         #  36    0xb0703  1      OPC=nop             
  nop                                         #  37    0xb0704  1      OPC=nop             
  nop                                         #  38    0xb0705  1      OPC=nop             
  nop                                         #  39    0xb0706  1      OPC=nop             
  nop                                         #  40    0xb0707  1      OPC=nop             
  nop                                         #  41    0xb0708  1      OPC=nop             
  nop                                         #  42    0xb0709  1      OPC=nop             
  nop                                         #  43    0xb070a  1      OPC=nop             
  nop                                         #  44    0xb070b  1      OPC=nop             
  nop                                         #  45    0xb070c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb1EE13negative_signEv, .-_ZNKSt10moneypunctIwLb1EE13negative_signEv

