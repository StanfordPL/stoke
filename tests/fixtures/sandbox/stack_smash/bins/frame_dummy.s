  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x4c0
#! rip-offset  0x4004c0
#! capacity    45 bytes

# Text                       #  Line  RIP       Bytes  
.frame_dummy:                #        0x4004c0  0      
  cmpq $0x0, 0x200958(%rip)  #  1     0x4004c0  8      
  je .L_4004e8               #  2     0x4004c8  6      
  movl $0x0, %eax            #  3     0x4004ce  5      
  testq %rax, %rax           #  4     0x4004d3  3      
  je .L_4004e8               #  5     0x4004d6  6      
  pushq %rbp                 #  6     0x4004dc  2      
  movl $0x600e20, %edi       #  7     0x4004de  5      
  movq %rsp, %rbp            #  8     0x4004e3  3      
  callq %rax                 #  9     0x4004e6  2      
  popq %rbp                  #  10    0x4004e8  2      
  jmpq .register_tm_clones   #  11    0x4004ea  5      
  nop                        #  12    0x4004ef  1      
.L_4004e8:                   #        0x4004f0  0      
  jmpq .register_tm_clones   #  13    0x4004f0  5      
                                                       
.size frame_dummy, .-frame_dummy

