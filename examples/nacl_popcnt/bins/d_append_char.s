  .text
  .globl d_append_char
  .type d_append_char, @function

#! file-offset 0x50580
#! rip-offset  0x50580
#! capacity    256 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_char:                   #        0x50580  0      
  movq %rbx, -0x10(%rsp)          #  1     0x50580  5      
  movl %edi, %ebx                 #  2     0x50585  2      
  movq %r12, -0x8(%rsp)           #  3     0x50587  5      
  subl $0x18, %esp                #  4     0x5058c  3      
  addq %r15, %rsp                 #  5     0x5058f  3      
  movl %ebx, %ebx                 #  6     0x50592  2      
  movl 0x104(%r15,%rbx,1), %eax   #  7     0x50594  8      
  movl %esi, %r12d                #  8     0x5059c  3      
  nop                             #  9     0x5059f  1      
  cmpl $0xff, %eax                #  10    0x505a0  3      
  leal 0x1(%rax), %edx            #  11    0x505a3  3      
  je .L_50620                     #  12    0x505a6  6      
  nop                             #  13    0x505ac  1      
  nop                             #  14    0x505ad  1      
.L_505c0:                         #        0x505ae  0      
  cltq                            #  15    0x505ae  2      
  movl %ebx, %ebx                 #  16    0x505b0  2      
  movb %r12b, 0x108(%r15,%rbx,1)  #  17    0x505b2  8      
  movl %ebx, %ebx                 #  18    0x505ba  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  19    0x505bc  8      
  leaq (%rbx,%rax,1), %rax        #  20    0x505c4  4      
  nop                             #  21    0x505c8  1      
  movl %eax, %eax                 #  22    0x505c9  2      
  movb %r12b, 0x4(%r15,%rax,1)    #  23    0x505cb  5      
  movq 0x8(%rsp), %rbx            #  24    0x505d0  5      
  movq 0x10(%rsp), %r12           #  25    0x505d5  5      
  addl $0x18, %esp                #  26    0x505da  3      
  addq %r15, %rsp                 #  27    0x505dd  3      
  popq %r11                       #  28    0x505e0  3      
  nop                             #  29    0x505e3  1      
  andl $0xffffffe0, %r11d         #  30    0x505e4  7      
  addq %r15, %r11                 #  31    0x505eb  3      
  jmpq %r11                       #  32    0x505ee  3      
  nop                             #  33    0x505f1  1      
  nop                             #  34    0x505f2  1      
.L_50620:                         #        0x505f3  0      
  movl %ebx, %ebx                 #  35    0x505f3  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  36    0x505f5  8      
  movl %ebx, %ebx                 #  37    0x505fd  2      
  movl 0x110(%r15,%rbx,1), %edx   #  38    0x505ff  8      
  leal 0x4(%rbx), %edi            #  39    0x50607  3      
  nop                             #  40    0x5060a  1      
  movl %ebx, %ebx                 #  41    0x5060b  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  42    0x5060d  9      
  movl $0xff, %esi                #  43    0x50616  5      
  nop                             #  44    0x5061b  1      
  andl $0xffffffe0, %eax          #  45    0x5061c  5      
  addq %r15, %rax                 #  46    0x50621  3      
  callq %rax                      #  47    0x50624  2      
  movl %ebx, %ebx                 #  48    0x50626  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  49    0x50628  12     
  movl $0x1, %edx                 #  50    0x50634  5      
  xorl %eax, %eax                 #  51    0x50639  2      
  jmpq .L_505c0                   #  52    0x5063b  5      
  nop                             #  53    0x50640  1      
                                                           
.size d_append_char, .-d_append_char

