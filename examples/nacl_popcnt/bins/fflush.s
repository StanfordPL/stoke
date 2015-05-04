  .text
  .globl fflush
  .type fflush, @function

#! file-offset 0x7ae20
#! rip-offset  0x7ae20
#! capacity    96 bytes

# Text                        #  Line  RIP      Bytes  
.fflush:                      #        0x7ae20  0      
  pushq %rbx                  #  1     0x7ae20  2      
  movl %edi, %ebx             #  2     0x7ae22  2      
  testq %rbx, %rbx            #  3     0x7ae24  3      
  je .L_7ae60                 #  4     0x7ae27  6      
  nop                         #  5     0x7ae2d  1      
  nop                         #  6     0x7ae2e  1      
  callq .__nacl_read_tp       #  7     0x7ae2f  5      
  leaq -0x480(%rax), %rax     #  8     0x7ae34  7      
  movl %ebx, %esi             #  9     0x7ae3b  2      
  popq %rbx                   #  10    0x7ae3d  2      
  movl %eax, %eax             #  11    0x7ae3f  2      
  movl (%r15,%rax,1), %edi    #  12    0x7ae41  4      
  jmpq ._fflush_r             #  13    0x7ae45  5      
  nop                         #  14    0x7ae4a  1      
.L_7ae60:                     #        0x7ae4b  0      
  popq %rbx                   #  15    0x7ae4b  2      
  movl 0xffa8639(%rip), %edi  #  16    0x7ae4d  6      
  movl $0x7aca0, %esi         #  17    0x7ae53  5      
  jmpq ._fwalk_reent          #  18    0x7ae58  5      
  nop                         #  19    0x7ae5d  1      
  nop                         #  20    0x7ae5e  1      
  nop                         #  21    0x7ae5f  1      
  nop                         #  22    0x7ae60  1      
  nop                         #  23    0x7ae61  1      
  nop                         #  24    0x7ae62  1      
  nop                         #  25    0x7ae63  1      
  nop                         #  26    0x7ae64  1      
  nop                         #  27    0x7ae65  1      
  nop                         #  28    0x7ae66  1      
  nop                         #  29    0x7ae67  1      
  nop                         #  30    0x7ae68  1      
  nop                         #  31    0x7ae69  1      
  nop                         #  32    0x7ae6a  1      
  nop                         #  33    0x7ae6b  1      
                                                       
.size fflush, .-fflush

