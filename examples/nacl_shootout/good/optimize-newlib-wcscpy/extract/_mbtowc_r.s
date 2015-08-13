  .text
  .globl _mbtowc_r
  .type _mbtowc_r, @function

#! file-offset 0x162bc0
#! rip-offset  0x122bc0
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
._mbtowc_r:                    #        0x122bc0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)       #  1     0x122bc0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)       #  2     0x122bc5  5      OPC=movq_m64_r64    
  movl %r8d, %r9d              #  3     0x122bca  3      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)       #  4     0x122bcd  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)        #  5     0x122bd2  5      OPC=movq_m64_r64    
  subl $0x38, %esp             #  6     0x122bd7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  7     0x122bda  3      OPC=addq_r64_r64    
  nop                          #  8     0x122bdd  1      OPC=nop             
  nop                          #  9     0x122bde  1      OPC=nop             
  nop                          #  10    0x122bdf  1      OPC=nop             
  movl 0xff4e3f9(%rip), %r12d  #  11    0x122be0  7      OPC=movl_r32_m32    
  movl %edi, %ebx              #  12    0x122be7  2      OPC=movl_r32_r32    
  movl %esi, %r13d             #  13    0x122be9  3      OPC=movl_r32_r32    
  movl %edx, %r14d             #  14    0x122bec  3      OPC=movl_r32_r32    
  movl %ecx, 0x8(%rsp)         #  15    0x122bef  4      OPC=movl_m32_r32    
  movq %r9, (%rsp)             #  16    0x122bf3  4      OPC=movq_m64_r64    
  nop                          #  17    0x122bf7  1      OPC=nop             
  nop                          #  18    0x122bf8  1      OPC=nop             
  nop                          #  19    0x122bf9  1      OPC=nop             
  nop                          #  20    0x122bfa  1      OPC=nop             
  callq .__locale_charset      #  21    0x122bfb  5      OPC=callq_label     
  movq (%rsp), %r9             #  22    0x122c00  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %ecx         #  23    0x122c04  4      OPC=movl_r32_m32    
  movl %r14d, %edx             #  24    0x122c08  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  25    0x122c0b  3      OPC=movl_r32_r32    
  movl %ebx, %edi              #  26    0x122c0e  2      OPC=movl_r32_r32    
  movq %r12, %r10              #  27    0x122c10  3      OPC=movq_r64_r64    
  movq 0x18(%rsp), %rbx        #  28    0x122c13  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12        #  29    0x122c18  5      OPC=movq_r64_m64    
  movl %eax, %r8d              #  30    0x122c1d  3      OPC=movl_r32_r32    
  movq 0x28(%rsp), %r13        #  31    0x122c20  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14        #  32    0x122c25  5      OPC=movq_r64_m64    
  addl $0x38, %esp             #  33    0x122c2a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x122c2d  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %r10d      #  35    0x122c30  7      OPC=andl_r32_imm32  
  nop                          #  36    0x122c37  1      OPC=nop             
  nop                          #  37    0x122c38  1      OPC=nop             
  nop                          #  38    0x122c39  1      OPC=nop             
  nop                          #  39    0x122c3a  1      OPC=nop             
  addq %r15, %r10              #  40    0x122c3b  3      OPC=addq_r64_r64    
  jmpq %r10                    #  41    0x122c3e  3      OPC=jmpq_r64        
  nop                          #  42    0x122c41  1      OPC=nop             
  nop                          #  43    0x122c42  1      OPC=nop             
  nop                          #  44    0x122c43  1      OPC=nop             
  nop                          #  45    0x122c44  1      OPC=nop             
  nop                          #  46    0x122c45  1      OPC=nop             
  nop                          #  47    0x122c46  1      OPC=nop             
                                                                             
.size _mbtowc_r, .-_mbtowc_r

