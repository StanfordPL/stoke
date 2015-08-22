  .text
  .globl append
  .type append, @function

#! file-offset 0x656c0
#! rip-offset  0x256c0
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.append:                    #        0x256c0  0      OPC=<label>         
  movl %edi, %edi           #  1     0x256c0  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  2     0x256c2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0x256c4  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)  #  4     0x256c6  8      OPC=movl_m32_imm32  
  nop                       #  5     0x256ce  1      OPC=nop             
  nop                       #  6     0x256cf  1      OPC=nop             
  nop                       #  7     0x256d0  1      OPC=nop             
  nop                       #  8     0x256d1  1      OPC=nop             
  nop                       #  9     0x256d2  1      OPC=nop             
  nop                       #  10    0x256d3  1      OPC=nop             
  nop                       #  11    0x256d4  1      OPC=nop             
  nop                       #  12    0x256d5  1      OPC=nop             
  nop                       #  13    0x256d6  1      OPC=nop             
  nop                       #  14    0x256d7  1      OPC=nop             
  nop                       #  15    0x256d8  1      OPC=nop             
  nop                       #  16    0x256d9  1      OPC=nop             
  nop                       #  17    0x256da  1      OPC=nop             
  nop                       #  18    0x256db  1      OPC=nop             
  nop                       #  19    0x256dc  1      OPC=nop             
  nop                       #  20    0x256dd  1      OPC=nop             
  nop                       #  21    0x256de  1      OPC=nop             
  nop                       #  22    0x256df  1      OPC=nop             
.L_256e0:                   #        0x256e0  0      OPC=<label>         
  movq %rsi, %rax           #  23    0x256e0  3      OPC=movq_r64_r64    
  movl %esi, %esi           #  24    0x256e3  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi  #  25    0x256e5  4      OPC=movl_r32_m32    
  testq %rsi, %rsi          #  26    0x256e9  3      OPC=testq_r64_r64   
  jne .L_256e0              #  27    0x256ec  2      OPC=jne_label       
  movl %eax, %eax           #  28    0x256ee  2      OPC=movl_r32_r32    
  movl %edi, (%r15,%rax,1)  #  29    0x256f0  4      OPC=movl_m32_r32    
  popq %r11                 #  30    0x256f4  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  31    0x256f6  7      OPC=andl_r32_imm32  
  nop                       #  32    0x256fd  1      OPC=nop             
  nop                       #  33    0x256fe  1      OPC=nop             
  nop                       #  34    0x256ff  1      OPC=nop             
  nop                       #  35    0x25700  1      OPC=nop             
  addq %r15, %r11           #  36    0x25701  3      OPC=addq_r64_r64    
  jmpq %r11                 #  37    0x25704  3      OPC=jmpq_r64        
                                                                         
.size append, .-append

