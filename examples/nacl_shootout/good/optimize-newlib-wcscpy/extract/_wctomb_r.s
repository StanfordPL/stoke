  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x183a00
#! rip-offset  0x143a00
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._wctomb_r:                   #        0x143a00  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)      #  1     0x143a00  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)      #  2     0x143a05  5      OPC=movq_m64_r64    
  movl %ecx, %r8d             #  3     0x143a0a  3      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)      #  4     0x143a0d  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)       #  5     0x143a12  5      OPC=movq_m64_r64    
  subl $0x38, %esp            #  6     0x143a17  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  7     0x143a1a  3      OPC=addq_r64_r64    
  nop                         #  8     0x143a1d  1      OPC=nop             
  nop                         #  9     0x143a1e  1      OPC=nop             
  nop                         #  10    0x143a1f  1      OPC=nop             
  movl 0xff2d5e6(%rip), %ebx  #  11    0x143a20  6      OPC=movl_r32_m32    
  movl %edx, %r14d            #  12    0x143a26  3      OPC=movl_r32_r32    
  movl %edi, %r12d            #  13    0x143a29  3      OPC=movl_r32_r32    
  movl %esi, %r13d            #  14    0x143a2c  3      OPC=movl_r32_r32    
  movq %r8, 0x8(%rsp)         #  15    0x143a2f  5      OPC=movq_m64_r64    
  nop                         #  16    0x143a34  1      OPC=nop             
  nop                         #  17    0x143a35  1      OPC=nop             
  nop                         #  18    0x143a36  1      OPC=nop             
  nop                         #  19    0x143a37  1      OPC=nop             
  nop                         #  20    0x143a38  1      OPC=nop             
  nop                         #  21    0x143a39  1      OPC=nop             
  nop                         #  22    0x143a3a  1      OPC=nop             
  callq .__locale_charset     #  23    0x143a3b  5      OPC=callq_label     
  movq 0x8(%rsp), %r8         #  24    0x143a40  5      OPC=movq_r64_m64    
  movl %r14d, %edx            #  25    0x143a45  3      OPC=movl_r32_r32    
  movl %r13d, %esi            #  26    0x143a48  3      OPC=movl_r32_r32    
  movl %r12d, %edi            #  27    0x143a4b  3      OPC=movl_r32_r32    
  movq %rbx, %r9              #  28    0x143a4e  3      OPC=movq_r64_r64    
  movq 0x20(%rsp), %r12       #  29    0x143a51  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx       #  30    0x143a56  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13       #  31    0x143a5b  5      OPC=movq_r64_m64    
  movl %eax, %ecx             #  32    0x143a60  2      OPC=movl_r32_r32    
  movq 0x30(%rsp), %r14       #  33    0x143a62  5      OPC=movq_r64_m64    
  addl $0x38, %esp            #  34    0x143a67  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  35    0x143a6a  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %r9d      #  36    0x143a6d  7      OPC=andl_r32_imm32  
  nop                         #  37    0x143a74  1      OPC=nop             
  nop                         #  38    0x143a75  1      OPC=nop             
  nop                         #  39    0x143a76  1      OPC=nop             
  nop                         #  40    0x143a77  1      OPC=nop             
  addq %r15, %r9              #  41    0x143a78  3      OPC=addq_r64_r64    
  jmpq %r9                    #  42    0x143a7b  3      OPC=jmpq_r64        
  nop                         #  43    0x143a7e  1      OPC=nop             
  nop                         #  44    0x143a7f  1      OPC=nop             
  nop                         #  45    0x143a80  1      OPC=nop             
  nop                         #  46    0x143a81  1      OPC=nop             
  nop                         #  47    0x143a82  1      OPC=nop             
  nop                         #  48    0x143a83  1      OPC=nop             
  nop                         #  49    0x143a84  1      OPC=nop             
  nop                         #  50    0x143a85  1      OPC=nop             
  nop                         #  51    0x143a86  1      OPC=nop             
                                                                            
.size _wctomb_r, .-_wctomb_r

