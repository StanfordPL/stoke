  .text
  .globl List_RemoveAll
  .type List_RemoveAll, @function

#! file-offset 0x666c0
#! rip-offset  0x266c0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
.List_RemoveAll:                      #        0x266c0  0      OPC=<label>         
  movl %edi, %edi                     #  1     0x266c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                     #  2     0x266c2  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)         #  3     0x266c4  9      OPC=movl_m32_imm32  
  movl %edi, %edi                     #  4     0x266cd  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0xc(%r15,%rdi,1)  #  5     0x266cf  9      OPC=movl_m32_imm32  
  popq %r11                           #  6     0x266d8  2      OPC=popq_r64_1      
  nop                                 #  7     0x266da  1      OPC=nop             
  nop                                 #  8     0x266db  1      OPC=nop             
  nop                                 #  9     0x266dc  1      OPC=nop             
  nop                                 #  10    0x266dd  1      OPC=nop             
  nop                                 #  11    0x266de  1      OPC=nop             
  nop                                 #  12    0x266df  1      OPC=nop             
  andl $0xffffffe0, %r11d             #  13    0x266e0  7      OPC=andl_r32_imm32  
  nop                                 #  14    0x266e7  1      OPC=nop             
  nop                                 #  15    0x266e8  1      OPC=nop             
  nop                                 #  16    0x266e9  1      OPC=nop             
  nop                                 #  17    0x266ea  1      OPC=nop             
  addq %r15, %r11                     #  18    0x266eb  3      OPC=addq_r64_r64    
  jmpq %r11                           #  19    0x266ee  3      OPC=jmpq_r64        
  nop                                 #  20    0x266f1  1      OPC=nop             
  nop                                 #  21    0x266f2  1      OPC=nop             
  nop                                 #  22    0x266f3  1      OPC=nop             
  nop                                 #  23    0x266f4  1      OPC=nop             
  nop                                 #  24    0x266f5  1      OPC=nop             
  nop                                 #  25    0x266f6  1      OPC=nop             
  nop                                 #  26    0x266f7  1      OPC=nop             
  nop                                 #  27    0x266f8  1      OPC=nop             
  nop                                 #  28    0x266f9  1      OPC=nop             
  nop                                 #  29    0x266fa  1      OPC=nop             
  nop                                 #  30    0x266fb  1      OPC=nop             
  nop                                 #  31    0x266fc  1      OPC=nop             
  nop                                 #  32    0x266fd  1      OPC=nop             
  nop                                 #  33    0x266fe  1      OPC=nop             
  nop                                 #  34    0x266ff  1      OPC=nop             
  nop                                 #  35    0x26700  1      OPC=nop             
  nop                                 #  36    0x26701  1      OPC=nop             
  nop                                 #  37    0x26702  1      OPC=nop             
  nop                                 #  38    0x26703  1      OPC=nop             
  nop                                 #  39    0x26704  1      OPC=nop             
  nop                                 #  40    0x26705  1      OPC=nop             
  nop                                 #  41    0x26706  1      OPC=nop             
                                                                                   
.size List_RemoveAll, .-List_RemoveAll

