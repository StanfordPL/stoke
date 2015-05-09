  .text
  .globl pthread_key_create
  .type pthread_key_create, @function

#! file-offset 0x40500
#! rip-offset  0x40500
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
.pthread_key_create:                  #        0x40500  0      
  movl %edi, %r10d                    #  1     0x40500  3      
  movl %esi, %r9d                     #  2     0x40503  3      
  xorl %edx, %edx                     #  3     0x40506  2      
  nop                                 #  4     0x40508  1      
  nop                                 #  5     0x40509  1      
.L_40520:                             #        0x4050a  0      
  leal (,%rdx,8), %edi                #  6     0x4050a  7      
  movslq %edi, %rsi                   #  7     0x40511  3      
  leaq 0x10030da4(%rsi), %rax         #  8     0x40514  7      
  movl %eax, %eax                     #  9     0x4051b  2      
  movl (%r15,%rax,1), %ecx            #  10    0x4051d  4      
  testb $0x1, %cl                     #  11    0x40521  3      
  jne .L_40560                        #  12    0x40524  6      
  cmpl $0xfffffffe, %ecx              #  13    0x4052a  6      
  nop                                 #  14    0x40530  1      
  je .L_40560                         #  15    0x40531  6      
  leal 0x1(%rcx), %r8d                #  16    0x40537  4      
  addl $0x10030da4, %edi              #  17    0x4053b  6      
  movl %ecx, %eax                     #  18    0x40541  2      
  movl %edi, %edi                     #  19    0x40543  2      
  lock                                #  20    0x40545  1      
  cmpxchgl %r8d, (%r15,%rdi,1)        #  21    0x40546  5      
  cmpl %ecx, %eax                     #  22    0x4054b  2      
  je .L_40580                         #  23    0x4054d  6      
  nop                                 #  24    0x40553  1      
.L_40560:                             #        0x40554  0      
  addl $0x1, %edx                     #  25    0x40554  3      
  cmpl $0x200, %edx                   #  26    0x40557  6      
  jne .L_40520                        #  27    0x4055d  6      
  movl $0xb, %eax                     #  28    0x40563  5      
  popq %r11                           #  29    0x40568  3      
  andl $0xffffffe0, %r11d             #  30    0x4056b  7      
  addq %r15, %r11                     #  31    0x40572  3      
  jmpq %r11                           #  32    0x40575  3      
  nop                                 #  33    0x40578  1      
.L_40580:                             #        0x40579  0      
  movl %r10d, %r10d                   #  34    0x40579  3      
  movl %edx, (%r15,%r10,1)            #  35    0x4057c  4      
  movl %esi, %esi                     #  36    0x40580  2      
  movl %r9d, 0x10030da0(%r15,%rsi,1)  #  37    0x40582  8      
  xorl %eax, %eax                     #  38    0x4058a  2      
  popq %r11                           #  39    0x4058c  3      
  andl $0xffffffe0, %r11d             #  40    0x4058f  7      
  addq %r15, %r11                     #  41    0x40596  3      
  jmpq %r11                           #  42    0x40599  3      
  nop                                 #  43    0x4059c  1      
                                                               
.size pthread_key_create, .-pthread_key_create

