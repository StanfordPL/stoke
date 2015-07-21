  .text
  .globl pack_key
  .type pack_key, @function

#! file-offset 0x4484
#! rip-offset  0x404484
#! capacity    81 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.pack_key:                       #        0x404484  0      OPC=0     
  pushq %r12                     #  1     0x404484  2      OPC=1861  
  pushq %rbp                     #  2     0x404486  1      OPC=1861  
  pushq %rbx                     #  3     0x404487  1      OPC=1861  
  movl %esi, %r12d               #  4     0x404488  3      OPC=1157  
  testl %esi, %esi               #  5     0x40448b  2      OPC=2436  
  jle .L_4044ce                  #  6     0x40448d  6      OPC=919   
  nop                            #  7     0x404493  1      OPC=1343  
  nop                            #  8     0x404494  1      OPC=1343  
  movq %rdi, %rbx                #  9     0x404495  3      OPC=1162  
  movzbl (%rdi), %ebp            #  10    0x404498  3      OPC=1302  
  callq .__ctype_b_loc_plt       #  11    0x40449b  5      OPC=260   
  movq (%rax), %rcx              #  12    0x4044a0  3      OPC=1161  
  xorl %edi, %edi                #  13    0x4044a3  2      OPC=3758  
  xorl %eax, %eax                #  14    0x4044a5  2      OPC=3758  
.L_4044a1:                       #        0x4044a7  0      OPC=0     
  andl $0x7, %ebp                #  15    0x4044a7  3      OPC=132   
  movzbl 0x40851e(%rbp), %edx    #  16    0x4044aa  7      OPC=1302  
  leaq (%rdx,%rax,4), %rax       #  17    0x4044b1  4      OPC=1069  
.L_4044af:                       #        0x4044b5  0      OPC=0     
  addq $0x1, %rbx                #  18    0x4044b5  4      OPC=70    
  movzbl (%rbx), %ebp            #  19    0x4044b9  3      OPC=1302  
  movsbq %bpl, %rdx              #  20    0x4044bc  4      OPC=1287  
  testb $0x20, 0x1(%rcx,%rdx,2)  #  21    0x4044c0  5      OPC=2430  
  jne .L_4044af                  #  22    0x4044c5  6      OPC=963   
  nop                            #  23    0x4044cb  1      OPC=1343  
  nop                            #  24    0x4044cc  1      OPC=1343  
  addl $0x1, %edi                #  25    0x4044cd  3      OPC=65    
  cmpl %r12d, %edi               #  26    0x4044d0  3      OPC=472   
  jne .L_4044a1                  #  27    0x4044d3  6      OPC=963   
  nop                            #  28    0x4044d9  1      OPC=1343  
  nop                            #  29    0x4044da  1      OPC=1343  
  popq %rbx                      #  30    0x4044db  1      OPC=1694  
  popq %rbp                      #  31    0x4044dc  1      OPC=1694  
  popq %r12                      #  32    0x4044dd  2      OPC=1694  
  retq                           #  33    0x4044df  1      OPC=1978  
.L_4044ce:                       #        0x4044e0  0      OPC=0     
  xorl %eax, %eax                #  34    0x4044e0  2      OPC=3758  
  popq %rbx                      #  35    0x4044e2  1      OPC=1694  
  popq %rbp                      #  36    0x4044e3  1      OPC=1694  
  popq %r12                      #  37    0x4044e4  2      OPC=1694  
  retq                           #  38    0x4044e6  1      OPC=1978  
                                                                     
.size pack_key, .-pack_key

