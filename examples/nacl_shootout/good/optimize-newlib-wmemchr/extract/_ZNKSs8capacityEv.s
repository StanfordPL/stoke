  .text
  .globl _ZNKSs8capacityEv
  .type _ZNKSs8capacityEv, @function

#! file-offset 0xea7e0
#! rip-offset  0xaa7e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs8capacityEv:            #        0xaa7e0  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaa7e0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaa7e2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0xaa7e4  4      OPC=movl_r32_m32    
  popq %r11                    #  4     0xaa7e8  2      OPC=popq_r64_1      
  subl $0xc, %eax              #  5     0xaa7ea  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  6     0xaa7ed  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax  #  7     0xaa7ef  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  8     0xaa7f4  7      OPC=andl_r32_imm32  
  nop                          #  9     0xaa7fb  1      OPC=nop             
  nop                          #  10    0xaa7fc  1      OPC=nop             
  nop                          #  11    0xaa7fd  1      OPC=nop             
  nop                          #  12    0xaa7fe  1      OPC=nop             
  addq %r15, %r11              #  13    0xaa7ff  3      OPC=addq_r64_r64    
  jmpq %r11                    #  14    0xaa802  3      OPC=jmpq_r64        
  nop                          #  15    0xaa805  1      OPC=nop             
  nop                          #  16    0xaa806  1      OPC=nop             
                                                                            
.size _ZNKSs8capacityEv, .-_ZNKSs8capacityEv

