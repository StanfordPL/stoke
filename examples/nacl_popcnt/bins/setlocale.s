  .text
  .globl setlocale
  .type setlocale, @function

#! file-offset 0x7d200
#! rip-offset  0x7d200
#! capacity    96 bytes

# Text                      #  Line  RIP      Bytes  
.setlocale:                 #        0x7d200  0      
  movq %rbx, -0x10(%rsp)    #  1     0x7d200  5      
  movq %r12, -0x8(%rsp)     #  2     0x7d205  5      
  subl $0x18, %esp          #  3     0x7d20a  3      
  addq %r15, %rsp           #  4     0x7d20d  3      
  movl %edi, %ebx           #  5     0x7d210  2      
  movl %esi, %r12d          #  6     0x7d212  3      
  nop                       #  7     0x7d215  1      
  callq .__nacl_read_tp     #  8     0x7d216  5      
  leaq -0x480(%rax), %rax   #  9     0x7d21b  7      
  movl %r12d, %edx          #  10    0x7d222  3      
  movl %ebx, %esi           #  11    0x7d225  2      
  movq 0x10(%rsp), %r12     #  12    0x7d227  5      
  movq 0x8(%rsp), %rbx      #  13    0x7d22c  5      
  movl %eax, %eax           #  14    0x7d231  2      
  movl (%r15,%rax,1), %edi  #  15    0x7d233  4      
  nop                       #  16    0x7d237  1      
  addl $0x18, %esp          #  17    0x7d238  3      
  addq %r15, %rsp           #  18    0x7d23b  3      
  jmpq ._setlocale_r        #  19    0x7d23e  5      
  nop                       #  20    0x7d243  1      
  nop                       #  21    0x7d244  1      
  nop                       #  22    0x7d245  1      
  nop                       #  23    0x7d246  1      
  nop                       #  24    0x7d247  1      
  nop                       #  25    0x7d248  1      
  nop                       #  26    0x7d249  1      
  nop                       #  27    0x7d24a  1      
  nop                       #  28    0x7d24b  1      
  nop                       #  29    0x7d24c  1      
  nop                       #  30    0x7d24d  1      
  nop                       #  31    0x7d24e  1      
  nop                       #  32    0x7d24f  1      
  nop                       #  33    0x7d250  1      
  nop                       #  34    0x7d251  1      
  nop                       #  35    0x7d252  1      
  nop                       #  36    0x7d253  1      
  nop                       #  37    0x7d254  1      
  nop                       #  38    0x7d255  1      
  nop                       #  39    0x7d256  1      
  nop                       #  40    0x7d257  1      
                                                     
.size setlocale, .-setlocale

