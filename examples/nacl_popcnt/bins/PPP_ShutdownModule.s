  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x26a00
#! rip-offset  0x26a00
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.PPP_ShutdownModule:           #        0x26a00  0      
  subl $0x8, %esp              #  1     0x26a00  3      
  addq %r15, %rsp              #  2     0x26a03  3      
  movl 0x1000a248(%rip), %edi  #  3     0x26a06  6      
  testq %rdi, %rdi             #  4     0x26a0c  3      
  je .L_26a40                  #  5     0x26a0f  6      
  movl %edi, %edi              #  6     0x26a15  2      
  movl (%r15,%rdi,1), %eax     #  7     0x26a17  4      
  movl %eax, %eax              #  8     0x26a1b  2      
  movl 0x4(%r15,%rax,1), %eax  #  9     0x26a1d  5      
  xchgw %ax, %ax               #  10    0x26a22  3      
  nop                          #  11    0x26a25  1      
  nop                          #  12    0x26a26  1      
  andl $0xffffffe0, %eax       #  13    0x26a27  5      
  addq %r15, %rax              #  14    0x26a2c  3      
  callq %rax                   #  15    0x26a2f  2      
.L_26a40:                      #        0x26a31  0      
  movl $0x0, 0x1000a219(%rip)  #  16    0x26a31  10     
  addl $0x8, %esp              #  17    0x26a3b  3      
  addq %r15, %rsp              #  18    0x26a3e  3      
  popq %r11                    #  19    0x26a41  3      
  andl $0xffffffe0, %r11d      #  20    0x26a44  7      
  addq %r15, %r11              #  21    0x26a4b  3      
  jmpq %r11                    #  22    0x26a4e  3      
  nop                          #  23    0x26a51  1      
                                                        
.size PPP_ShutdownModule, .-PPP_ShutdownModule

