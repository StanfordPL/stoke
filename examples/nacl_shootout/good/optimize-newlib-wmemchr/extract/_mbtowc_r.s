  .text
  .globl _mbtowc_r
  .type _mbtowc_r, @function

#! file-offset 0x162ec0
#! rip-offset  0x122ec0
#! capacity    128 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
._mbtowc_r:                    #        0x122ec0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)       #  1     0x122ec0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)       #  2     0x122ec5  5      OPC=movq_m64_r64    
  movl %r8d, %r9d              #  3     0x122eca  3      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)       #  4     0x122ecd  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)        #  5     0x122ed2  5      OPC=movq_m64_r64    
  subl $0x38, %esp             #  6     0x122ed7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  7     0x122eda  3      OPC=addq_r64_r64    
  nop                          #  8     0x122edd  1      OPC=nop             
  nop                          #  9     0x122ede  1      OPC=nop             
  nop                          #  10    0x122edf  1      OPC=nop             
  movl 0xff4e0f9(%rip), %r12d  #  11    0x122ee0  7      OPC=movl_r32_m32    
  movl %edi, %ebx              #  12    0x122ee7  2      OPC=movl_r32_r32    
  movl %esi, %r13d             #  13    0x122ee9  3      OPC=movl_r32_r32    
  movl %edx, %r14d             #  14    0x122eec  3      OPC=movl_r32_r32    
  movl %ecx, 0x8(%rsp)         #  15    0x122eef  4      OPC=movl_m32_r32    
  movq %r9, (%rsp)             #  16    0x122ef3  4      OPC=movq_m64_r64    
  nop                          #  17    0x122ef7  1      OPC=nop             
  nop                          #  18    0x122ef8  1      OPC=nop             
  nop                          #  19    0x122ef9  1      OPC=nop             
  nop                          #  20    0x122efa  1      OPC=nop             
  callq .__locale_charset      #  21    0x122efb  5      OPC=callq_label     
  movq (%rsp), %r9             #  22    0x122f00  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %ecx         #  23    0x122f04  4      OPC=movl_r32_m32    
  movl %r14d, %edx             #  24    0x122f08  3      OPC=movl_r32_r32    
  movl %r13d, %esi             #  25    0x122f0b  3      OPC=movl_r32_r32    
  movl %ebx, %edi              #  26    0x122f0e  2      OPC=movl_r32_r32    
  movq %r12, %r10              #  27    0x122f10  3      OPC=movq_r64_r64    
  movq 0x18(%rsp), %rbx        #  28    0x122f13  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12        #  29    0x122f18  5      OPC=movq_r64_m64    
  movl %eax, %r8d              #  30    0x122f1d  3      OPC=movl_r32_r32    
  movq 0x28(%rsp), %r13        #  31    0x122f20  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %r14        #  32    0x122f25  5      OPC=movq_r64_m64    
  addl $0x38, %esp             #  33    0x122f2a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  34    0x122f2d  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %r10d      #  35    0x122f30  7      OPC=andl_r32_imm32  
  nop                          #  36    0x122f37  1      OPC=nop             
  nop                          #  37    0x122f38  1      OPC=nop             
  nop                          #  38    0x122f39  1      OPC=nop             
  nop                          #  39    0x122f3a  1      OPC=nop             
  addq %r15, %r10              #  40    0x122f3b  3      OPC=addq_r64_r64    
  jmpq %r10                    #  41    0x122f3e  3      OPC=jmpq_r64        
  nop                          #  42    0x122f41  1      OPC=nop             
  nop                          #  43    0x122f42  1      OPC=nop             
  nop                          #  44    0x122f43  1      OPC=nop             
  nop                          #  45    0x122f44  1      OPC=nop             
  nop                          #  46    0x122f45  1      OPC=nop             
  nop                          #  47    0x122f46  1      OPC=nop             
                                                                             
.size _mbtowc_r, .-_mbtowc_r

