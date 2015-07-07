  .text
  .globl arrayfile_fputc
  .type arrayfile_fputc, @function

#! file-offset 0x7b31
#! rip-offset  0x407b31
#! capacity    154 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.arrayfile_fputc:             #        0x407b31  0      OPC=0     
  testq %rsi, %rsi            #  1     0x407b31  3      OPC=2438  
  je .L_407bc5                #  2     0x407b34  6      OPC=893   
  pushq %rbx                  #  3     0x407b3a  1      OPC=1861  
  subq $0x10, %rsp            #  4     0x407b3b  4      OPC=2389  
  movl %edi, %ebx             #  5     0x407b3f  2      OPC=1157  
  movl (%rsi), %eax           #  6     0x407b41  2      OPC=1156  
  leal -0x1(%rax), %ecx       #  7     0x407b43  3      OPC=1066  
  movslq %ecx, %rcx           #  8     0x407b46  3      OPC=1289  
  leaq (,%rcx,4), %rdx        #  9     0x407b49  8      OPC=1069  
  movq 0x8(%rsi), %rax        #  10    0x407b51  4      OPC=1161  
  movslq (%rax,%rdx,1), %rax  #  11    0x407b55  4      OPC=1288  
  movq 0x18(%rsi), %r8        #  12    0x407b59  4      OPC=1161  
  leal 0x1(%rax), %edi        #  13    0x407b5d  3      OPC=1066  
  cmpl %edi, (%r8,%rdx,1)     #  14    0x407b60  4      OPC=457   
  jle .L_407b96               #  15    0x407b64  6      OPC=919   
  nop                         #  16    0x407b6a  1      OPC=1343  
  nop                         #  17    0x407b6b  1      OPC=1343  
  shlq $0x3, %rcx             #  18    0x407b6c  4      OPC=2272  
  movq 0x10(%rsi), %rdi       #  19    0x407b70  4      OPC=1161  
  movq (%rdi,%rcx,1), %rdi    #  20    0x407b74  4      OPC=1161  
  movb %bl, (%rdi,%rax,1)     #  21    0x407b78  3      OPC=1141  
  addq 0x8(%rsi), %rdx        #  22    0x407b7b  4      OPC=71    
  movl (%rdx), %eax           #  23    0x407b7f  2      OPC=1156  
  addl $0x1, %eax             #  24    0x407b81  3      OPC=65    
  movl %eax, (%rdx)           #  25    0x407b84  2      OPC=1136  
  movq 0x10(%rsi), %rdx       #  26    0x407b86  4      OPC=1161  
  cltq                        #  27    0x407b8a  2      OPC=263   
  movq (%rdx,%rcx,1), %rdx    #  28    0x407b8c  4      OPC=1161  
  movb $0x0, (%rdx,%rax,1)    #  29    0x407b90  4      OPC=1140  
  movl %ebx, %eax             #  30    0x407b94  2      OPC=1157  
.L_407b90:                    #        0x407b96  0      OPC=0     
  addq $0x10, %rsp            #  31    0x407b96  4      OPC=70    
  popq %rbx                   #  32    0x407b9a  1      OPC=1694  
  retq                        #  33    0x407b9b  1      OPC=1978  
.L_407b96:                    #        0x407b9c  0      OPC=0     
  movb %bl, 0xf(%rsp)         #  34    0x407b9c  4      OPC=1141  
  movq %rsi, %rcx             #  35    0x407ba0  3      OPC=1162  
  movl $0x1, %edx             #  36    0x407ba3  5      OPC=1154  
  movl $0x1, %esi             #  37    0x407ba8  5      OPC=1154  
  leaq 0xf(%rsp), %rdi        #  38    0x407bad  5      OPC=1069  
  callq .arrayfile_fwrite     #  39    0x407bb2  5      OPC=260   
  testq %rax, %rax            #  40    0x407bb7  3      OPC=2438  
  je .L_407bbe                #  41    0x407bba  6      OPC=893   
  nop                         #  42    0x407bc0  1      OPC=1343  
  nop                         #  43    0x407bc1  1      OPC=1343  
  movl %ebx, %eax             #  44    0x407bc2  2      OPC=1157  
  addq $0x10, %rsp            #  45    0x407bc4  4      OPC=70    
  popq %rbx                   #  46    0x407bc8  1      OPC=1694  
  retq                        #  47    0x407bc9  1      OPC=1978  
.L_407bbe:                    #        0x407bca  0      OPC=0     
  movl $0xffffffff, %eax      #  48    0x407bca  6      OPC=1155  
  jmpq .L_407b90              #  49    0x407bd0  5      OPC=930   
  nop                         #  50    0x407bd5  1      OPC=1343  
  nop                         #  51    0x407bd6  1      OPC=1343  
.L_407bc5:                    #        0x407bd7  0      OPC=0     
  movl $0xffffffff, %eax      #  52    0x407bd7  6      OPC=1155  
  retq                        #  53    0x407bdd  1      OPC=1978  
                                                                  
.size arrayfile_fputc, .-arrayfile_fputc

