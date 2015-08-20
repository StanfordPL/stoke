  .text
  .globl _ZNKSs9_M_ibeginEv
  .type _ZNKSs9_M_ibeginEv, @function

#! file-offset 0xea580
#! rip-offset  0xaa580
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs9_M_ibeginEv:        #        0xaa580  0      OPC=<label>         
  popq %r11                 #  1     0xaa580  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa582  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa584  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa586  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa58a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa591  1      OPC=nop             
  nop                       #  7     0xaa592  1      OPC=nop             
  nop                       #  8     0xaa593  1      OPC=nop             
  nop                       #  9     0xaa594  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa595  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa598  3      OPC=jmpq_r64        
  nop                       #  12    0xaa59b  1      OPC=nop             
  nop                       #  13    0xaa59c  1      OPC=nop             
  nop                       #  14    0xaa59d  1      OPC=nop             
  nop                       #  15    0xaa59e  1      OPC=nop             
  nop                       #  16    0xaa59f  1      OPC=nop             
  nop                       #  17    0xaa5a0  1      OPC=nop             
  nop                       #  18    0xaa5a1  1      OPC=nop             
  nop                       #  19    0xaa5a2  1      OPC=nop             
  nop                       #  20    0xaa5a3  1      OPC=nop             
  nop                       #  21    0xaa5a4  1      OPC=nop             
  nop                       #  22    0xaa5a5  1      OPC=nop             
  nop                       #  23    0xaa5a6  1      OPC=nop             
                                                                         
.size _ZNKSs9_M_ibeginEv, .-_ZNKSs9_M_ibeginEv

