  .text
  .globl _ZNSs6assignEPKc
  .type _ZNSs6assignEPKc, @function

#! file-offset 0xee420
#! rip-offset  0xae420
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNSs6assignEPKc:         #        0xae420  0      OPC=<label>        
  movq %r12, -0x8(%rsp)    #  1     0xae420  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xae425  3      OPC=movl_r32_r32   
  movq %rbx, -0x10(%rsp)   #  3     0xae428  5      OPC=movq_m64_r64   
  subl $0x18, %esp         #  4     0xae42d  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  5     0xae430  3      OPC=addq_r64_r64   
  movl %edi, %ebx          #  6     0xae433  2      OPC=movl_r32_r32   
  movl %r12d, %edi         #  7     0xae435  3      OPC=movl_r32_r32   
  nop                      #  8     0xae438  1      OPC=nop            
  nop                      #  9     0xae439  1      OPC=nop            
  nop                      #  10    0xae43a  1      OPC=nop            
  callq .strlen            #  11    0xae43b  5      OPC=callq_label    
  movl %r12d, %esi         #  12    0xae440  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  13    0xae443  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12    #  14    0xae445  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx     #  15    0xae44a  5      OPC=movq_r64_m64   
  movl %eax, %edx          #  16    0xae44f  2      OPC=movl_r32_r32   
  addl $0x18, %esp         #  17    0xae451  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  18    0xae454  3      OPC=addq_r64_r64   
  jmpq ._ZNSs6assignEPKcj  #  19    0xae457  5      OPC=jmpq_label_1   
  nop                      #  20    0xae45c  1      OPC=nop            
  nop                      #  21    0xae45d  1      OPC=nop            
  nop                      #  22    0xae45e  1      OPC=nop            
  nop                      #  23    0xae45f  1      OPC=nop            
                                                                       
.size _ZNSs6assignEPKc, .-_ZNSs6assignEPKc

