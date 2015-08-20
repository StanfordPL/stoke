  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0xec9a0
#! rip-offset  0xac9a0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSs6appendEPKc:         #        0xac9a0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xac9a0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xac9a5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xac9a8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xac9ad  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xac9b0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xac9b3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xac9b5  3      OPC=movl_r32_r32   
  nop                      #  8     0xac9b8  1      OPC=nop            
  nop                      #  9     0xac9b9  1      OPC=nop            
  nop                      #  10    0xac9ba  1      OPC=nop            
  callq .strlen            #  11    0xac9bb  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xac9c0  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xac9c3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xac9c5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xac9ca  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xac9cf  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xac9d1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xac9d4  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6appendEPKcj  #  19    0xac9d7  5      OPC=jmpq_label_1   
  nop                      #  20    0xac9dc  1      OPC=nop            
  nop                      #  21    0xac9dd  1      OPC=nop            
  nop                      #  22    0xac9de  1      OPC=nop            
  nop                      #  23    0xac9df  1      OPC=nop            
                                                                       
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

