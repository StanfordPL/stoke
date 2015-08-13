  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x15e140
#! rip-offset  0x11e140
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.getenv:                    #        0x11e140  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)    #  1     0x11e140  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)     #  2     0x11e145  5      OPC=movq_m64_r64    
  subl $0x28, %esp          #  3     0x11e14a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  4     0x11e14d  3      OPC=addq_r64_r64    
  movl %edi, %ebx           #  5     0x11e150  2      OPC=movl_r32_r32    
  leal 0xc(%rsp), %r12d     #  6     0x11e152  5      OPC=leal_r32_m16    
  nop                       #  7     0x11e157  1      OPC=nop             
  nop                       #  8     0x11e158  1      OPC=nop             
  nop                       #  9     0x11e159  1      OPC=nop             
  nop                       #  10    0x11e15a  1      OPC=nop             
  callq .__nacl_read_tp     #  11    0x11e15b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  12    0x11e160  7      OPC=leaq_r64_m16    
  movl %r12d, %edx          #  13    0x11e167  3      OPC=movl_r32_r32    
  movl %ebx, %esi           #  14    0x11e16a  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  15    0x11e16c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  16    0x11e16e  4      OPC=movl_r32_m32    
  nop                       #  17    0x11e172  1      OPC=nop             
  nop                       #  18    0x11e173  1      OPC=nop             
  nop                       #  19    0x11e174  1      OPC=nop             
  nop                       #  20    0x11e175  1      OPC=nop             
  nop                       #  21    0x11e176  1      OPC=nop             
  nop                       #  22    0x11e177  1      OPC=nop             
  nop                       #  23    0x11e178  1      OPC=nop             
  nop                       #  24    0x11e179  1      OPC=nop             
  nop                       #  25    0x11e17a  1      OPC=nop             
  callq ._findenv_r         #  26    0x11e17b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx     #  27    0x11e180  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12     #  28    0x11e185  5      OPC=movq_r64_m64    
  addl $0x28, %esp          #  29    0x11e18a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  30    0x11e18d  3      OPC=addq_r64_r64    
  popq %r11                 #  31    0x11e190  2      OPC=popq_r64_1      
  movl %eax, %eax           #  32    0x11e192  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d   #  33    0x11e194  7      OPC=andl_r32_imm32  
  nop                       #  34    0x11e19b  1      OPC=nop             
  nop                       #  35    0x11e19c  1      OPC=nop             
  nop                       #  36    0x11e19d  1      OPC=nop             
  nop                       #  37    0x11e19e  1      OPC=nop             
  addq %r15, %r11           #  38    0x11e19f  3      OPC=addq_r64_r64    
  jmpq %r11                 #  39    0x11e1a2  3      OPC=jmpq_r64        
  xchgw %ax, %ax            #  40    0x11e1a5  2      OPC=xchgw_ax_r16    
                                                                          
.size getenv, .-getenv

