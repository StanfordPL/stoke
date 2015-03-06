  .text
  .globl _start
  .type _start, @function

#! file-offset 0x400
#! rip-offset  0x400400
#! capacity    48 bytes

# Text                            #  Line  RIP       Bytes  
._start:                          #        0x400400  0      
  xorl %ebp, %ebp                 #  1     0x400400  2      
  movq %rdx, %r9                  #  2     0x400402  3      
  popq %rsi                       #  3     0x400405  2      
  movq %rsp, %rdx                 #  4     0x400407  3      
  andq $0xfffffffffffffff0, %rsp  #  5     0x40040a  4      
  pushq %rax                      #  6     0x40040e  2      
  pushq %rsp                      #  7     0x400410  2      
  movq $0x400580, %r8             #  8     0x400412  7      
  movq $0x400510, %rcx            #  9     0x400419  7      
  movq $0x4004f4, %rdi            #  10    0x400420  7      
  callq .__libc_start_main_plt    #  11    0x400427  5      
  retq                            #  12    0x40042c  1      
  nop                             #  13    0x40042d  1      
                                                            
.size _start, .-_start

