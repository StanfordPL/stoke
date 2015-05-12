  .text
  .globl pthread_detach
  .type pthread_detach, @function

#! file-offset 0x40960
#! rip-offset  0x40960
#! capacity    224 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_detach:                   #        0x40960  0      
  pushq %rbx                       #  1     0x40960  2      
  movl %edi, %ebx                  #  2     0x40962  2      
  movl $0x10036da0, %edi           #  3     0x40964  5      
  nop                              #  4     0x40969  1      
  nop                              #  5     0x4096a  1      
  callq .pthread_mutex_lock        #  6     0x4096b  5      
  movl %ebx, %ebx                  #  7     0x40970  2      
  movl 0x10(%r15,%rbx,1), %eax     #  8     0x40972  5      
  testq %rax, %rax                 #  9     0x40977  3      
  je .L_40a00                      #  10    0x4097a  6      
  movl %eax, %eax                  #  11    0x40980  2      
  movl 0xc(%r15,%rax,1), %edi      #  12    0x40982  5      
  xorl %ebx, %ebx                  #  13    0x40987  2      
  testl %edi, %edi                 #  14    0x40989  2      
  jne .L_409c0                     #  15    0x4098b  6      
  movl %eax, %eax                  #  16    0x40991  2      
  movl 0x8(%r15,%rax,1), %esi      #  17    0x40993  5      
  movb $0x16, %bl                  #  18    0x40998  2      
  testl %esi, %esi                 #  19    0x4099a  2      
  je .L_409c0                      #  20    0x4099c  6      
  movl %eax, %eax                  #  21    0x409a2  2      
  movl $0x0, 0x8(%r15,%rax,1)      #  22    0x409a4  9      
  xorb %bl, %bl                    #  23    0x409ad  2      
  nop                              #  24    0x409af  1      
.L_409c0:                          #        0x409b0  0      
  movl $0x10036da0, %edi           #  25    0x409b0  5      
  nop                              #  26    0x409b5  1      
  nop                              #  27    0x409b6  1      
  callq .pthread_mutex_unlock      #  28    0x409b7  5      
  movl %ebx, %eax                  #  29    0x409bc  2      
  popq %rbx                        #  30    0x409be  2      
  popq %r11                        #  31    0x409c0  3      
  andl $0xffffffe0, %r11d          #  32    0x409c3  7      
  addq %r15, %r11                  #  33    0x409ca  3      
  jmpq %r11                        #  34    0x409cd  3      
  xchgw %ax, %ax                   #  35    0x409d0  3      
  nop                              #  36    0x409d3  1      
.L_40a00:                          #        0x409d4  0      
  movl %ebx, %edi                  #  37    0x409d4  2      
  xorl %ebx, %ebx                  #  38    0x409d6  2      
  nop                              #  39    0x409d8  1      
  nop                              #  40    0x409d9  1      
  callq .nc_release_basic_data_mu  #  41    0x409da  5      
  jmpq .L_409c0                    #  42    0x409df  5      
  nop                              #  43    0x409e4  1      
  nop                              #  44    0x409e5  1      
                                                            
.size pthread_detach, .-pthread_detach

