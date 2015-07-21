  .text
  .globl run_fasta
  .type run_fasta, @function

#! file-offset 0x1e60
#! rip-offset  0x401e60
#! capacity    144 bytes

# Text                              #  Line  RIP       Bytes  Opcode    
.run_fasta:                         #        0x401e60  0      OPC=0     
  pushq %rbp                        #  1     0x401e60  1      OPC=1861  
  pushq %rbx                        #  2     0x401e61  1      OPC=1861  
  subq $0x18, %rsp                  #  3     0x401e62  4      OPC=2389  
  movl %edi, %ebx                   #  4     0x401e66  2      OPC=1157  
  movl $0x1, %esi                   #  5     0x401e68  5      OPC=1154  
  movq 0x223bdc(%rip), %rdi         #  6     0x401e6d  7      OPC=1161  
  callq .arrayfile_set_keep_output  #  7     0x401e74  5      OPC=260   
  movl %ebx, %edi                   #  8     0x401e79  2      OPC=1157  
  callq .fasta_bench                #  9     0x401e7b  5      OPC=260   
  movl $0x0, 0xc(%rsp)              #  10    0x401e80  8      OPC=1135  
  leaq 0xc(%rsp), %rsi              #  11    0x401e88  5      OPC=1069  
  movq 0x223bbc(%rip), %rdi         #  12    0x401e8d  7      OPC=1161  
  callq .arrayfile_join             #  13    0x401e94  5      OPC=260   
  movq %rax, %rbp                   #  14    0x401e99  3      OPC=1162  
  movq 0x223bad(%rip), %rdi         #  15    0x401e9c  7      OPC=1161  
  callq .arrayfile_rewind           #  16    0x401ea3  5      OPC=260   
  cmpl $0x2710, %ebx                #  17    0x401ea8  6      OPC=469   
  je .L_401edd                      #  18    0x401eae  6      OPC=893   
  nop                               #  19    0x401eb4  1      OPC=1343  
  nop                               #  20    0x401eb5  1      OPC=1343  
  xorl %ebx, %ebx                   #  21    0x401eb6  2      OPC=3758  
.L_401eb2:                          #        0x401eb8  0      OPC=0     
  movq 0x223507(%rip), %rdi         #  22    0x401eb8  7      OPC=1161  
  testq %rdi, %rdi                  #  23    0x401ebf  3      OPC=2438  
  je .L_401ec3                      #  24    0x401ec2  6      OPC=893   
  nop                               #  25    0x401ec8  1      OPC=1343  
  nop                               #  26    0x401ec9  1      OPC=1343  
  callq .free_plt                   #  27    0x401eca  5      OPC=260   
.L_401ec3:                          #        0x401ecf  0      OPC=0     
  movq %rbp, 0x2234f6(%rip)         #  28    0x401ecf  7      OPC=1138  
  movl 0xc(%rsp), %eax              #  29    0x401ed6  4      OPC=1156  
  movl %eax, 0x223b1c(%rip)         #  30    0x401eda  6      OPC=1136  
  movl %ebx, %eax                   #  31    0x401ee0  2      OPC=1157  
  addq $0x18, %rsp                  #  32    0x401ee2  4      OPC=70    
  popq %rbx                         #  33    0x401ee6  1      OPC=1694  
  popq %rbp                         #  34    0x401ee7  1      OPC=1694  
  retq                              #  35    0x401ee8  1      OPC=1978  
.L_401edd:                          #        0x401ee9  0      OPC=0     
  movq 0x22349c(%rip), %rsi         #  36    0x401ee9  7      OPC=1161  
  movq %rbp, %rdi                   #  37    0x401ef0  3      OPC=1162  
  callq .strcmp_plt                 #  38    0x401ef3  5      OPC=260   
  movl %eax, %ebx                   #  39    0x401ef8  2      OPC=1157  
  jmpq .L_401eb2                    #  40    0x401efa  5      OPC=930   
  nop                               #  41    0x401eff  1      OPC=1343  
  nop                               #  42    0x401f00  1      OPC=1343  
                                                                        
.size run_fasta, .-run_fasta

