  .text
  .globl _ZNKSt10moneypunctIwLb0EE11curr_symbolEv
  .type _ZNKSt10moneypunctIwLb0EE11curr_symbolEv, @function

#! file-offset 0xefca0
#! rip-offset  0xafca0
#! capacity    64 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE11curr_symbolEv:  #        0xafca0  0      OPC=<label>         
  movl %esi, %esi                           #  1     0xafca0  2      OPC=movl_r32_r32    
  pushq %rbx                                #  2     0xafca2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                           #  3     0xafca3  2      OPC=movl_r32_r32    
  movl %esi, %esi                           #  4     0xafca5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                  #  5     0xafca7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                           #  6     0xafcab  2      OPC=movl_r32_r32    
  movl %eax, %eax                           #  7     0xafcad  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax              #  8     0xafcaf  5      OPC=movl_r32_m32    
  nop                                       #  9     0xafcb4  1      OPC=nop             
  nop                                       #  10    0xafcb5  1      OPC=nop             
  nop                                       #  11    0xafcb6  1      OPC=nop             
  nop                                       #  12    0xafcb7  1      OPC=nop             
  andl $0xffffffe0, %eax                    #  13    0xafcb8  6      OPC=andl_r32_imm32  
  nop                                       #  14    0xafcbe  1      OPC=nop             
  nop                                       #  15    0xafcbf  1      OPC=nop             
  nop                                       #  16    0xafcc0  1      OPC=nop             
  addq %r15, %rax                           #  17    0xafcc1  3      OPC=addq_r64_r64    
  callq %rax                                #  18    0xafcc4  2      OPC=callq_r64       
  movl %ebx, %eax                           #  19    0xafcc6  2      OPC=movl_r32_r32    
  popq %rbx                                 #  20    0xafcc8  1      OPC=popq_r64_1      
  popq %r11                                 #  21    0xafcc9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                   #  22    0xafccb  7      OPC=andl_r32_imm32  
  nop                                       #  23    0xafcd2  1      OPC=nop             
  nop                                       #  24    0xafcd3  1      OPC=nop             
  nop                                       #  25    0xafcd4  1      OPC=nop             
  nop                                       #  26    0xafcd5  1      OPC=nop             
  addq %r15, %r11                           #  27    0xafcd6  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  28    0xafcd9  3      OPC=jmpq_r64        
  nop                                       #  29    0xafcdc  1      OPC=nop             
  nop                                       #  30    0xafcdd  1      OPC=nop             
  nop                                       #  31    0xafcde  1      OPC=nop             
  nop                                       #  32    0xafcdf  1      OPC=nop             
  nop                                       #  33    0xafce0  1      OPC=nop             
  nop                                       #  34    0xafce1  1      OPC=nop             
  nop                                       #  35    0xafce2  1      OPC=nop             
  nop                                       #  36    0xafce3  1      OPC=nop             
  nop                                       #  37    0xafce4  1      OPC=nop             
  nop                                       #  38    0xafce5  1      OPC=nop             
  nop                                       #  39    0xafce6  1      OPC=nop             
  nop                                       #  40    0xafce7  1      OPC=nop             
  nop                                       #  41    0xafce8  1      OPC=nop             
  nop                                       #  42    0xafce9  1      OPC=nop             
  nop                                       #  43    0xafcea  1      OPC=nop             
  nop                                       #  44    0xafceb  1      OPC=nop             
  nop                                       #  45    0xafcec  1      OPC=nop             
                                                                                         
.size _ZNKSt10moneypunctIwLb0EE11curr_symbolEv, .-_ZNKSt10moneypunctIwLb0EE11curr_symbolEv

