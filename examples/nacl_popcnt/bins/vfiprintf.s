  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x87660
#! rip-offset  0x87660
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
.vfiprintf:                 #        0x87660  0      
  movq %rbx, -0x18(%rsp)    #  1     0x87660  5      
  movq %r12, -0x10(%rsp)    #  2     0x87665  5      
  movl %edi, %ebx           #  3     0x8766a  2      
  movq %r13, -0x8(%rsp)     #  4     0x8766c  5      
  subl $0x18, %esp          #  5     0x87671  3      
  addq %r15, %rsp           #  6     0x87674  3      
  movl %esi, %r12d          #  7     0x87677  3      
  movl %edx, %r13d          #  8     0x8767a  3      
  nop                       #  9     0x8767d  1      
  nop                       #  10    0x8767e  1      
  nop                       #  11    0x8767f  1      
  callq .__nacl_read_tp     #  12    0x87680  5      
  leaq -0x480(%rax), %rax   #  13    0x87685  7      
  movl %r13d, %ecx          #  14    0x8768c  3      
  movl %r12d, %edx          #  15    0x8768f  3      
  movl %ebx, %esi           #  16    0x87692  2      
  movq 0x8(%rsp), %r12      #  17    0x87694  5      
  movq (%rsp), %rbx         #  18    0x87699  4      
  movq 0x10(%rsp), %r13     #  19    0x8769d  5      
  nop                       #  20    0x876a2  1      
  movl %eax, %eax           #  21    0x876a3  2      
  movl (%r15,%rax,1), %edi  #  22    0x876a5  4      
  addl $0x18, %esp          #  23    0x876a9  3      
  addq %r15, %rsp           #  24    0x876ac  3      
  jmpq ._vfiprintf_r        #  25    0x876af  5      
  nop                       #  26    0x876b4  1      
  nop                       #  27    0x876b5  1      
  nop                       #  28    0x876b6  1      
  nop                       #  29    0x876b7  1      
  nop                       #  30    0x876b8  1      
  nop                       #  31    0x876b9  1      
  nop                       #  32    0x876ba  1      
  nop                       #  33    0x876bb  1      
  nop                       #  34    0x876bc  1      
  nop                       #  35    0x876bd  1      
  nop                       #  36    0x876be  1      
  nop                       #  37    0x876bf  1      
  nop                       #  38    0x876c0  1      
  nop                       #  39    0x876c1  1      
  nop                       #  40    0x876c2  1      
                                                     
.size vfiprintf, .-vfiprintf

