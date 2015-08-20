  .text
  .globl independent_calloc
  .type independent_calloc, @function

#! file-offset 0x158380
#! rip-offset  0x118380
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.independent_calloc:       #        0x118380  0      OPC=<label>         
  subl $0x18, %esp         #  1     0x118380  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x118383  3      OPC=addq_r64_r64    
  movl %edx, %ecx          #  3     0x118386  2      OPC=movl_r32_r32    
  movl $0x3, %edx          #  4     0x118388  5      OPC=movl_r32_imm32  
  movl %esi, 0xc(%rsp)     #  5     0x11838d  4      OPC=movl_m32_r32    
  leal 0xc(%rsp), %esi     #  6     0x118391  4      OPC=leal_r32_m16    
  nop                      #  7     0x118395  1      OPC=nop             
  nop                      #  8     0x118396  1      OPC=nop             
  nop                      #  9     0x118397  1      OPC=nop             
  nop                      #  10    0x118398  1      OPC=nop             
  nop                      #  11    0x118399  1      OPC=nop             
  nop                      #  12    0x11839a  1      OPC=nop             
  callq .T_278             #  13    0x11839b  5      OPC=callq_label     
  addl $0x18, %esp         #  14    0x1183a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  15    0x1183a3  3      OPC=addq_r64_r64    
  movl %eax, %eax          #  16    0x1183a6  2      OPC=movl_r32_r32    
  popq %r11                #  17    0x1183a8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  18    0x1183aa  7      OPC=andl_r32_imm32  
  nop                      #  19    0x1183b1  1      OPC=nop             
  nop                      #  20    0x1183b2  1      OPC=nop             
  nop                      #  21    0x1183b3  1      OPC=nop             
  nop                      #  22    0x1183b4  1      OPC=nop             
  addq %r15, %r11          #  23    0x1183b5  3      OPC=addq_r64_r64    
  jmpq %r11                #  24    0x1183b8  3      OPC=jmpq_r64        
  nop                      #  25    0x1183bb  1      OPC=nop             
  nop                      #  26    0x1183bc  1      OPC=nop             
  nop                      #  27    0x1183bd  1      OPC=nop             
  nop                      #  28    0x1183be  1      OPC=nop             
  nop                      #  29    0x1183bf  1      OPC=nop             
  nop                      #  30    0x1183c0  1      OPC=nop             
  nop                      #  31    0x1183c1  1      OPC=nop             
  nop                      #  32    0x1183c2  1      OPC=nop             
  nop                      #  33    0x1183c3  1      OPC=nop             
  nop                      #  34    0x1183c4  1      OPC=nop             
  nop                      #  35    0x1183c5  1      OPC=nop             
  nop                      #  36    0x1183c6  1      OPC=nop             
                                                                         
.size independent_calloc, .-independent_calloc

