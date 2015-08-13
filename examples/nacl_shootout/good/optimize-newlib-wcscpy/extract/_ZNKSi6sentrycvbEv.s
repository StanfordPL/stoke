  .text
  .globl _ZNKSi6sentrycvbEv
  .type _ZNKSi6sentrycvbEv, @function

#! file-offset 0xa6e80
#! rip-offset  0x66e80
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNKSi6sentrycvbEv:          #        0x66e80  0      OPC=<label>         
  popq %r11                   #  1     0x66e80  2      OPC=popq_r64_1      
  movl %edi, %edi             #  2     0x66e82  2      OPC=movl_r32_r32    
  movl %edi, %edi             #  3     0x66e84  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax  #  4     0x66e86  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d     #  5     0x66e8b  7      OPC=andl_r32_imm32  
  nop                         #  6     0x66e92  1      OPC=nop             
  nop                         #  7     0x66e93  1      OPC=nop             
  nop                         #  8     0x66e94  1      OPC=nop             
  nop                         #  9     0x66e95  1      OPC=nop             
  addq %r15, %r11             #  10    0x66e96  3      OPC=addq_r64_r64    
  jmpq %r11                   #  11    0x66e99  3      OPC=jmpq_r64        
  nop                         #  12    0x66e9c  1      OPC=nop             
  nop                         #  13    0x66e9d  1      OPC=nop             
  nop                         #  14    0x66e9e  1      OPC=nop             
  nop                         #  15    0x66e9f  1      OPC=nop             
  nop                         #  16    0x66ea0  1      OPC=nop             
  nop                         #  17    0x66ea1  1      OPC=nop             
  nop                         #  18    0x66ea2  1      OPC=nop             
  nop                         #  19    0x66ea3  1      OPC=nop             
  nop                         #  20    0x66ea4  1      OPC=nop             
  nop                         #  21    0x66ea5  1      OPC=nop             
  nop                         #  22    0x66ea6  1      OPC=nop             
                                                                           
.size _ZNKSi6sentrycvbEv, .-_ZNKSi6sentrycvbEv

