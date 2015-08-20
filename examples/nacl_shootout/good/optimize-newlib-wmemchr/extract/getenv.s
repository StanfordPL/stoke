  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x15e440
#! rip-offset  0x11e440
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.getenv:                    #        0x11e440  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)    #  1     0x11e440  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)     #  2     0x11e445  5      OPC=movq_m64_r64    
  subl $0x28, %esp          #  3     0x11e44a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  4     0x11e44d  3      OPC=addq_r64_r64    
  movl %edi, %ebx           #  5     0x11e450  2      OPC=movl_r32_r32    
  leal 0xc(%rsp), %r12d     #  6     0x11e452  5      OPC=leal_r32_m16    
  nop                       #  7     0x11e457  1      OPC=nop             
  nop                       #  8     0x11e458  1      OPC=nop             
  nop                       #  9     0x11e459  1      OPC=nop             
  nop                       #  10    0x11e45a  1      OPC=nop             
  callq .__nacl_read_tp     #  11    0x11e45b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  12    0x11e460  7      OPC=leaq_r64_m16    
  movl %r12d, %edx          #  13    0x11e467  3      OPC=movl_r32_r32    
  movl %ebx, %esi           #  14    0x11e46a  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  15    0x11e46c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  16    0x11e46e  4      OPC=movl_r32_m32    
  nop                       #  17    0x11e472  1      OPC=nop             
  nop                       #  18    0x11e473  1      OPC=nop             
  nop                       #  19    0x11e474  1      OPC=nop             
  nop                       #  20    0x11e475  1      OPC=nop             
  nop                       #  21    0x11e476  1      OPC=nop             
  nop                       #  22    0x11e477  1      OPC=nop             
  nop                       #  23    0x11e478  1      OPC=nop             
  nop                       #  24    0x11e479  1      OPC=nop             
  nop                       #  25    0x11e47a  1      OPC=nop             
  callq ._findenv_r         #  26    0x11e47b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx     #  27    0x11e480  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12     #  28    0x11e485  5      OPC=movq_r64_m64    
  addl $0x28, %esp          #  29    0x11e48a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  30    0x11e48d  3      OPC=addq_r64_r64    
  popq %r11                 #  31    0x11e490  2      OPC=popq_r64_1      
  movl %eax, %eax           #  32    0x11e492  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d   #  33    0x11e494  7      OPC=andl_r32_imm32  
  nop                       #  34    0x11e49b  1      OPC=nop             
  nop                       #  35    0x11e49c  1      OPC=nop             
  nop                       #  36    0x11e49d  1      OPC=nop             
  nop                       #  37    0x11e49e  1      OPC=nop             
  addq %r15, %r11           #  38    0x11e49f  3      OPC=addq_r64_r64    
  jmpq %r11                 #  39    0x11e4a2  3      OPC=jmpq_r64        
  xchgw %ax, %ax            #  40    0x11e4a5  2      OPC=xchgw_ax_r16    
                                                                          
.size getenv, .-getenv

