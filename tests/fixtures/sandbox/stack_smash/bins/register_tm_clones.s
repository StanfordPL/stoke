  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x460
#! rip-offset  0x400460
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  
.register_tm_clones:    #        0x400460  0      
  movl $0x601038, %eax  #  1     0x400460  5      
  pushq %rbp            #  2     0x400465  2      
  subq $0x601038, %rax  #  3     0x400467  6      
  sarq $0x3, %rax       #  4     0x40046d  4      
  movq %rsp, %rbp       #  5     0x400471  3      
  movq %rax, %rdx       #  6     0x400474  3      
  shrq $0x3f, %rdx      #  7     0x400477  4      
  addq %rdx, %rax       #  8     0x40047b  3      
  sarq $0x1, %rax       #  9     0x40047e  3      
  jne .L_400484         #  10    0x400481  6      
.L_400482:              #        0x400487  0      
  popq %rbp             #  11    0x400487  2      
  retq                  #  12    0x400489  1      
.L_400484:              #        0x40048a  0      
  movl $0x0, %edx       #  13    0x40048a  5      
  testq %rdx, %rdx      #  14    0x40048f  3      
  je .L_400482          #  15    0x400492  6      
  popq %rbp             #  16    0x400498  2      
  movq %rax, %rsi       #  17    0x40049a  3      
  movl $0x601038, %edi  #  18    0x40049d  5      
  jmpq %rdx             #  19    0x4004a2  2      
  nop                   #  20    0x4004a4  1      
                                                  
.size register_tm_clones, .-register_tm_clones

