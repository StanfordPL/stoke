  .text
  .globl pthread_cleanup_push
  .type pthread_cleanup_push, @function

#! file-offset 0x41080
#! rip-offset  0x41080
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_cleanup_push:           #        0x41080  0      
  movq %rbx, -0x18(%rsp)         #  1     0x41080  5      
  movq %r12, -0x10(%rsp)         #  2     0x41085  5      
  movl %edi, %r12d               #  3     0x4108a  3      
  movq %r13, -0x8(%rsp)          #  4     0x4108d  5      
  movl $0xc, %edi                #  5     0x41092  5      
  subl $0x18, %esp               #  6     0x41097  3      
  addq %r15, %rsp                #  7     0x4109a  3      
  movl %esi, %ebx                #  8     0x4109d  2      
  nop                            #  9     0x4109f  1      
  nop                            #  10    0x410a0  1      
  nop                            #  11    0x410a1  1      
  callq .malloc                  #  12    0x410a2  5      
  movl %eax, %r13d               #  13    0x410a7  3      
  movl %r13d, %r13d              #  14    0x410aa  3      
  movl %r12d, 0x4(%r15,%r13,1)   #  15    0x410ad  5      
  movl %r13d, %r13d              #  16    0x410b2  3      
  movl %ebx, 0x8(%r15,%r13,1)    #  17    0x410b5  5      
  nop                            #  18    0x410ba  1      
  callq .__nacl_read_tp          #  19    0x410bb  5      
  movl %eax, %eax                #  20    0x410c0  2      
  movl -0x8(%r15,%rax,1), %eax   #  21    0x410c2  5      
  movl %r13d, %r13d              #  22    0x410c7  3      
  movl %eax, (%r15,%r13,1)       #  23    0x410ca  4      
  nop                            #  24    0x410ce  1      
  callq .__nacl_read_tp          #  25    0x410cf  5      
  movl %eax, %eax                #  26    0x410d4  2      
  movl %r13d, -0x8(%r15,%rax,1)  #  27    0x410d6  5      
  movq (%rsp), %rbx              #  28    0x410db  4      
  movq 0x8(%rsp), %r12           #  29    0x410df  5      
  movq 0x10(%rsp), %r13          #  30    0x410e4  5      
  addl $0x18, %esp               #  31    0x410e9  3      
  addq %r15, %rsp                #  32    0x410ec  3      
  popq %r11                      #  33    0x410ef  3      
  andl $0xffffffe0, %r11d        #  34    0x410f2  7      
  addq %r15, %r11                #  35    0x410f9  3      
  jmpq %r11                      #  36    0x410fc  3      
  nop                            #  37    0x410ff  1      
  nop                            #  38    0x41100  1      
                                                          
.size pthread_cleanup_push, .-pthread_cleanup_push

