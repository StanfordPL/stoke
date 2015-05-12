  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x26a20
#! rip-offset  0x26a20
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.PPP_ShutdownModule:           #        0x26a20  0      
  subl $0x8, %esp              #  1     0x26a20  3      
  addq %r15, %rsp              #  2     0x26a23  3      
  movl 0x1000a228(%rip), %edi  #  3     0x26a26  6      
  testq %rdi, %rdi             #  4     0x26a2c  3      
  je .L_26a60                  #  5     0x26a2f  6      
  movl %edi, %edi              #  6     0x26a35  2      
  movl (%r15,%rdi,1), %eax     #  7     0x26a37  4      
  movl %eax, %eax              #  8     0x26a3b  2      
  movl 0x4(%r15,%rax,1), %eax  #  9     0x26a3d  5      
  xchgw %ax, %ax               #  10    0x26a42  3      
  nop                          #  11    0x26a45  1      
  nop                          #  12    0x26a46  1      
  andl $0xffffffe0, %eax       #  13    0x26a47  5      
  addq %r15, %rax              #  14    0x26a4c  3      
  callq %rax                   #  15    0x26a4f  2      
.L_26a60:                      #        0x26a51  0      
  movl $0x0, 0x1000a1f9(%rip)  #  16    0x26a51  10     
  addl $0x8, %esp              #  17    0x26a5b  3      
  addq %r15, %rsp              #  18    0x26a5e  3      
  popq %r11                    #  19    0x26a61  3      
  andl $0xffffffe0, %r11d      #  20    0x26a64  7      
  addq %r15, %r11              #  21    0x26a6b  3      
  jmpq %r11                    #  22    0x26a6e  3      
  nop                          #  23    0x26a71  1      
                                                        
.size PPP_ShutdownModule, .-PPP_ShutdownModule

