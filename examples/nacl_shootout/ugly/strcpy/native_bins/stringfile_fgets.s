  .text
  .globl stringfile_fgets
  .type stringfile_fgets, @function

#! file-offset 0x77b6
#! rip-offset  0x4077b6
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.stringfile_fgets:              #        0x4077b6  0      OPC=0     
  pushq %rbp                    #  1     0x4077b6  1      OPC=1861  
  pushq %rbx                    #  2     0x4077b7  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x4077b8  4      OPC=2389  
  movq %rdi, %rbx               #  4     0x4077bc  3      OPC=1162  
  movl %esi, %ebp               #  5     0x4077bf  2      OPC=1157  
  movq %rdx, %rdi               #  6     0x4077c1  3      OPC=1162  
  movq 0x20(%rdx), %rcx         #  7     0x4077c4  4      OPC=1161  
  movq 0x18(%rdx), %rax         #  8     0x4077c8  4      OPC=1161  
  movslq %esi, %rdx             #  9     0x4077cc  3      OPC=1289  
  leaq -0x1(%rax,%rdx,1), %rdx  #  10    0x4077cf  5      OPC=1069  
  movq (%rdi), %r9              #  11    0x4077d4  3      OPC=1161  
  cmpq %rdx, %rcx               #  12    0x4077d7  3      OPC=477   
  jge .L_40782a                 #  13    0x4077da  6      OPC=907   
  nop                           #  14    0x4077e0  1      OPC=1343  
  nop                           #  15    0x4077e1  1      OPC=1343  
  addq %r9, %rcx                #  16    0x4077e2  3      OPC=72    
.L_4077df:                      #        0x4077e5  0      OPC=0     
  addq %rax, %r9                #  17    0x4077e5  3      OPC=72    
  cmpq %r9, %rcx                #  18    0x4077e8  3      OPC=477   
  jbe .L_407839                 #  19    0x4077eb  6      OPC=881   
  nop                           #  20    0x4077f1  1      OPC=1343  
  nop                           #  21    0x4077f2  1      OPC=1343  
  movq %r9, %rax                #  22    0x4077f3  3      OPC=1162  
  cmpb $0xa, (%r9)              #  23    0x4077f6  4      OPC=461   
  jne .L_4077f7                 #  24    0x4077fa  6      OPC=963   
  nop                           #  25    0x407800  1      OPC=1343  
  nop                           #  26    0x407801  1      OPC=1343  
  jmpq .L_407830                #  27    0x407802  5      OPC=930   
  nop                           #  28    0x407807  1      OPC=1343  
  nop                           #  29    0x407808  1      OPC=1343  
.L_4077f2:                      #        0x407809  0      OPC=0     
  cmpb $0xa, (%rax)             #  30    0x407809  3      OPC=461   
  je .L_407830                  #  31    0x40780c  6      OPC=893   
  nop                           #  32    0x407812  1      OPC=1343  
  nop                           #  33    0x407813  1      OPC=1343  
.L_4077f7:                      #        0x407814  0      OPC=0     
  addq $0x1, %rax               #  34    0x407814  4      OPC=70    
  cmpq %rcx, %rax               #  35    0x407818  3      OPC=477   
  jne .L_4077f2                 #  36    0x40781b  6      OPC=963   
  nop                           #  37    0x407821  1      OPC=1343  
  nop                           #  38    0x407822  1      OPC=1343  
  subq %r9, %rax                #  39    0x407823  3      OPC=2391  
  movq %rax, %rdx               #  40    0x407826  3      OPC=1162  
.L_407806:                      #        0x407829  0      OPC=0     
  movq %rbx, %rsi               #  41    0x407829  3      OPC=1162  
  callq .stringfile_read        #  42    0x40782c  5      OPC=260   
  movq %rax, %rdx               #  43    0x407831  3      OPC=1162  
  cmpl %eax, %ebp               #  44    0x407834  2      OPC=472   
  jle .L_40783d                 #  45    0x407836  6      OPC=919   
  nop                           #  46    0x40783c  1      OPC=1343  
  nop                           #  47    0x40783d  1      OPC=1343  
  cltq                          #  48    0x40783e  2      OPC=263   
  movb $0x0, (%rbx,%rax,1)      #  49    0x407840  4      OPC=1140  
  xorl %eax, %eax               #  50    0x407844  2      OPC=3758  
  testl %edx, %edx              #  51    0x407846  2      OPC=2436  
  cmovneq %rbx, %rax            #  52    0x407848  4      OPC=364   
  addq $0x8, %rsp               #  53    0x40784c  4      OPC=70    
  popq %rbx                     #  54    0x407850  1      OPC=1694  
  popq %rbp                     #  55    0x407851  1      OPC=1694  
  retq                          #  56    0x407852  1      OPC=1978  
.L_40782a:                      #        0x407853  0      OPC=0     
  leaq (%r9,%rdx,1), %rcx       #  57    0x407853  4      OPC=1069  
  jmpq .L_4077df                #  58    0x407857  5      OPC=930   
  nop                           #  59    0x40785c  1      OPC=1343  
  nop                           #  60    0x40785d  1      OPC=1343  
.L_407830:                      #        0x40785e  0      OPC=0     
  leaq 0x1(%rax), %rdx          #  61    0x40785e  4      OPC=1069  
  subq %r9, %rdx                #  62    0x407862  3      OPC=2391  
  jmpq .L_407806                #  63    0x407865  5      OPC=930   
  nop                           #  64    0x40786a  1      OPC=1343  
  nop                           #  65    0x40786b  1      OPC=1343  
.L_407839:                      #        0x40786c  0      OPC=0     
  xorl %edx, %edx               #  66    0x40786c  2      OPC=3758  
  jmpq .L_407806                #  67    0x40786e  5      OPC=930   
  nop                           #  68    0x407873  1      OPC=1343  
  nop                           #  69    0x407874  1      OPC=1343  
.L_40783d:                      #        0x407875  0      OPC=0     
  movl $0x408e90, %ecx          #  70    0x407875  5      OPC=1154  
  movl $0x11b, %edx             #  71    0x40787a  5      OPC=1154  
  movl $0x408e08, %esi          #  72    0x40787f  5      OPC=1154  
  movl $0x408e18, %edi          #  73    0x407884  5      OPC=1154  
  callq .__assert_fail_plt      #  74    0x407889  5      OPC=260   
                                                                    
.size stringfile_fgets, .-stringfile_fgets

