  .text
  .globl stringfile_read
  .type stringfile_read, @function

#! file-offset 0x7540
#! rip-offset  0x407540
#! capacity    100 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.stringfile_read:           #        0x407540  0      OPC=0     
  pushq %rbp                #  1     0x407540  1      OPC=1861  
  pushq %rbx                #  2     0x407541  1      OPC=1861  
  subq $0x8, %rsp           #  3     0x407542  4      OPC=2389  
  movq %rdi, %rbx           #  4     0x407546  3      OPC=1162  
  movq %rsi, %rdi           #  5     0x407549  3      OPC=1162  
  movq %rdx, %rbp           #  6     0x40754c  3      OPC=1162  
  movq 0x18(%rbx), %rax     #  7     0x40754f  4      OPC=1161  
  movq 0x10(%rbx), %rdx     #  8     0x407553  4      OPC=1161  
  leaq (%rbp,%rax,1), %rcx  #  9     0x407557  5      OPC=1069  
  cmpq %rdx, %rcx           #  10    0x40755c  3      OPC=477   
  jbe .L_40756c             #  11    0x40755f  6      OPC=881   
  nop                       #  12    0x407565  1      OPC=1343  
  nop                       #  13    0x407566  1      OPC=1343  
  cmpq %rdx, %rax           #  14    0x407567  3      OPC=477   
  je .L_40759b              #  15    0x40756a  6      OPC=893   
  nop                       #  16    0x407570  1      OPC=1343  
  nop                       #  17    0x407571  1      OPC=1343  
  subq %rax, %rdx           #  18    0x407572  3      OPC=2391  
  movq %rdx, %rbp           #  19    0x407575  3      OPC=1162  
.L_40756c:                  #        0x407578  0      OPC=0     
  addq (%rbx), %rax         #  20    0x407578  3      OPC=71    
  movq %rax, %rsi           #  21    0x40757b  3      OPC=1162  
  movq %rbp, %rdx           #  22    0x40757e  3      OPC=1162  
  callq .memcpy_plt         #  23    0x407581  5      OPC=260   
  movq %rbp, %rax           #  24    0x407586  3      OPC=1162  
  addq 0x18(%rbx), %rax     #  25    0x407589  4      OPC=71    
  movq %rax, 0x18(%rbx)     #  26    0x40758d  4      OPC=1138  
  cmpq 0x20(%rbx), %rax     #  27    0x407591  4      OPC=476   
  ja .L_407595              #  28    0x407595  6      OPC=863   
  nop                       #  29    0x40759b  1      OPC=1343  
  nop                       #  30    0x40759c  1      OPC=1343  
.L_40758b:                  #        0x40759d  0      OPC=0     
  movq %rbp, %rax           #  31    0x40759d  3      OPC=1162  
  addq $0x8, %rsp           #  32    0x4075a0  4      OPC=70    
  popq %rbx                 #  33    0x4075a4  1      OPC=1694  
  popq %rbp                 #  34    0x4075a5  1      OPC=1694  
  retq                      #  35    0x4075a6  1      OPC=1978  
.L_407595:                  #        0x4075a7  0      OPC=0     
  movq %rax, 0x20(%rbx)     #  36    0x4075a7  4      OPC=1138  
  jmpq .L_40758b            #  37    0x4075ab  5      OPC=930   
  nop                       #  38    0x4075b0  1      OPC=1343  
  nop                       #  39    0x4075b1  1      OPC=1343  
.L_40759b:                  #        0x4075b2  0      OPC=0     
  xorl %eax, %eax           #  40    0x4075b2  2      OPC=3758  
  addq $0x8, %rsp           #  41    0x4075b4  4      OPC=70    
  popq %rbx                 #  42    0x4075b8  1      OPC=1694  
  popq %rbp                 #  43    0x4075b9  1      OPC=1694  
  retq                      #  44    0x4075ba  1      OPC=1978  
                                                                
.size stringfile_read, .-stringfile_read

