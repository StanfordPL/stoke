  .text
  .globl pthread_cleanup_push
  .type pthread_cleanup_push, @function

#! file-offset 0x41120
#! rip-offset  0x41120
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_cleanup_push:           #        0x41120  0      
  movq %rbx, -0x18(%rsp)         #  1     0x41120  5      
  movq %r12, -0x10(%rsp)         #  2     0x41125  5      
  movl %edi, %r12d               #  3     0x4112a  3      
  movq %r13, -0x8(%rsp)          #  4     0x4112d  5      
  movl $0xc, %edi                #  5     0x41132  5      
  subl $0x18, %esp               #  6     0x41137  3      
  addq %r15, %rsp                #  7     0x4113a  3      
  movl %esi, %ebx                #  8     0x4113d  2      
  nop                            #  9     0x4113f  1      
  nop                            #  10    0x41140  1      
  nop                            #  11    0x41141  1      
  callq .malloc                  #  12    0x41142  5      
  movl %eax, %r13d               #  13    0x41147  3      
  movl %r13d, %r13d              #  14    0x4114a  3      
  movl %r12d, 0x4(%r15,%r13,1)   #  15    0x4114d  5      
  movl %r13d, %r13d              #  16    0x41152  3      
  movl %ebx, 0x8(%r15,%r13,1)    #  17    0x41155  5      
  nop                            #  18    0x4115a  1      
  callq .__nacl_read_tp          #  19    0x4115b  5      
  movl %eax, %eax                #  20    0x41160  2      
  movl -0x8(%r15,%rax,1), %eax   #  21    0x41162  5      
  movl %r13d, %r13d              #  22    0x41167  3      
  movl %eax, (%r15,%r13,1)       #  23    0x4116a  4      
  nop                            #  24    0x4116e  1      
  callq .__nacl_read_tp          #  25    0x4116f  5      
  movl %eax, %eax                #  26    0x41174  2      
  movl %r13d, -0x8(%r15,%rax,1)  #  27    0x41176  5      
  movq (%rsp), %rbx              #  28    0x4117b  4      
  movq 0x8(%rsp), %r12           #  29    0x4117f  5      
  movq 0x10(%rsp), %r13          #  30    0x41184  5      
  addl $0x18, %esp               #  31    0x41189  3      
  addq %r15, %rsp                #  32    0x4118c  3      
  popq %r11                      #  33    0x4118f  3      
  andl $0xffffffe0, %r11d        #  34    0x41192  7      
  addq %r15, %r11                #  35    0x41199  3      
  jmpq %r11                      #  36    0x4119c  3      
  nop                            #  37    0x4119f  1      
  nop                            #  38    0x411a0  1      
                                                          
.size pthread_cleanup_push, .-pthread_cleanup_push

