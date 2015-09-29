  .text
  .globl _ZNKSt10moneypunctIwLb0EE11curr_symbolEv
  .type _ZNKSt10moneypunctIwLb0EE11curr_symbolEv, @function

#! file-offset 0xf03c0
#! rip-offset  0xb03c0
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11curr_symbolEv:  #        0xb03c0  0      OPC=<label>         
  movl %esi, %esi                           #  1     0xb03c0  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0xb03c2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0xb03c3  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0xb03c5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0xb03c7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0xb03cb  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0xb03cd  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0xb03cf  5      OPC=movl_r32_m32    
  nop                                       #  9     0xb03d4  1      OPC=nop             
  nop                                       #  10    0xb03d5  1      OPC=nop             
  nop                                       #  11    0xb03d6  1      OPC=nop             
  nop                                       #  12    0xb03d7  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0xb03d8  6      OPC=andl_r32_imm32  
  nop                                       #  14    0xb03de  1      OPC=nop             
  nop                                       #  15    0xb03df  1      OPC=nop             
  nop                                       #  16    0xb03e0  1      OPC=nop             
  addq %r15, %rax                           #  17    0xb03e1  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0xb03e4  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0xb03e6  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0xb03e8  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0xb03e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0xb03eb  7      OPC=andl_r32_imm32  
  nop                                       #  23    0xb03f2  1      OPC=nop             
  nop                                       #  24    0xb03f3  1      OPC=nop             
  nop                                       #  25    0xb03f4  1      OPC=nop             
  nop                                       #  26    0xb03f5  1      OPC=nop             
  addq %r15, %r11                           #  27    0xb03f6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0xb03f9  3      OPC=jmpq_r64        
  nop                                       #  29    0xb03fc  1      OPC=nop             
  nop                                       #  30    0xb03fd  1      OPC=nop             
  nop                                       #  31    0xb03fe  1      OPC=nop             
  nop                                       #  32    0xb03ff  1      OPC=nop             
  nop                                       #  33    0xb0400  1      OPC=nop             
  nop                                       #  34    0xb0401  1      OPC=nop             
  nop                                       #  35    0xb0402  1      OPC=nop             
  nop                                       #  36    0xb0403  1      OPC=nop             
  nop                                       #  37    0xb0404  1      OPC=nop             
  nop                                       #  38    0xb0405  1      OPC=nop             
  nop                                       #  39    0xb0406  1      OPC=nop             
  nop                                       #  40    0xb0407  1      OPC=nop             
  nop                                       #  41    0xb0408  1      OPC=nop             
  nop                                       #  42    0xb0409  1      OPC=nop             
  nop                                       #  43    0xb040a  1      OPC=nop             
  nop                                       #  44    0xb040b  1      OPC=nop             
  nop                                       #  45    0xb040c  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11curr_symbolEv, .-_ZNKSt10moneypunctIwLb0EE11curr_symbolEv

