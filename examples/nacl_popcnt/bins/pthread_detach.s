  .text
  .globl pthread_detach
  .type pthread_detach, @function

#! file-offset 0x409e0
#! rip-offset  0x409e0
#! capacity    224 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_detach:                   #        0x409e0  0      
  pushq %rbx                       #  1     0x409e0  2      
  movl %edi, %ebx                  #  2     0x409e2  2      
  movl $0x10036da0, %edi           #  3     0x409e4  5      
  nop                              #  4     0x409e9  1      
  nop                              #  5     0x409ea  1      
  callq .pthread_mutex_lock        #  6     0x409eb  5      
  movl %ebx, %ebx                  #  7     0x409f0  2      
  movl 0x10(%r15,%rbx,1), %eax     #  8     0x409f2  5      
  testq %rax, %rax                 #  9     0x409f7  3      
  je .L_40a80                      #  10    0x409fa  6      
  movl %eax, %eax                  #  11    0x40a00  2      
  movl 0xc(%r15,%rax,1), %edi      #  12    0x40a02  5      
  xorl %ebx, %ebx                  #  13    0x40a07  2      
  testl %edi, %edi                 #  14    0x40a09  2      
  jne .L_40a40                     #  15    0x40a0b  6      
  movl %eax, %eax                  #  16    0x40a11  2      
  movl 0x8(%r15,%rax,1), %esi      #  17    0x40a13  5      
  movb $0x16, %bl                  #  18    0x40a18  2      
  testl %esi, %esi                 #  19    0x40a1a  2      
  je .L_40a40                      #  20    0x40a1c  6      
  movl %eax, %eax                  #  21    0x40a22  2      
  movl $0x0, 0x8(%r15,%rax,1)      #  22    0x40a24  9      
  xorb %bl, %bl                    #  23    0x40a2d  2      
  nop                              #  24    0x40a2f  1      
.L_40a40:                          #        0x40a30  0      
  movl $0x10036da0, %edi           #  25    0x40a30  5      
  nop                              #  26    0x40a35  1      
  nop                              #  27    0x40a36  1      
  callq .pthread_mutex_unlock      #  28    0x40a37  5      
  movl %ebx, %eax                  #  29    0x40a3c  2      
  popq %rbx                        #  30    0x40a3e  2      
  popq %r11                        #  31    0x40a40  3      
  andl $0xffffffe0, %r11d          #  32    0x40a43  7      
  addq %r15, %r11                  #  33    0x40a4a  3      
  jmpq %r11                        #  34    0x40a4d  3      
  xchgw %ax, %ax                   #  35    0x40a50  3      
  nop                              #  36    0x40a53  1      
.L_40a80:                          #        0x40a54  0      
  movl %ebx, %edi                  #  37    0x40a54  2      
  xorl %ebx, %ebx                  #  38    0x40a56  2      
  nop                              #  39    0x40a58  1      
  nop                              #  40    0x40a59  1      
  callq .nc_release_basic_data_mu  #  41    0x40a5a  5      
  jmpq .L_40a40                    #  42    0x40a5f  5      
  nop                              #  43    0x40a64  1      
  nop                              #  44    0x40a65  1      
                                                            
.size pthread_detach, .-pthread_detach

