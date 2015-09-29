  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0xed100
#! rip-offset  0xad100
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSspLEPKc:              #        0xad100  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xad100  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xad105  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xad108  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xad10d  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xad110  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xad113  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xad115  3      OPC=movl_r32_r32   
  nop                      #  8     0xad118  1      OPC=nop            
  nop                      #  9     0xad119  1      OPC=nop            
  nop                      #  10    0xad11a  1      OPC=nop            
  callq .strlen            #  11    0xad11b  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xad120  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xad123  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xad125  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xad12a  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xad12f  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xad131  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xad134  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6appendEPKcj  #  19    0xad137  5      OPC=jmpq_label_1   
  nop                      #  20    0xad13c  1      OPC=nop            
  nop                      #  21    0xad13d  1      OPC=nop            
  nop                      #  22    0xad13e  1      OPC=nop            
  nop                      #  23    0xad13f  1      OPC=nop            
                                                                       
.size _ZNSspLEPKc, .-_ZNSspLEPKc

