  .text
  .globl _ZNKSs8capacityEv
  .type _ZNKSs8capacityEv, @function

#! file-offset 0xeaf00
#! rip-offset  0xaaf00
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSs8capacityEv:            #        0xaaf00  0      OPC=<label>         
  movl %edi, %edi              #  1     0xaaf00  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0xaaf02  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  3     0xaaf04  4      OPC=movl_r32_m32    
  popq %r11                    #  4     0xaaf08  2      OPC=popq_r64_1      
  subl $0xc, %eax              #  5     0xaaf0a  3      OPC=subl_r32_imm8   
  movl %eax, %eax              #  6     0xaaf0d  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax  #  7     0xaaf0f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  8     0xaaf14  7      OPC=andl_r32_imm32  
  nop                          #  9     0xaaf1b  1      OPC=nop             
  nop                          #  10    0xaaf1c  1      OPC=nop             
  nop                          #  11    0xaaf1d  1      OPC=nop             
  nop                          #  12    0xaaf1e  1      OPC=nop             
  addq %r15, %r11              #  13    0xaaf1f  3      OPC=addq_r64_r64    
  jmpq %r11                    #  14    0xaaf22  3      OPC=jmpq_r64        
  nop                          #  15    0xaaf25  1      OPC=nop             
  nop                          #  16    0xaaf26  1      OPC=nop             
                                                                            
.size _ZNKSs8capacityEv, .-_ZNKSs8capacityEv

