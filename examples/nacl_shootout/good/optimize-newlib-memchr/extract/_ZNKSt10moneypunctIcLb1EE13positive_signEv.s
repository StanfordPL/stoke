  .text
  .globl _ZNKSt10moneypunctIcLb1EE13positive_signEv
  .type _ZNKSt10moneypunctIcLb1EE13positive_signEv, @function

#! file-offset 0xb76c0
#! rip-offset  0x776c0
#! capacity    64 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIcLb1EE13positive_signEv:  #        0x776c0  0      OPC=<label>         
  movl %esi, %esi                             #  1     0x776c0  2      OPC=movl_r32_r32    
  pushq %rbx                                  #  2     0x776c2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                             #  3     0x776c3  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  4     0x776c5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                    #  5     0x776c7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                             #  6     0x776cb  2      OPC=movl_r32_r32    
  movl %eax, %eax                             #  7     0x776cd  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                #  8     0x776cf  5      OPC=movl_r32_m32    
  nop                                         #  9     0x776d4  1      OPC=nop             
  nop                                         #  10    0x776d5  1      OPC=nop             
  nop                                         #  11    0x776d6  1      OPC=nop             
  nop                                         #  12    0x776d7  1      OPC=nop             
  andl $0xffffffe0, %eax                      #  13    0x776d8  6      OPC=andl_r32_imm32  
  nop                                         #  14    0x776de  1      OPC=nop             
  nop                                         #  15    0x776df  1      OPC=nop             
  nop                                         #  16    0x776e0  1      OPC=nop             
  addq %r15, %rax                             #  17    0x776e1  3      OPC=addq_r64_r64    
  callq %rax                                  #  18    0x776e4  2      OPC=callq_r64       
  movl %ebx, %eax                             #  19    0x776e6  2      OPC=movl_r32_r32    
  popq %rbx                                   #  20    0x776e8  1      OPC=popq_r64_1      
  popq %r11                                   #  21    0x776e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                     #  22    0x776eb  7      OPC=andl_r32_imm32  
  nop                                         #  23    0x776f2  1      OPC=nop             
  nop                                         #  24    0x776f3  1      OPC=nop             
  nop                                         #  25    0x776f4  1      OPC=nop             
  nop                                         #  26    0x776f5  1      OPC=nop             
  addq %r15, %r11                             #  27    0x776f6  3      OPC=addq_r64_r64    
  jmpq %r11                                   #  28    0x776f9  3      OPC=jmpq_r64        
  nop                                         #  29    0x776fc  1      OPC=nop             
  nop                                         #  30    0x776fd  1      OPC=nop             
  nop                                         #  31    0x776fe  1      OPC=nop             
  nop                                         #  32    0x776ff  1      OPC=nop             
  nop                                         #  33    0x77700  1      OPC=nop             
  nop                                         #  34    0x77701  1      OPC=nop             
  nop                                         #  35    0x77702  1      OPC=nop             
  nop                                         #  36    0x77703  1      OPC=nop             
  nop                                         #  37    0x77704  1      OPC=nop             
  nop                                         #  38    0x77705  1      OPC=nop             
  nop                                         #  39    0x77706  1      OPC=nop             
  nop                                         #  40    0x77707  1      OPC=nop             
  nop                                         #  41    0x77708  1      OPC=nop             
  nop                                         #  42    0x77709  1      OPC=nop             
  nop                                         #  43    0x7770a  1      OPC=nop             
  nop                                         #  44    0x7770b  1      OPC=nop             
  nop                                         #  45    0x7770c  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIcLb1EE13positive_signEv, .-_ZNKSt10moneypunctIcLb1EE13positive_signEv

