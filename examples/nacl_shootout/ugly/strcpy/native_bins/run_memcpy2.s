  .text
  .globl run_memcpy2
  .type run_memcpy2, @function

#! file-offset 0x6e87
#! rip-offset  0x406e87
#! capacity    141 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.run_memcpy2:                 #        0x406e87  0      OPC=0     
  pushq %r13                  #  1     0x406e87  2      OPC=1861  
  pushq %r12                  #  2     0x406e89  2      OPC=1861  
  pushq %rbp                  #  3     0x406e8b  1      OPC=1861  
  pushq %rbx                  #  4     0x406e8c  1      OPC=1861  
  subq $0x8, %rsp             #  5     0x406e8d  4      OPC=2389  
  movslq %edi, %r13           #  6     0x406e91  3      OPC=1289  
  movl $0x400, %edi           #  7     0x406e94  5      OPC=1154  
  callq .malloc_plt           #  8     0x406e99  5      OPC=260   
  movq %rax, %rbx             #  9     0x406e9e  3      OPC=1162  
  movl $0x400, %edi           #  10    0x406ea1  5      OPC=1154  
  callq .malloc_plt           #  11    0x406ea6  5      OPC=260   
  movq %rax, %rbp             #  12    0x406eab  3      OPC=1162  
  xorl %edx, %edx             #  13    0x406eae  2      OPC=3758  
.L_406eb0:                    #        0x406eb0  0      OPC=0     
  movb %dl, (%rbx,%rdx,1)     #  14    0x406eb0  3      OPC=1141  
  addq $0x1, %rdx             #  15    0x406eb3  4      OPC=70    
  cmpq $0x400, %rdx           #  16    0x406eb7  7      OPC=474   
  jne .L_406eb0               #  17    0x406ebe  6      OPC=963   
  nop                         #  18    0x406ec4  1      OPC=1343  
  nop                         #  19    0x406ec5  1      OPC=1343  
  testq %r13, %r13            #  20    0x406ec6  3      OPC=2438  
  je .L_406ee8                #  21    0x406ec9  6      OPC=893   
  nop                         #  22    0x406ecf  1      OPC=1343  
  nop                         #  23    0x406ed0  1      OPC=1343  
  addq $0x1, %r13             #  24    0x406ed1  4      OPC=70    
  movl $0x1, %r12d            #  25    0x406ed5  6      OPC=1154  
.L_406ecf:                    #        0x406edb  0      OPC=0     
  movl $0x400, %edx           #  26    0x406edb  5      OPC=1154  
  movq %rbx, %rsi             #  27    0x406ee0  3      OPC=1162  
  movq %rbp, %rdi             #  28    0x406ee3  3      OPC=1162  
  callq .my_memcpy            #  29    0x406ee6  5      OPC=260   
  addq $0x1, %r12             #  30    0x406eeb  4      OPC=70    
  cmpq %r13, %r12             #  31    0x406eef  3      OPC=477   
  jne .L_406ecf               #  32    0x406ef2  6      OPC=963   
  nop                         #  33    0x406ef8  1      OPC=1343  
  nop                         #  34    0x406ef9  1      OPC=1343  
.L_406ee8:                    #        0x406efa  0      OPC=0     
  xorl %edx, %edx             #  35    0x406efa  2      OPC=3758  
  xorl %eax, %eax             #  36    0x406efc  2      OPC=3758  
.L_406eec:                    #        0x406efe  0      OPC=0     
  movzbl (%rbp,%rdx,1), %ecx  #  37    0x406efe  5      OPC=1302  
  xorl %esi, %esi             #  38    0x406f03  2      OPC=3758  
  cmpb %cl, (%rbx,%rdx,1)     #  39    0x406f05  3      OPC=462   
  setne %sil                  #  40    0x406f08  4      OPC=2208  
  orl %esi, %eax              #  41    0x406f0c  2      OPC=1380  
  addq $0x1, %rdx             #  42    0x406f0e  4      OPC=70    
  cmpq $0x400, %rdx           #  43    0x406f12  7      OPC=474   
  jne .L_406eec               #  44    0x406f19  6      OPC=963   
  nop                         #  45    0x406f1f  1      OPC=1343  
  nop                         #  46    0x406f20  1      OPC=1343  
  addq $0x8, %rsp             #  47    0x406f21  4      OPC=70    
  popq %rbx                   #  48    0x406f25  1      OPC=1694  
  popq %rbp                   #  49    0x406f26  1      OPC=1694  
  popq %r12                   #  50    0x406f27  2      OPC=1694  
  popq %r13                   #  51    0x406f29  2      OPC=1694  
  retq                        #  52    0x406f2b  1      OPC=1978  
                                                                  
.size run_memcpy2, .-run_memcpy2

