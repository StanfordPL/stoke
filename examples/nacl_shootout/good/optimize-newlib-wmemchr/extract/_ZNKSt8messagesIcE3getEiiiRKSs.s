  .text
  .globl _ZNKSt8messagesIcE3getEiiiRKSs
  .type _ZNKSt8messagesIcE3getEiiiRKSs, @function

#! file-offset 0xb9080
#! rip-offset  0x79080
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE3getEiiiRKSs:  #        0x79080  0      OPC=<label>         
  movl %esi, %esi                 #  1     0x79080  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0x79082  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0x79083  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0x79085  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0x79087  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0x7908b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0x7908d  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax     #  8     0x7908f  5      OPC=movl_r32_m32    
  nop                             #  9     0x79094  1      OPC=nop             
  nop                             #  10    0x79095  1      OPC=nop             
  nop                             #  11    0x79096  1      OPC=nop             
  nop                             #  12    0x79097  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0x79098  6      OPC=andl_r32_imm32  
  nop                             #  14    0x7909e  1      OPC=nop             
  nop                             #  15    0x7909f  1      OPC=nop             
  nop                             #  16    0x790a0  1      OPC=nop             
  addq %r15, %rax                 #  17    0x790a1  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0x790a4  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0x790a6  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0x790a8  1      OPC=popq_r64_1      
  popq %r11                       #  21    0x790a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0x790ab  7      OPC=andl_r32_imm32  
  nop                             #  23    0x790b2  1      OPC=nop             
  nop                             #  24    0x790b3  1      OPC=nop             
  nop                             #  25    0x790b4  1      OPC=nop             
  nop                             #  26    0x790b5  1      OPC=nop             
  addq %r15, %r11                 #  27    0x790b6  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0x790b9  3      OPC=jmpq_r64        
  nop                             #  29    0x790bc  1      OPC=nop             
  nop                             #  30    0x790bd  1      OPC=nop             
  nop                             #  31    0x790be  1      OPC=nop             
  nop                             #  32    0x790bf  1      OPC=nop             
  nop                             #  33    0x790c0  1      OPC=nop             
  nop                             #  34    0x790c1  1      OPC=nop             
  nop                             #  35    0x790c2  1      OPC=nop             
  nop                             #  36    0x790c3  1      OPC=nop             
  nop                             #  37    0x790c4  1      OPC=nop             
  nop                             #  38    0x790c5  1      OPC=nop             
  nop                             #  39    0x790c6  1      OPC=nop             
  nop                             #  40    0x790c7  1      OPC=nop             
  nop                             #  41    0x790c8  1      OPC=nop             
  nop                             #  42    0x790c9  1      OPC=nop             
  nop                             #  43    0x790ca  1      OPC=nop             
  nop                             #  44    0x790cb  1      OPC=nop             
  nop                             #  45    0x790cc  1      OPC=nop             
                                                                               
.size _ZNKSt8messagesIcE3getEiiiRKSs, .-_ZNKSt8messagesIcE3getEiiiRKSs

