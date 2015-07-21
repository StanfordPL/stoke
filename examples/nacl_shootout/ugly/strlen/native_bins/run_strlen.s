  .text
  .globl run_strlen
  .type run_strlen, @function

#! file-offset 0x6fc3
#! rip-offset  0x406fc3
#! capacity    77 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.run_strlen:                 #        0x406fc3  0      OPC=0     
  pushq %r12                 #  1     0x406fc3  2      OPC=1861  
  pushq %rbp                 #  2     0x406fc5  1      OPC=1861  
  pushq %rbx                 #  3     0x406fc6  1      OPC=1861  
  movslq %edi, %r12          #  4     0x406fc7  3      OPC=1289  
  movl $0x400, %edi          #  5     0x406fca  5      OPC=1154  
  callq .malloc_plt          #  6     0x406fcf  5      OPC=260   
  movq %rax, %rbx            #  7     0x406fd4  3      OPC=1162  
  xorl %edx, %edx            #  8     0x406fd7  2      OPC=3758  
.L_406fd9:                   #        0x406fd9  0      OPC=0     
  movb $0x61, (%rbx,%rdx,1)  #  9     0x406fd9  4      OPC=1140  
  addq $0x1, %rdx            #  10    0x406fdd  4      OPC=70    
  cmpq $0x400, %rdx          #  11    0x406fe1  7      OPC=474   
  jne .L_406fd9              #  12    0x406fe8  6      OPC=963   
  nop                        #  13    0x406fee  1      OPC=1343  
  nop                        #  14    0x406fef  1      OPC=1343  
  movb $0x0, 0x3ff(%rbx)     #  15    0x406ff0  7      OPC=1140  
  testq %r12, %r12           #  16    0x406ff7  3      OPC=2438  
  je .L_407009               #  17    0x406ffa  6      OPC=893   
  nop                        #  18    0x407000  1      OPC=1343  
  nop                        #  19    0x407001  1      OPC=1343  
  xorl %ebp, %ebp            #  20    0x407002  2      OPC=3758  
.L_406ff8:                   #        0x407004  0      OPC=0     
  movq %rbx, %rdi            #  21    0x407004  3      OPC=1162  
  callq .my_strlen           #  22    0x407007  5      OPC=260   
  addq $0x1, %rbp            #  23    0x40700c  4      OPC=70    
  cmpq %r12, %rbp            #  24    0x407010  3      OPC=477   
  jb .L_406ff8               #  25    0x407013  6      OPC=875   
  nop                        #  26    0x407019  1      OPC=1343  
  nop                        #  27    0x40701a  1      OPC=1343  
.L_407009:                   #        0x40701b  0      OPC=0     
  xorl %eax, %eax            #  28    0x40701b  2      OPC=3758  
  popq %rbx                  #  29    0x40701d  1      OPC=1694  
  popq %rbp                  #  30    0x40701e  1      OPC=1694  
  popq %r12                  #  31    0x40701f  2      OPC=1694  
  retq                       #  32    0x407021  1      OPC=1978  
                                                                 
.size run_strlen, .-run_strlen

