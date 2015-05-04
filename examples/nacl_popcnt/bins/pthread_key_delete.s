  .text
  .globl pthread_key_delete
  .type pthread_key_delete, @function

#! file-offset 0x40500
#! rip-offset  0x40500
#! capacity    160 bytes

# Text                                #  Line  RIP      Bytes  
.pthread_key_delete:                  #        0x40500  0      
  cmpl $0x1ff, %edi                   #  1     0x40500  6      
  ja .L_40540                         #  2     0x40506  6      
  shll $0x3, %edi                     #  3     0x4050c  3      
  movslq %edi, %rcx                   #  4     0x4050f  3      
  leaq 0x10030da4(%rcx), %rax         #  5     0x40512  7      
  movl %eax, %eax                     #  6     0x40519  2      
  movl (%r15,%rax,1), %edx            #  7     0x4051b  4      
  testb $0x1, %dl                     #  8     0x4051f  3      
  xchgw %ax, %ax                      #  9     0x40522  3      
  jne .L_40560                        #  10    0x40525  6      
  nop                                 #  11    0x4052b  1      
  nop                                 #  12    0x4052c  1      
.L_40540:                             #        0x4052d  0      
  movl $0x16, %eax                    #  13    0x4052d  5      
  popq %r11                           #  14    0x40532  3      
  andl $0xffffffe0, %r11d             #  15    0x40535  7      
  addq %r15, %r11                     #  16    0x4053c  3      
  jmpq %r11                           #  17    0x4053f  3      
  nop                                 #  18    0x40542  1      
.L_40560:                             #        0x40543  0      
  leal 0x1(%rdx), %esi                #  19    0x40543  3      
  addl $0x10030da4, %edi              #  20    0x40546  6      
  movl %edx, %eax                     #  21    0x4054c  2      
  movl %edi, %edi                     #  22    0x4054e  2      
  lock                                #  23    0x40550  1      
  cmpxchgl %esi, (%r15,%rdi,1)        #  24    0x40551  5      
  cmpl %edx, %eax                     #  25    0x40556  2      
  jne .L_40540                        #  26    0x40558  6      
  nop                                 #  27    0x4055e  1      
  movl %ecx, %ecx                     #  28    0x4055f  2      
  movl $0x0, 0x10030da0(%r15,%rcx,1)  #  29    0x40561  12     
  xorl %eax, %eax                     #  30    0x4056d  2      
  popq %r11                           #  31    0x4056f  3      
  andl $0xffffffe0, %r11d             #  32    0x40572  7      
  addq %r15, %r11                     #  33    0x40579  3      
  jmpq %r11                           #  34    0x4057c  3      
  nop                                 #  35    0x4057f  1      
                                                               
.size pthread_key_delete, .-pthread_key_delete

