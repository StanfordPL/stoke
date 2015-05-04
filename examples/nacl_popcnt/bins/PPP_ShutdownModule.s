  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x26aa0
#! rip-offset  0x26aa0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.PPP_ShutdownModule:           #        0x26aa0  0      
  subl $0x8, %esp              #  1     0x26aa0  3      
  addq %r15, %rsp              #  2     0x26aa3  3      
  movl 0x1000a1a8(%rip), %edi  #  3     0x26aa6  6      
  testq %rdi, %rdi             #  4     0x26aac  3      
  je .L_26ae0                  #  5     0x26aaf  6      
  movl %edi, %edi              #  6     0x26ab5  2      
  movl (%r15,%rdi,1), %eax     #  7     0x26ab7  4      
  movl %eax, %eax              #  8     0x26abb  2      
  movl 0x4(%r15,%rax,1), %eax  #  9     0x26abd  5      
  xchgw %ax, %ax               #  10    0x26ac2  3      
  nop                          #  11    0x26ac5  1      
  nop                          #  12    0x26ac6  1      
  andl $0xffffffe0, %eax       #  13    0x26ac7  5      
  addq %r15, %rax              #  14    0x26acc  3      
  callq %rax                   #  15    0x26acf  2      
.L_26ae0:                      #        0x26ad1  0      
  movl $0x0, 0x1000a179(%rip)  #  16    0x26ad1  10     
  addl $0x8, %esp              #  17    0x26adb  3      
  addq %r15, %rsp              #  18    0x26ade  3      
  popq %r11                    #  19    0x26ae1  3      
  andl $0xffffffe0, %r11d      #  20    0x26ae4  7      
  addq %r15, %r11              #  21    0x26aeb  3      
  jmpq %r11                    #  22    0x26aee  3      
  nop                          #  23    0x26af1  1      
                                                        
.size PPP_ShutdownModule, .-PPP_ShutdownModule

