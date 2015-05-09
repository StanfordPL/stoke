  .text
  .globl __nacl_tls_combined_size
  .type __nacl_tls_combined_size, @function

#! file-offset 0x67da0
#! rip-offset  0x67da0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.__nacl_tls_combined_size:     #        0x67da0  0      
  pushq %rbx                   #  1     0x67da0  2      
  movl %edi, %ebx              #  2     0x67da2  2      
  nop                          #  3     0x67da4  1      
  nop                          #  4     0x67da5  1      
  callq .get_tls_info          #  5     0x67da6  5      
  movl %eax, %eax              #  6     0x67dab  2      
  movl %eax, %eax              #  7     0x67dad  2      
  movl 0x8(%r15,%rax,1), %edx  #  8     0x67daf  5      
  movl %eax, %eax              #  9     0x67db4  2      
  movl 0xc(%r15,%rax,1), %ecx  #  10    0x67db6  5      
  movl %eax, %eax              #  11    0x67dbb  2      
  addl 0x4(%r15,%rax,1), %edx  #  12    0x67dbd  5      
  leal -0x1(%rcx), %esi        #  13    0x67dc2  3      
  movl %edx, %edi              #  14    0x67dc5  2      
  leal (%rsi,%rdx,1), %edx     #  15    0x67dc7  3      
  nop                          #  16    0x67dca  1      
  negl %edi                    #  17    0x67dcb  2      
  testl %edi, %edi             #  18    0x67dcd  2      
  leal (%rdx,%rbx,1), %eax     #  19    0x67dcf  3      
  jle .L_67e00                 #  20    0x67dd2  6      
  leal (%rdi,%rsi,1), %edx     #  21    0x67dd8  3      
  negl %ecx                    #  22    0x67ddb  2      
  andl %ecx, %edx              #  23    0x67ddd  2      
  addl %edx, %eax              #  24    0x67ddf  2      
  nop                          #  25    0x67de1  1      
.L_67e00:                      #        0x67de2  0      
  popq %rbx                    #  26    0x67de2  2      
  popq %r11                    #  27    0x67de4  3      
  andl $0xffffffe0, %r11d      #  28    0x67de7  7      
  addq %r15, %r11              #  29    0x67dee  3      
  jmpq %r11                    #  30    0x67df1  3      
  nop                          #  31    0x67df4  1      
  nop                          #  32    0x67df5  1      
                                                        
.size __nacl_tls_combined_size, .-__nacl_tls_combined_size

