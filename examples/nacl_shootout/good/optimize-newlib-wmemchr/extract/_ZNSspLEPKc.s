  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0xec9e0
#! rip-offset  0xac9e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSspLEPKc:              #        0xac9e0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xac9e0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xac9e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xac9e8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xac9ed  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xac9f0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xac9f3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xac9f5  3      OPC=movl_r32_r32   
  nop                      #  8     0xac9f8  1      OPC=nop            
  nop                      #  9     0xac9f9  1      OPC=nop            
  nop                      #  10    0xac9fa  1      OPC=nop            
  callq .strlen            #  11    0xac9fb  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xaca00  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xaca03  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xaca05  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xaca0a  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xaca0f  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xaca11  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xaca14  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6appendEPKcj  #  19    0xaca17  5      OPC=jmpq_label_1   
  nop                      #  20    0xaca1c  1      OPC=nop            
  nop                      #  21    0xaca1d  1      OPC=nop            
  nop                      #  22    0xaca1e  1      OPC=nop            
  nop                      #  23    0xaca1f  1      OPC=nop            
                                                                       
.size _ZNSspLEPKc, .-_ZNSspLEPKc

