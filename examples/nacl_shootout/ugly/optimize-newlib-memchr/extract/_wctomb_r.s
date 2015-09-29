  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x1844c0
#! rip-offset  0x1444c0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._wctomb_r:                   #        0x1444c0  0      OPC=<label>         
  movq %rbx, -0x20(%rsp)      #  1     0x1444c0  5      OPC=movq_m64_r64    
  movq %r12, -0x18(%rsp)      #  2     0x1444c5  5      OPC=movq_m64_r64    
  movl %ecx, %r8d             #  3     0x1444ca  3      OPC=movl_r32_r32    
  movq %r13, -0x10(%rsp)      #  4     0x1444cd  5      OPC=movq_m64_r64    
  movq %r14, -0x8(%rsp)       #  5     0x1444d2  5      OPC=movq_m64_r64    
  subl $0x38, %esp            #  6     0x1444d7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  7     0x1444da  3      OPC=addq_r64_r64    
  nop                         #  8     0x1444dd  1      OPC=nop             
  nop                         #  9     0x1444de  1      OPC=nop             
  nop                         #  10    0x1444df  1      OPC=nop             
  movl 0xff2cb26(%rip), %ebx  #  11    0x1444e0  6      OPC=movl_r32_m32    
  movl %edx, %r14d            #  12    0x1444e6  3      OPC=movl_r32_r32    
  movl %edi, %r12d            #  13    0x1444e9  3      OPC=movl_r32_r32    
  movl %esi, %r13d            #  14    0x1444ec  3      OPC=movl_r32_r32    
  movq %r8, 0x8(%rsp)         #  15    0x1444ef  5      OPC=movq_m64_r64    
  nop                         #  16    0x1444f4  1      OPC=nop             
  nop                         #  17    0x1444f5  1      OPC=nop             
  nop                         #  18    0x1444f6  1      OPC=nop             
  nop                         #  19    0x1444f7  1      OPC=nop             
  nop                         #  20    0x1444f8  1      OPC=nop             
  nop                         #  21    0x1444f9  1      OPC=nop             
  nop                         #  22    0x1444fa  1      OPC=nop             
  callq .__locale_charset     #  23    0x1444fb  5      OPC=callq_label     
  movq 0x8(%rsp), %r8         #  24    0x144500  5      OPC=movq_r64_m64    
  movl %r14d, %edx            #  25    0x144505  3      OPC=movl_r32_r32    
  movl %r13d, %esi            #  26    0x144508  3      OPC=movl_r32_r32    
  movl %r12d, %edi            #  27    0x14450b  3      OPC=movl_r32_r32    
  movq %rbx, %r9              #  28    0x14450e  3      OPC=movq_r64_r64    
  movq 0x20(%rsp), %r12       #  29    0x144511  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx       #  30    0x144516  5      OPC=movq_r64_m64    
  movq 0x28(%rsp), %r13       #  31    0x14451b  5      OPC=movq_r64_m64    
  movl %eax, %ecx             #  32    0x144520  2      OPC=movl_r32_r32    
  movq 0x30(%rsp), %r14       #  33    0x144522  5      OPC=movq_r64_m64    
  addl $0x38, %esp            #  34    0x144527  3      OPC=addl_r32_imm8   
  addq %r15, %rsp             #  35    0x14452a  3      OPC=addq_r64_r64    
  andl $0xffffffe0, %r9d      #  36    0x14452d  7      OPC=andl_r32_imm32  
  nop                         #  37    0x144534  1      OPC=nop             
  nop                         #  38    0x144535  1      OPC=nop             
  nop                         #  39    0x144536  1      OPC=nop             
  nop                         #  40    0x144537  1      OPC=nop             
  addq %r15, %r9              #  41    0x144538  3      OPC=addq_r64_r64    
  jmpq %r9                    #  42    0x14453b  3      OPC=jmpq_r64        
  nop                         #  43    0x14453e  1      OPC=nop             
  nop                         #  44    0x14453f  1      OPC=nop             
  nop                         #  45    0x144540  1      OPC=nop             
  nop                         #  46    0x144541  1      OPC=nop             
  nop                         #  47    0x144542  1      OPC=nop             
  nop                         #  48    0x144543  1      OPC=nop             
  nop                         #  49    0x144544  1      OPC=nop             
  nop                         #  50    0x144545  1      OPC=nop             
  nop                         #  51    0x144546  1      OPC=nop             
                                                                            
.size _wctomb_r, .-_wctomb_r

