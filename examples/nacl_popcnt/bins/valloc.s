  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x66da0
#! rip-offset  0x66da0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.valloc:                      #        0x66da0  0      
  movl 0xffcfaea(%rip), %ecx  #  1     0x66da0  6      
  pushq %rbx                  #  2     0x66da6  2      
  movl %edi, %ebx             #  3     0x66da8  2      
  testl %ecx, %ecx            #  4     0x66daa  2      
  jne .L_66dc0                #  5     0x66dac  6      
  nop                         #  6     0x66db2  1      
  callq .init_mparams         #  7     0x66db3  5      
.L_66dc0:                     #        0x66db8  0      
  movl %ebx, %esi             #  8     0x66db8  2      
  movl 0xffcfad4(%rip), %edi  #  9     0x66dba  6      
  popq %rbx                   #  10    0x66dc0  2      
  jmpq .memalign              #  11    0x66dc2  5      
  nop                         #  12    0x66dc7  1      
  nop                         #  13    0x66dc8  1      
                                                       
.size valloc, .-valloc

