  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x875e0
#! rip-offset  0x875e0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.vfiprintf:                 #        0x875e0  0      
  movq %rbx, -0x18(%rsp)    #  1     0x875e0  5      
  movq %r12, -0x10(%rsp)    #  2     0x875e5  5      
  movl %edi, %ebx           #  3     0x875ea  2      
  movq %r13, -0x8(%rsp)     #  4     0x875ec  5      
  subl $0x18, %esp          #  5     0x875f1  3      
  addq %r15, %rsp           #  6     0x875f4  3      
  movl %esi, %r12d          #  7     0x875f7  3      
  movl %edx, %r13d          #  8     0x875fa  3      
  nop                       #  9     0x875fd  1      
  nop                       #  10    0x875fe  1      
  nop                       #  11    0x875ff  1      
  callq .__nacl_read_tp     #  12    0x87600  5      
  leaq -0x480(%rax), %rax   #  13    0x87605  7      
  movl %r13d, %ecx          #  14    0x8760c  3      
  movl %r12d, %edx          #  15    0x8760f  3      
  movl %ebx, %esi           #  16    0x87612  2      
  movq 0x8(%rsp), %r12      #  17    0x87614  5      
  movq (%rsp), %rbx         #  18    0x87619  4      
  movq 0x10(%rsp), %r13     #  19    0x8761d  5      
  nop                       #  20    0x87622  1      
  movl %eax, %eax           #  21    0x87623  2      
  movl (%r15,%rax,1), %edi  #  22    0x87625  4      
  addl $0x18, %esp          #  23    0x87629  3      
  addq %r15, %rsp           #  24    0x8762c  3      
  jmpq ._vfiprintf_r        #  25    0x8762f  5      
  nop                       #  26    0x87634  1      
  nop                       #  27    0x87635  1      
  nop                       #  28    0x87636  1      
  nop                       #  29    0x87637  1      
  nop                       #  30    0x87638  1      
  nop                       #  31    0x87639  1      
  nop                       #  32    0x8763a  1      
  nop                       #  33    0x8763b  1      
  nop                       #  34    0x8763c  1      
  nop                       #  35    0x8763d  1      
  nop                       #  36    0x8763e  1      
  nop                       #  37    0x8763f  1      
  nop                       #  38    0x87640  1      
  nop                       #  39    0x87641  1      
  nop                       #  40    0x87642  1      
                                                     
.size vfiprintf, .-vfiprintf

