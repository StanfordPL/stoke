  .text
  .globl fasta_bench
  .type fasta_bench, @function

#! file-offset 0x1dfa
#! rip-offset  0x401dfa
#! capacity    102 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.fasta_bench:               #        0x401dfa  0      OPC=0     
  pushq %rbp                #  1     0x401dfa  1      OPC=1861  
  pushq %rbx                #  2     0x401dfb  1      OPC=1861  
  subq $0x18, %rsp          #  3     0x401dfc  4      OPC=2389  
  movl %edi, %ebx           #  4     0x401e00  2      OPC=1157  
  movl $0x2a, 0xc(%rsp)     #  5     0x401e02  8      OPC=1135  
  leal (%rdi,%rdi,1), %ebp  #  6     0x401e0a  3      OPC=1066  
  movl %ebp, %edx           #  7     0x401e0d  2      OPC=1157  
  movl $0x4081c4, %esi      #  8     0x401e0f  5      OPC=1154  
  movl $0x408220, %edi      #  9     0x401e14  5      OPC=1154  
  callq .repeat             #  10    0x401e19  5      OPC=260   
  leal (%rbp,%rbx,1), %ecx  #  11    0x401e1e  4      OPC=1066  
  leaq 0xc(%rsp), %r8       #  12    0x401e22  5      OPC=1069  
  movl $0x4081db, %edx      #  13    0x401e27  5      OPC=1154  
  movl $0xf, %esi           #  14    0x401e2c  5      OPC=1154  
  movl $0x625240, %edi      #  15    0x401e31  5      OPC=1154  
  callq .randomize          #  16    0x401e36  5      OPC=260   
  leal (%rbx,%rbx,4), %ecx  #  17    0x401e3b  3      OPC=1066  
  leaq 0xc(%rsp), %r8       #  18    0x401e3e  5      OPC=1069  
  movl $0x4081f8, %edx      #  19    0x401e43  5      OPC=1154  
  movl $0x4, %esi           #  20    0x401e48  5      OPC=1154  
  movl $0x625200, %edi      #  21    0x401e4d  5      OPC=1154  
  callq .randomize          #  22    0x401e52  5      OPC=260   
  xorl %eax, %eax           #  23    0x401e57  2      OPC=3758  
  addq $0x18, %rsp          #  24    0x401e59  4      OPC=70    
  popq %rbx                 #  25    0x401e5d  1      OPC=1694  
  popq %rbp                 #  26    0x401e5e  1      OPC=1694  
  retq                      #  27    0x401e5f  1      OPC=1978  
                                                                
.size fasta_bench, .-fasta_bench

