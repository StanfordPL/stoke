  .text
  .globl pthread_detach
  .type pthread_detach, @function

#! file-offset 0x40940
#! rip-offset  0x40940
#! capacity    224 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_detach:                   #        0x40940  0      
  pushq %rbx                       #  1     0x40940  2      
  movl %edi, %ebx                  #  2     0x40942  2      
  movl $0x10036da0, %edi           #  3     0x40944  5      
  nop                              #  4     0x40949  1      
  nop                              #  5     0x4094a  1      
  callq .pthread_mutex_lock        #  6     0x4094b  5      
  movl %ebx, %ebx                  #  7     0x40950  2      
  movl 0x10(%r15,%rbx,1), %eax     #  8     0x40952  5      
  testq %rax, %rax                 #  9     0x40957  3      
  je .L_409e0                      #  10    0x4095a  6      
  movl %eax, %eax                  #  11    0x40960  2      
  movl 0xc(%r15,%rax,1), %edi      #  12    0x40962  5      
  xorl %ebx, %ebx                  #  13    0x40967  2      
  testl %edi, %edi                 #  14    0x40969  2      
  jne .L_409a0                     #  15    0x4096b  6      
  movl %eax, %eax                  #  16    0x40971  2      
  movl 0x8(%r15,%rax,1), %esi      #  17    0x40973  5      
  movb $0x16, %bl                  #  18    0x40978  2      
  testl %esi, %esi                 #  19    0x4097a  2      
  je .L_409a0                      #  20    0x4097c  6      
  movl %eax, %eax                  #  21    0x40982  2      
  movl $0x0, 0x8(%r15,%rax,1)      #  22    0x40984  9      
  xorb %bl, %bl                    #  23    0x4098d  2      
  nop                              #  24    0x4098f  1      
.L_409a0:                          #        0x40990  0      
  movl $0x10036da0, %edi           #  25    0x40990  5      
  nop                              #  26    0x40995  1      
  nop                              #  27    0x40996  1      
  callq .pthread_mutex_unlock      #  28    0x40997  5      
  movl %ebx, %eax                  #  29    0x4099c  2      
  popq %rbx                        #  30    0x4099e  2      
  popq %r11                        #  31    0x409a0  3      
  andl $0xffffffe0, %r11d          #  32    0x409a3  7      
  addq %r15, %r11                  #  33    0x409aa  3      
  jmpq %r11                        #  34    0x409ad  3      
  xchgw %ax, %ax                   #  35    0x409b0  3      
  nop                              #  36    0x409b3  1      
.L_409e0:                          #        0x409b4  0      
  movl %ebx, %edi                  #  37    0x409b4  2      
  xorl %ebx, %ebx                  #  38    0x409b6  2      
  nop                              #  39    0x409b8  1      
  nop                              #  40    0x409b9  1      
  callq .nc_release_basic_data_mu  #  41    0x409ba  5      
  jmpq .L_409a0                    #  42    0x409bf  5      
  nop                              #  43    0x409c4  1      
  nop                              #  44    0x409c5  1      
                                                            
.size pthread_detach, .-pthread_detach

