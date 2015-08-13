  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0xec6e0
#! rip-offset  0xac6e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSspLEPKc:              #        0xac6e0  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xac6e0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xac6e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xac6e8  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xac6ed  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xac6f0  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xac6f3  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xac6f5  3      OPC=movl_r32_r32   
  nop                      #  8     0xac6f8  1      OPC=nop            
  nop                      #  9     0xac6f9  1      OPC=nop            
  nop                      #  10    0xac6fa  1      OPC=nop            
  callq .strlen            #  11    0xac6fb  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xac700  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xac703  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xac705  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xac70a  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xac70f  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xac711  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xac714  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6appendEPKcj  #  19    0xac717  5      OPC=jmpq_label_1   
  nop                      #  20    0xac71c  1      OPC=nop            
  nop                      #  21    0xac71d  1      OPC=nop            
  nop                      #  22    0xac71e  1      OPC=nop            
  nop                      #  23    0xac71f  1      OPC=nop            
                                                                       
.size _ZNSspLEPKc, .-_ZNSspLEPKc

