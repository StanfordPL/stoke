  .text
  .globl _ZNKSt8messagesIcE3getEiiiRKSs
  .type _ZNKSt8messagesIcE3getEiiiRKSs, @function

#! file-offset 0xb8d80
#! rip-offset  0x78d80
#! capacity    64 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE3getEiiiRKSs:  #        0x78d80  0      OPC=<label>         
  movl %esi, %esi                 #  1     0x78d80  2      OPC=movl_r32_r32    
  pushq %rbx                      #  2     0x78d82  1      OPC=pushq_r64_1     
  movl %edi, %ebx                 #  3     0x78d83  2      OPC=movl_r32_r32    
  movl %esi, %esi                 #  4     0x78d85  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax        #  5     0x78d87  4      OPC=movl_r32_m32    
  movl %ebx, %edi                 #  6     0x78d8b  2      OPC=movl_r32_r32    
  movl %eax, %eax                 #  7     0x78d8d  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax     #  8     0x78d8f  5      OPC=movl_r32_m32    
  nop                             #  9     0x78d94  1      OPC=nop             
  nop                             #  10    0x78d95  1      OPC=nop             
  nop                             #  11    0x78d96  1      OPC=nop             
  nop                             #  12    0x78d97  1      OPC=nop             
  andl $0xffffffe0, %eax          #  13    0x78d98  6      OPC=andl_r32_imm32  
  nop                             #  14    0x78d9e  1      OPC=nop             
  nop                             #  15    0x78d9f  1      OPC=nop             
  nop                             #  16    0x78da0  1      OPC=nop             
  addq %r15, %rax                 #  17    0x78da1  3      OPC=addq_r64_r64    
  callq %rax                      #  18    0x78da4  2      OPC=callq_r64       
  movl %ebx, %eax                 #  19    0x78da6  2      OPC=movl_r32_r32    
  popq %rbx                       #  20    0x78da8  1      OPC=popq_r64_1      
  popq %r11                       #  21    0x78da9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  22    0x78dab  7      OPC=andl_r32_imm32  
  nop                             #  23    0x78db2  1      OPC=nop             
  nop                             #  24    0x78db3  1      OPC=nop             
  nop                             #  25    0x78db4  1      OPC=nop             
  nop                             #  26    0x78db5  1      OPC=nop             
  addq %r15, %r11                 #  27    0x78db6  3      OPC=addq_r64_r64    
  jmpq %r11                       #  28    0x78db9  3      OPC=jmpq_r64        
  nop                             #  29    0x78dbc  1      OPC=nop             
  nop                             #  30    0x78dbd  1      OPC=nop             
  nop                             #  31    0x78dbe  1      OPC=nop             
  nop                             #  32    0x78dbf  1      OPC=nop             
  nop                             #  33    0x78dc0  1      OPC=nop             
  nop                             #  34    0x78dc1  1      OPC=nop             
  nop                             #  35    0x78dc2  1      OPC=nop             
  nop                             #  36    0x78dc3  1      OPC=nop             
  nop                             #  37    0x78dc4  1      OPC=nop             
  nop                             #  38    0x78dc5  1      OPC=nop             
  nop                             #  39    0x78dc6  1      OPC=nop             
  nop                             #  40    0x78dc7  1      OPC=nop             
  nop                             #  41    0x78dc8  1      OPC=nop             
  nop                             #  42    0x78dc9  1      OPC=nop             
  nop                             #  43    0x78dca  1      OPC=nop             
  nop                             #  44    0x78dcb  1      OPC=nop             
  nop                             #  45    0x78dcc  1      OPC=nop             
                                                                               
.size _ZNKSt8messagesIcE3getEiiiRKSs, .-_ZNKSt8messagesIcE3getEiiiRKSs

