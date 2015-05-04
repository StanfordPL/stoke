  .text
  .globl __nacl_tls_combined_size
  .type __nacl_tls_combined_size, @function

#! file-offset 0x67e40
#! rip-offset  0x67e40
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.__nacl_tls_combined_size:     #        0x67e40  0      
  pushq %rbx                   #  1     0x67e40  2      
  movl %edi, %ebx              #  2     0x67e42  2      
  nop                          #  3     0x67e44  1      
  nop                          #  4     0x67e45  1      
  callq .get_tls_info          #  5     0x67e46  5      
  movl %eax, %eax              #  6     0x67e4b  2      
  movl %eax, %eax              #  7     0x67e4d  2      
  movl 0x8(%r15,%rax,1), %edx  #  8     0x67e4f  5      
  movl %eax, %eax              #  9     0x67e54  2      
  movl 0xc(%r15,%rax,1), %ecx  #  10    0x67e56  5      
  movl %eax, %eax              #  11    0x67e5b  2      
  addl 0x4(%r15,%rax,1), %edx  #  12    0x67e5d  5      
  leal -0x1(%rcx), %esi        #  13    0x67e62  3      
  movl %edx, %edi              #  14    0x67e65  2      
  leal (%rsi,%rdx,1), %edx     #  15    0x67e67  3      
  nop                          #  16    0x67e6a  1      
  negl %edi                    #  17    0x67e6b  2      
  testl %edi, %edi             #  18    0x67e6d  2      
  leal (%rdx,%rbx,1), %eax     #  19    0x67e6f  3      
  jle .L_67ea0                 #  20    0x67e72  6      
  leal (%rdi,%rsi,1), %edx     #  21    0x67e78  3      
  negl %ecx                    #  22    0x67e7b  2      
  andl %ecx, %edx              #  23    0x67e7d  2      
  addl %edx, %eax              #  24    0x67e7f  2      
  nop                          #  25    0x67e81  1      
.L_67ea0:                      #        0x67e82  0      
  popq %rbx                    #  26    0x67e82  2      
  popq %r11                    #  27    0x67e84  3      
  andl $0xffffffe0, %r11d      #  28    0x67e87  7      
  addq %r15, %r11              #  29    0x67e8e  3      
  jmpq %r11                    #  30    0x67e91  3      
  nop                          #  31    0x67e94  1      
  nop                          #  32    0x67e95  1      
                                                        
.size __nacl_tls_combined_size, .-__nacl_tls_combined_size

