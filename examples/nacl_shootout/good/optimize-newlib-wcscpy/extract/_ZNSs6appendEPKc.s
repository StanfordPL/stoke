  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0xec6a0
#! rip-offset  0xac6a0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSs6appendEPKc:         #        0xac6a0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xac6a0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xac6a5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xac6a8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xac6ad  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xac6b0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xac6b3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xac6b5  3      OPC=movl_r32_r32   
  nop                      #  8     0xac6b8  1      OPC=nop            
  nop                      #  9     0xac6b9  1      OPC=nop            
  nop                      #  10    0xac6ba  1      OPC=nop            
  callq .strlen            #  11    0xac6bb  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xac6c0  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xac6c3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xac6c5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xac6ca  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xac6cf  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xac6d1  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xac6d4  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6appendEPKcj  #  19    0xac6d7  5      OPC=jmpq_label_1   
  nop                      #  20    0xac6dc  1      OPC=nop            
  nop                      #  21    0xac6dd  1      OPC=nop            
  nop                      #  22    0xac6de  1      OPC=nop            
  nop                      #  23    0xac6df  1      OPC=nop            
                                                                       
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

