  .text
  .globl getenv
  .type getenv, @function

#! file-offset 0x15eb60
#! rip-offset  0x11eb60
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.getenv:                    #        0x11eb60  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)    #  1     0x11eb60  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)     #  2     0x11eb65  5      OPC=movq_m64_r64    
  subl $0x28, %esp          #  3     0x11eb6a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  4     0x11eb6d  3      OPC=addq_r64_r64    
  movl %edi, %ebx           #  5     0x11eb70  2      OPC=movl_r32_r32    
  leal 0xc(%rsp), %r12d     #  6     0x11eb72  5      OPC=leal_r32_m16    
  nop                       #  7     0x11eb77  1      OPC=nop             
  nop                       #  8     0x11eb78  1      OPC=nop             
  nop                       #  9     0x11eb79  1      OPC=nop             
  nop                       #  10    0x11eb7a  1      OPC=nop             
  callq .__nacl_read_tp     #  11    0x11eb7b  5      OPC=callq_label     
  leaq -0x480(%rax), %rax   #  12    0x11eb80  7      OPC=leaq_r64_m16    
  movl %r12d, %edx          #  13    0x11eb87  3      OPC=movl_r32_r32    
  movl %ebx, %esi           #  14    0x11eb8a  2      OPC=movl_r32_r32    
  movl %eax, %eax           #  15    0x11eb8c  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi  #  16    0x11eb8e  4      OPC=movl_r32_m32    
  nop                       #  17    0x11eb92  1      OPC=nop             
  nop                       #  18    0x11eb93  1      OPC=nop             
  nop                       #  19    0x11eb94  1      OPC=nop             
  nop                       #  20    0x11eb95  1      OPC=nop             
  nop                       #  21    0x11eb96  1      OPC=nop             
  nop                       #  22    0x11eb97  1      OPC=nop             
  nop                       #  23    0x11eb98  1      OPC=nop             
  nop                       #  24    0x11eb99  1      OPC=nop             
  nop                       #  25    0x11eb9a  1      OPC=nop             
  callq ._findenv_r         #  26    0x11eb9b  5      OPC=callq_label     
  movq 0x18(%rsp), %rbx     #  27    0x11eba0  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12     #  28    0x11eba5  5      OPC=movq_r64_m64    
  addl $0x28, %esp          #  29    0x11ebaa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  30    0x11ebad  3      OPC=addq_r64_r64    
  popq %r11                 #  31    0x11ebb0  2      OPC=popq_r64_1      
  movl %eax, %eax           #  32    0x11ebb2  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d   #  33    0x11ebb4  7      OPC=andl_r32_imm32  
  nop                       #  34    0x11ebbb  1      OPC=nop             
  nop                       #  35    0x11ebbc  1      OPC=nop             
  nop                       #  36    0x11ebbd  1      OPC=nop             
  nop                       #  37    0x11ebbe  1      OPC=nop             
  addq %r15, %r11           #  38    0x11ebbf  3      OPC=addq_r64_r64    
  jmpq %r11                 #  39    0x11ebc2  3      OPC=jmpq_r64        
  xchgw %ax, %ax            #  40    0x11ebc5  2      OPC=xchgw_ax_r16    
                                                                          
.size getenv, .-getenv

