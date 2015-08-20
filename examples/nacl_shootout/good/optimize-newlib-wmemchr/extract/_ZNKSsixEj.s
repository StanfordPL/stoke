  .text
  .globl _ZNKSsixEj
  .type _ZNKSsixEj, @function

#! file-offset 0xea840
#! rip-offset  0xaa840
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSsixEj:                #        0xaa840  0      OPC=<label>         
  popq %r11                 #  1     0xaa840  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa842  2      OPC=movl_r32_r32    
  movl %esi, %eax           #  3     0xaa844  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  4     0xaa846  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax  #  5     0xaa848  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d   #  6     0xaa84c  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaa853  1      OPC=nop             
  nop                       #  8     0xaa854  1      OPC=nop             
  nop                       #  9     0xaa855  1      OPC=nop             
  nop                       #  10    0xaa856  1      OPC=nop             
  addq %r15, %r11           #  11    0xaa857  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaa85a  3      OPC=jmpq_r64        
  nop                       #  13    0xaa85d  1      OPC=nop             
  nop                       #  14    0xaa85e  1      OPC=nop             
  nop                       #  15    0xaa85f  1      OPC=nop             
  nop                       #  16    0xaa860  1      OPC=nop             
  nop                       #  17    0xaa861  1      OPC=nop             
  nop                       #  18    0xaa862  1      OPC=nop             
  nop                       #  19    0xaa863  1      OPC=nop             
  nop                       #  20    0xaa864  1      OPC=nop             
  nop                       #  21    0xaa865  1      OPC=nop             
  nop                       #  22    0xaa866  1      OPC=nop             
                                                                         
.size _ZNKSsixEj, .-_ZNKSsixEj

