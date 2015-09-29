  .text
  .globl _ZNKSs9_M_ibeginEv
  .type _ZNKSs9_M_ibeginEv, @function

#! file-offset 0xeaca0
#! rip-offset  0xaaca0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs9_M_ibeginEv:        #        0xaaca0  0      OPC=<label>         
  popq %r11                 #  1     0xaaca0  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaaca2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaaca4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaaca6  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaacaa  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaacb1  1      OPC=nop             
  nop                       #  7     0xaacb2  1      OPC=nop             
  nop                       #  8     0xaacb3  1      OPC=nop             
  nop                       #  9     0xaacb4  1      OPC=nop             
  addq %r15, %r11           #  10    0xaacb5  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaacb8  3      OPC=jmpq_r64        
  nop                       #  12    0xaacbb  1      OPC=nop             
  nop                       #  13    0xaacbc  1      OPC=nop             
  nop                       #  14    0xaacbd  1      OPC=nop             
  nop                       #  15    0xaacbe  1      OPC=nop             
  nop                       #  16    0xaacbf  1      OPC=nop             
  nop                       #  17    0xaacc0  1      OPC=nop             
  nop                       #  18    0xaacc1  1      OPC=nop             
  nop                       #  19    0xaacc2  1      OPC=nop             
  nop                       #  20    0xaacc3  1      OPC=nop             
  nop                       #  21    0xaacc4  1      OPC=nop             
  nop                       #  22    0xaacc5  1      OPC=nop             
  nop                       #  23    0xaacc6  1      OPC=nop             
                                                                         
.size _ZNKSs9_M_ibeginEv, .-_ZNKSs9_M_ibeginEv

