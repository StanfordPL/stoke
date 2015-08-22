  .text
  .globl _mbtowc_r
  .type _mbtowc_r, @function

#! file-offset 0x1635e0
#! rip-offset  0x1235e0
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
._mbtowc_r:                    #        0x1235e0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)       #  1     0x1235e0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)       #  2     0x1235e5  5      OPC=movq_m64_r64    
  movl %r8d, %r9d              #  3     0x1235ea  3      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)       #  4     0x1235ed  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)        #  5     0x1235f2  5      OPC=movq_m64_r64    
  subl $0x38, %esp             #  6     0x1235f7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  7     0x1235fa  3      OPC=addq_r64_r64    
  nop                          #  8     0x1235fd  1      OPC=nop             
  nop                          #  9     0x1235fe  1      OPC=nop             
  nop                          #  10    0x1235ff  1      OPC=nop             
  movl 0xff4d9d9(%rip), %r12d  #  11    0x123600  7      OPC=movl_r32_m32    
  movl %edi, %ebx              #  12    0x123607  2      OPC=movl_r32_r32    
  movl %esi, %r13d             #  13    0x123609  3      OPC=movl_r32_r32    
  movl %edx, %r14d             #  14    0x12360c  3      OPC=movl_r32_r32    
  movl %ecx, 0x8(%rsp)         #  15    0x12360f  4      OPC=movl_m32_r32    
  movq %r9, (%rsp)             #  16    0x123613  4      OPC=movq_m64_r64    
  nop                          #  17    0x123617  1      OPC=nop             
  nop                          #  18    0x123618  1      OPC=nop             
  nop                          #  19    0x123619  1      OPC=nop             
  nop                          #  20    0x12361a  1      OPC=nop             
  callq .__locale_charset      #  21    0x12361b  5      OPC=callq_label     
  movq (%rsp), %r9             #  22    0x123620  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %ecx         #  23    0x123624  4      OPC=movl_r32_m32    
  movl %r14d, %edx             #  24    0x123628  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  25    0x12362b  3      OPC=movl_r32_r32    
  movl %ebx, %edi              #  26    0x12362e  2      OPC=movl_r32_r32    
  movq %r12, %r10              #  27    0x123630  3      OPC=movq_r64_r64    
  movq 0x18(%rsp), %rbx        #  28    0x123633  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12        #  29    0x123638  5      OPC=movq_r64_m64    
  movl %eax, %r8d              #  30    0x12363d  3      OPC=movl_r32_r32    
  movq 0x28(%rsp), %r13        #  31    0x123640  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14        #  32    0x123645  5      OPC=movq_r64_m64    
  addl $0x38, %esp             #  33    0x12364a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x12364d  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %r10d      #  35    0x123650  7      OPC=andl_r32_imm32  
  nop                          #  36    0x123657  1      OPC=nop             
  nop                          #  37    0x123658  1      OPC=nop             
  nop                          #  38    0x123659  1      OPC=nop             
  nop                          #  39    0x12365a  1      OPC=nop             
  addq %r15, %r10              #  40    0x12365b  3      OPC=addq_r64_r64    
  jmpq %r10                    #  41    0x12365e  3      OPC=jmpq_r64        
  nop                          #  42    0x123661  1      OPC=nop             
  nop                          #  43    0x123662  1      OPC=nop             
  nop                          #  44    0x123663  1      OPC=nop             
  nop                          #  45    0x123664  1      OPC=nop             
  nop                          #  46    0x123665  1      OPC=nop             
  nop                          #  47    0x123666  1      OPC=nop             
                                                                             
.size _mbtowc_r, .-_mbtowc_r

