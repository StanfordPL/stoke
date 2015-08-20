  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x183da0
#! rip-offset  0x143da0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._wctomb_r:                   #        0x143da0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)      #  1     0x143da0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)      #  2     0x143da5  5      OPC=movq_m64_r64    
  movl %ecx, %r8d             #  3     0x143daa  3      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)      #  4     0x143dad  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)       #  5     0x143db2  5      OPC=movq_m64_r64    
  subl $0x38, %esp            #  6     0x143db7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  7     0x143dba  3      OPC=addq_r64_r64    
  nop                         #  8     0x143dbd  1      OPC=nop             
  nop                         #  9     0x143dbe  1      OPC=nop             
  nop                         #  10    0x143dbf  1      OPC=nop             
  movl 0xff2d246(%rip), %ebx  #  11    0x143dc0  6      OPC=movl_r32_m32    
  movl %edx, %r14d            #  12    0x143dc6  3      OPC=movl_r32_r32    
  movl %edi, %r12d            #  13    0x143dc9  3      OPC=movl_r32_r32    
  movl %esi, %r13d            #  14    0x143dcc  3      OPC=movl_r32_r32    
  movq %r8, 0x8(%rsp)         #  15    0x143dcf  5      OPC=movq_m64_r64    
  nop                         #  16    0x143dd4  1      OPC=nop             
  nop                         #  17    0x143dd5  1      OPC=nop             
  nop                         #  18    0x143dd6  1      OPC=nop             
  nop                         #  19    0x143dd7  1      OPC=nop             
  nop                         #  20    0x143dd8  1      OPC=nop             
  nop                         #  21    0x143dd9  1      OPC=nop             
  nop                         #  22    0x143dda  1      OPC=nop             
  callq .__locale_charset     #  23    0x143ddb  5      OPC=callq_label     
  movq 0x8(%rsp), %r8         #  24    0x143de0  5      OPC=movq_r64_m64    
  movl %r14d, %edx            #  25    0x143de5  3      OPC=movl_r32_r32    
  movl %r13d, %esi            #  26    0x143de8  3      OPC=movl_r32_r32    
  movl %r12d, %edi            #  27    0x143deb  3      OPC=movl_r32_r32    
  movq %rbx, %r9              #  28    0x143dee  3      OPC=movq_r64_r64    
  movq 0x20(%rsp), %r12       #  29    0x143df1  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx       #  30    0x143df6  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13       #  31    0x143dfb  5      OPC=movq_r64_m64    
  movl %eax, %ecx             #  32    0x143e00  2      OPC=movl_r32_r32    
  movq 0x30(%rsp), %r14       #  33    0x143e02  5      OPC=movq_r64_m64    
  addl $0x38, %esp            #  34    0x143e07  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  35    0x143e0a  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %r9d      #  36    0x143e0d  7      OPC=andl_r32_imm32  
  nop                         #  37    0x143e14  1      OPC=nop             
  nop                         #  38    0x143e15  1      OPC=nop             
  nop                         #  39    0x143e16  1      OPC=nop             
  nop                         #  40    0x143e17  1      OPC=nop             
  addq %r15, %r9              #  41    0x143e18  3      OPC=addq_r64_r64    
  jmpq %r9                    #  42    0x143e1b  3      OPC=jmpq_r64        
  nop                         #  43    0x143e1e  1      OPC=nop             
  nop                         #  44    0x143e1f  1      OPC=nop             
  nop                         #  45    0x143e20  1      OPC=nop             
  nop                         #  46    0x143e21  1      OPC=nop             
  nop                         #  47    0x143e22  1      OPC=nop             
  nop                         #  48    0x143e23  1      OPC=nop             
  nop                         #  49    0x143e24  1      OPC=nop             
  nop                         #  50    0x143e25  1      OPC=nop             
  nop                         #  51    0x143e26  1      OPC=nop             
                                                                            
.size _wctomb_r, .-_wctomb_r

